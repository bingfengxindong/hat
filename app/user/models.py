# _*_coding:utf-8 _*_
from django.db import models
from datetime import datetime
from django.contrib.auth.models import AbstractUser


class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name=u"昵称", default="")
    birthday = models.DateField(verbose_name=u"生日", null=True, blank=True)
    gender = models.CharField(verbose_name=u"性别",max_length=6, choices=(("male", u"男"), ("female", "女")), default="female")
    address = models.CharField(verbose_name=u"地址",max_length=100,null=True, default=u"")
    company_name = models.CharField(verbose_name=u"公司名称",max_length=100,null=True, default=u"")
    mobile = models.CharField(verbose_name=u"电话号码",max_length=11, null=True, blank=True)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"注册时间")

    class Meta:
        verbose_name = u"用户信息"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.username







