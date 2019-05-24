# _*_coding:utf-8 _*_
from django.db import models
from datetime import datetime
from hatbutton.models import HatButton
from hatmade.models import HatDiy
from hatmaterials.models import HatMaterials


# Create your models here.
from user.models import UserProfile


class UploadImageLogo(models.Model):
    image = models.ImageField(upload_to="upload_logo/%Y/%m/%d/", verbose_name=u"logo")
    state = models.CharField(max_length=5, verbose_name=u"操作说明", default="点击进入", null=True, blank=True)

    class Meta:
        verbose_name = u"客户上传logo"
        verbose_name_plural = verbose_name


class UploadFile(models.Model):
    file = models.ImageField(upload_to="upload_file/%Y/%m/%d/", verbose_name=u"文件")
    state = models.CharField(max_length=5, verbose_name=u"操作说明", default="点击进入", null=True, blank=True)

    class Meta:
        verbose_name = u"客户上传文件"
        verbose_name_plural = verbose_name


class HatChange(models.Model):
    hat_update_Id = models.BigAutoField(primary_key=True, verbose_name=u'定制产品ID')
    hat_change = models.ForeignKey(HatDiy, on_delete=models.CASCADE, verbose_name=u"DIY后的样品", null=True, blank=True)
    hat_change_materials = models.ForeignKey(HatMaterials, on_delete=models.CASCADE, verbose_name=u'更换材质', null=True, blank=True)
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name=u'所属用户', null=True, blank=True)
    hat_components_color = models.CharField(max_length=100, verbose_name=u'部件的颜色', null=True, blank=True)
    hat_components_price = models.CharField(max_length=100, verbose_name=u'部件的价格', null=True, blank=True)
    hat_change_color = models.CharField(max_length=200, verbose_name=u'帽子的颜色',null=True, blank=True)
    hat_change_style = models.CharField(max_length=500, verbose_name=u'款式', null=True, blank=True)
    hat_total_price = models.CharField(max_length=2000, verbose_name=u'总价')
    hat_nums = models.IntegerField(verbose_name=u'数量', null=True, blank=True)
    hat_change_image1 = models.CharField(max_length=2000, verbose_name=u'DIY后的成品图1',null=True)
    hat_change_image2 = models.CharField(max_length=2000, verbose_name=u'DIY后的成品图2',null=True)
    hat_change_image3 = models.CharField(max_length=2000, verbose_name=u'DIY后的成品图3',null=True)
    hat_change_image4 = models.CharField(max_length=2000, verbose_name=u'DIY后的成品图4',null=True)
    hat_change_image5 = models.CharField(max_length=2000, verbose_name=u'DIY后的成品图5',null=True)
    hat_order_id = models.CharField(max_length=120, verbose_name=u'订单ID', null=True, blank=True)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"下单时间", null=True, blank=True)
    state = models.CharField(max_length=5, verbose_name=u"操作说明", default="点击进入", null=True, blank=True)

    class Meta:
        verbose_name = u"DIY后的样品"
        verbose_name_plural = verbose_name

    def __str__(self):
        return str(self.hat_update_Id)







