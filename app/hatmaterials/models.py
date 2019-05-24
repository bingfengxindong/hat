# _*_coding:utf-8 _*_
from django.db import models
from datetime import datetime


# Create your models here.
class HatMaterials(models.Model):
    hat_materials_Id = models.BigAutoField(primary_key=True, verbose_name=u'材质 ID')
    materials = models.CharField(max_length=150,  verbose_name=u"帽子材质", null=True, blank=True)
    materials_number = models.CharField(max_length=4,  verbose_name=u"材质编号", null=True, blank=True)
    price = models.CharField(max_length=100, verbose_name=u'价格')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"材质价格配置"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.materials
