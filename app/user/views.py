import re
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.views.generic.base import View
from django.urls import reverse
from django.http import HttpResponseRedirect, JsonResponse
from .models import UserProfile


# Create your views here.


class RegisterView(View):
    def get(self, request):
        return render(request, 'register.html')

    def post(self, request):
        dict1 = request.POST
        user_name = dict1.get('user_name')
        pwd = dict1.get('pwd')
        cpwd = dict1.get('cpwd')
        email = dict1.get('email')
        if not all([user_name, pwd, cpwd, email]):
            return render(request, 'register.html',{'msg': '信息不完整'})
        if len(user_name) <5 or len(user_name) >20:
            return render(request, 'register.html', {'msg': '用户名不符'})
        if not re.match(r'^[a-z0-9][\w\.\-]*@[a-z0-9\-]+(\.[a-z]{2,5}){1,2}$', email):
            return render(request, 'register.html',{'msg': '邮箱错误'})
        if pwd != cpwd:
            return render(request, 'register.html',{'msg': '密码不一致'})
        if len(pwd) <8 or len(pwd) >20:
            return render(request, 'register.html', {'msg': '密码不符'})
        if UserProfile.objects.filter(username=user_name).count() >= 1:
            return render(request, 'register.html',{'msg': '用户已存在'})
        user = UserProfile.objects.create_user(user_name, email, pwd)
        # user.is_active = False
        user.save()
        return render(request, 'login.html',)


def user_name(request):
    uname = request.GET.get('uname')
    result = UserProfile.objects.filter(username=uname).count()
    return JsonResponse({'result': result})


class LogoutView(View):
    """
    用户登出
    """
    def get(self, request):
        logout(request)
        return HttpResponseRedirect(reverse("index"))


class LoginView(View):

    def get(self, request):
        username = request.COOKIES.get('username', '')
        context = {
            'username': username
        }
        return render(request, "login.html",context)

    def post(self, request):
        dict1 = request.POST
        username = dict1.get('username')
        pwd = dict1.get('password')
        remember = dict1.get('remember')

        if not all([username, pwd]):
            return redirect(reverse('login'))
        user = authenticate(username=username, password=pwd)
        if user is None:
            return render(request, 'login.html', {'msg': '用户名或密码错误'})
        login(request, user)
        login_url = request.GET.get('next', '/index')
        response = redirect(login_url)
        if remember is None:
            response.delete_cookie('username')
        else:
            response.set_cookie('username', username, expires=60 * 60 * 24 * 7)
        return response
