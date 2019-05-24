from datetime import datetime
from django.db import models
from hatchange.models import HatChange
from user.models import UserProfile
# Create your models here.


class HatMessageReply(models.Model):
    hat_remark = models.TextField(max_length=2000, verbose_name=u'需求备注', null=True, blank=True)
    hat_message_reply = models.TextField(max_length=2000, verbose_name=u'留言回复', null=True, blank=True)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"留言时间")
    add_time2 = models.DateTimeField(default=datetime.now, verbose_name=u"回复时间", null=True, blank=True)
    hat_update_Id = models.IntegerField(default=0,verbose_name='关联外键',null=True, blank=True)
    state = models.CharField(max_length=5, verbose_name=u"操作说明", default="点击进入", null=True, blank=True)
    user = models.CharField(max_length=20, verbose_name=u"客户名称", null=True, blank=True)

    class Meta:
        verbose_name = u"留言交互"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.hat_remark