# _*_coding:utf-8 _*_
from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render, redirect,reverse
from django.views.generic.base import View
from hatchange.models import HatChange, UploadImageLogo, UploadFile
from hatmaterials.models import HatMaterials
from django.http import HttpResponse
import os,base64
import json
import time
import random
from hatmade.models import HatDiy
from pure_pagination import Paginator, PageNotAnInteger
from django.http import HttpResponseRedirect


# Create your views here.
from user.models import UserProfile


class HatChangeAllView(View):
    def get(self, request):
        if not request.user.is_authenticated:
            return redirect(reverse('login'))
        hc = HatChange()
        diy = HatDiy()

        user_id = request.user
        user_obj = UserProfile.objects.filter(username=user_id)[0]
        all_change_hat = user_obj.hatchange_set.all()
        ord_onums = all_change_hat.count()

        # 对订单进行分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_change_hat, 10, request=request)

        ords = p.page(page)
        return render(request, 'order-list.html', {
            'all_change_hat': ords,
            'ord_onums': ord_onums,
        })


class HatUpdateView(View):
    def post(self, request,):
        change = HatChange()
        hat_change_image1 = request.POST.get('hat_change_image1')
        hat_change_image2 = request.POST.get('hat_change_image2')
        hat_change_image3 = request.POST.get('hat_change_image3')
        hat_change_image4 = request.POST.get('hat_change_image4')
        hat_change_image5 = request.POST.get('hat_change_image5')
        change.hat_change_image5 = hat_change_image5

        if ',' in hat_change_image1:
            content = hat_change_image1.split(',')[1]
            fn = time.strftime('%Y%m%d%H%M%S')
            fn = fn + '_%d' % random.randint(0, 1000)
            img = base64.b64decode(content)
            file = open("media/create_image/" + fn + ".jpg", 'wb')
            change.hat_change_image1 = "/media/create_image/" + fn + ".jpg"
            file.write(img)
            file.close()
        else:
            change.hat_change_image1 = hat_change_image1

        if ',' in hat_change_image2:
            content = hat_change_image2.split(',')[1]
            fn = time.strftime('%Y%m%d%H%M%S')
            fn = fn + '_%d' % random.randint(0, 1000)
            img = base64.b64decode(content)
            file = open("media/create_image/" + fn + ".jpg", 'wb')
            change.hat_change_image2 = "/media/create_image/" + fn + ".jpg"
            file.write(img)
            file.close()
        else:
            change.hat_change_image2 = ''

        if ',' in hat_change_image3:
            content = hat_change_image3.split(',')[1]
            fn = time.strftime('%Y%m%d%H%M%S')
            fn = fn + '_%d' % random.randint(0, 1000)
            img = base64.b64decode(content)
            file = open("media/create_image/" + fn + ".jpg", 'wb')
            change.hat_change_image3 = "/media/create_image/" + fn + ".jpg"
            file.write(img)
            file.close()
        else:
            change.hat_change_image3 = ''

        if ',' in hat_change_image4:
            content = hat_change_image4.split(',')[1]
            fn = time.strftime('%Y%m%d%H%M%S')
            fn = fn + '_%d' % random.randint(0, 1000)
            img = base64.b64decode(content)
            file = open("media/create_image/" + fn + ".jpg", 'wb')
            change.hat_change_image4 = "/media/create_image/" + fn + ".jpg"
            file.write(img)
            file.close()
        else:
            change.hat_change_image4 = ''

        mat_tmp = request.POST.get('hat_change_materials')
        mat_id_tmp = request.POST.get('hat_change_materials_id')
        change.hat_nums = request.POST.get('hat_nums')
        one_line = None
        if not (mat_tmp == None or mat_tmp == "" or mat_tmp == "请选择"):
            one_line = HatMaterials.objects.get(materials=mat_tmp)
        hat_materials_id_new = None
        if (one_line != None):
            change.hat_change_materials = one_line
        else:
            materials_id=request.POST.get('hat_default_materials_id')
            m_id = HatMaterials.objects.get(hat_materials_Id=materials_id)
            change.hat_change_materials = m_id
        change.hat_change_color = request.POST.get('hat_change_color')
        change.hat_total_price = request.POST.get('hat_total_price')
        change.hat_change_id = request.POST.get('hat_change_id')
        change.hat_components_price = request.POST.get('hat_components_price')
        change.hat_order_id = request.POST.get('hat_number') + str('%d' % random.randint(0, 10000) + time.strftime('%Y%m%d'))
        change.user = request.user
        change.save()
        if change:
            return HttpResponseRedirect(reverse('alldiy'))
        else:
            return HttpResponse('{"status":"fail", "msg":"失败"}', content_type='application/json')


class UpdatelogoView(View):
    def post(self, request):
        ret = {'img_status': False, 'img_name': None, 'error': None}
        try:
            new_img = UploadImageLogo(image=request.FILES.get('mylogo'))
            new_img.save()
            img = request.FILES.get('mylogo')
            ext = os.path.splitext(img.name)[1]
            fn = time.strftime('%Y%m%d%H%M%S')
            fn = fn + '_%d' % random.randint(0, 100)
            f = open(os.path.join('static/upload_logo', fn+ext), 'wb')
            for chunk in img.chunks(chunk_size=1024):
                f.write(chunk)
            ret['img_status'] = True
            ret['img_name'] = os.path.join('static/upload_logo', fn+ext)
        except Exception as e:
            ret['error'] = e
        finally:
            if ret['img_name'] == "None":
                return HttpResponse('{"status":"fail", "msg":"失败"}', content_type='application/json')
            else:
                return HttpResponse(json.dumps(ret), content_type='application/json')


class UpdatefileView(View):
    def post(self, request):
        ret = {'status': False, 'file_name': None, 'error': None}
        try:
            new_file = UploadFile(file=request.FILES.get('file'))
            new_file.save()
            file = request.FILES.get('file')
            ext = os.path.splitext(file.name)[1]
            fn = time.strftime('%Y%m%d%H%M%S')
            fn = fn + '_%d' % random.randint(0, 100)
            f = open(os.path.join('static/upload_file', fn+ext), 'wb')
            for chunk in file.chunks(chunk_size=1024):
                f.write(chunk)
            f.close()
            ret['status'] = True
            ret['file_name'] = os.path.join('static/upload_file', fn+ext)
        except Exception as e:
            ret['error'] = e
        finally:
            if ret['file_name'] == "None":
                return HttpResponse('{"status":"fail", "msg":"失败"}', content_type='application/json')
            else:
                return HttpResponse('{"status":"success", "msg":"上传成功"}', content_type='application/json')
