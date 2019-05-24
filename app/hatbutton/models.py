# _*_coding:utf-8 _*_
from django.db import models
from datetime import datetime

# Create your models here.


class HatButton(models.Model):
    hat_back_Id = models.BigAutoField(primary_key=True,  verbose_name=u'后扣 ID')
    hat_back_button = models.CharField(max_length=50, verbose_name=u'后扣材质')
    hat_number = models.CharField(max_length=4, verbose_name=u'后扣编号',null=True, blank=True)
    hat_back_image = models.ImageField(upload_to="images/button", verbose_name=u"后扣图片", max_length=1000)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"帽子后扣配置"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.hat_back_button

