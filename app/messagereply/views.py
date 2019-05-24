from django.shortcuts import render, redirect, reverse
from django.views.generic.base import View
from hatchange.models import HatChange
from messagereply.models import HatMessageReply
from django.http import HttpResponse


class MessageReplyView(View):
    def get(self, request,update_id):
        if not request.user.is_authenticated:
            return redirect(reverse('login'))
        change = HatChange.objects.get(hat_update_Id=int(update_id))

        all_change_list = []
        hat_message = HatMessageReply.objects.filter(hat_update_Id=change.hat_update_Id)
        all_change_list.append({'change':change, 'hat_message': hat_message,})

        return render(request, 'message-reply.html', {
            'all_change_list': all_change_list,
            'change': change
        })

    def post(self, request,update_id):
        message = HatMessageReply()
        message.hat_remark = request.POST.get('hat_remark')
        message.hat_update_Id = request.POST.get('hat_update_Id')
        message.user = request.POST.get('usern')
        message.save()

        if message:
            return HttpResponse('{"status":"success", "msg":"发送成功"}', content_type='application/json')
        else:
            return HttpResponse('{"status":"fail", "msg":"失败"}', content_type='application/json')
