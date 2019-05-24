# _*_coding:utf-8 _*_
from django.db import models
from datetime import datetime
from hatbutton.models import HatButton
from hatmaterials.models import HatMaterials
from DjangoUeditor.models import UEditorField
from django import forms


# Create your models here.
class GoodsStyle(models.Model):
    name = models.CharField(max_length=100, verbose_name=u"名称")

    class Meta:
        verbose_name = u"款式类别"
        verbose_name_plural = verbose_name

    def __str__(self):
        return str(self.name)


class GoodsName(models.Model):
    name = models.CharField(max_length=100, verbose_name=u"名称")

    class Meta:
        verbose_name = u"商品分类"
        verbose_name_plural = verbose_name

    def __str__(self):
        return str(self.name)


class GoodsCategor(models.Model):
    name = models.CharField(max_length=100, verbose_name=u"标题")
    image = models.ImageField(upload_to="banner", verbose_name=u"主图", max_length=100)
    goods_name = models.ManyToManyField(GoodsName, verbose_name=u"所属商品分类", blank=True)

    class Meta:
        verbose_name = u"首页分类"
        verbose_name_plural = verbose_name

    def __str__(self):
        return str(self.name)


class HatColourName(models.Model):
    hat_colour_number = models.IntegerField(verbose_name=u'商品颜色编号', null=True, blank=True)
    hat_colour_name = models.CharField(max_length=10, verbose_name=u'商品颜色名称', null=True, blank=True)

    class Meta:
        verbose_name = u"商品颜色"
        verbose_name_plural = verbose_name

    def __str__(self):
        return str(self.hat_colour_name)


class HatColorImage(models.Model):
    hat_number = models.CharField(max_length=8, verbose_name=u'商品编号', null=True, blank=True)
    color = models.ImageField(upload_to="hat_color_images/color", verbose_name=u"商品颜色",null=True, max_length=1000)
    image = models.ImageField(upload_to="hat_color_images/front", verbose_name=u"商品原图", max_length=1000)
    hat_left = models.ImageField(upload_to="hat_color_images/left", verbose_name=u"商品左侧图", max_length=1000)
    hat_right = models.ImageField(upload_to="hat_color_images/right", verbose_name=u"商品右侧图", max_length=1000)
    hat_bottom = models.ImageField(upload_to="hat_color_images/bottom", verbose_name=u"商品底部图", null=True, blank=True)
    hat_back = models.ImageField(upload_to="hat_color_images/back", verbose_name=u"商品后背图", null=True, blank=True)
    hat_null_button = models.ImageField(upload_to="hat_color_images/null_button", verbose_name=u'商品无后扣图', null=True, blank=True)
    hat_colour = models.ForeignKey(HatColourName, on_delete=models.CASCADE, verbose_name=u"商品颜色", null=True, blank=True)
    state = models.CharField(max_length=5, verbose_name=u"操作说明", default="点击进入", null=True, blank=True)

    class Meta:
        verbose_name = u"商品多色图"
        verbose_name_plural = verbose_name

    def __str__(self):
        return str(self.hat_number)


class HatDiy(models.Model):
    hat_made_Id = models.BigAutoField(primary_key=True, verbose_name=u'商品 ID')
    hat_number = models.CharField(max_length=8, verbose_name=u'商品编号', null=True, blank=True)
    hat_name = models.CharField(max_length=100, verbose_name=u'商品名称', null=True)
    hat_colour = models.ForeignKey(HatColourName, on_delete=models.CASCADE, verbose_name=u"商品颜色", null=True, blank=True)
    hat_brand = models.CharField(max_length=100, verbose_name=u'商品品牌', null=True)
    image = models.ImageField(upload_to="images/main", verbose_name=u"商品竖版图", max_length=1000, null=True)
    hat_right = models.ImageField(upload_to="images/right", verbose_name=u"商品右侧侧图", max_length=1000, null=True)
    hat_left = models.ImageField(upload_to="images/left", verbose_name=u"商品左侧图", max_length=1000, null=True)
    hat_bottom = models.ImageField(upload_to="images/bottom", verbose_name=u"商品底部图", null=True, blank=True)
    hat_back = models.ImageField(upload_to="images/back", verbose_name=u'商品后背图', null=True, blank=True)
    hat_null_button = models.ImageField(upload_to="images/null_button", verbose_name=u'商品无后扣图', null=True, blank=True)
    hat_front = models.ImageField(upload_to="images/front", verbose_name=u"商品正面图", max_length=1000, null=True, blank=True)
    hatdiy_color = models.ManyToManyField(HatColorImage, verbose_name=u"商品变色", blank=True)
    hatdiy_button = models.ManyToManyField(HatButton, verbose_name=u"选择后扣", blank=True)
    hat_price = models.CharField(max_length=500, verbose_name=u'价格')
    hat_change_materials = models.ForeignKey(HatMaterials, on_delete=models.CASCADE, verbose_name=u"默认材质", null=True,
                                            blank=True)
    goods_categor = models.ForeignKey(GoodsCategor, on_delete=models.CASCADE, verbose_name=u"所属系列", null=True,
                                            blank=True)
    goods_style = models.ForeignKey(GoodsStyle, on_delete=models.CASCADE, verbose_name=u"所属款式", null=True,
                                            blank=True)
    hat_desc = models.CharField(max_length=1000, verbose_name=u'描述', null=True, blank=True)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间", null=True)
    detail = UEditorField(verbose_name=u"产品详情", width=900, height=500, imagePath="hatmade/ueditor/",
                          filePath="hatmade/ueditor/", default='',null=True,)
    status = models.BooleanField(default=True, verbose_name="是否上线")
    state = models.CharField(max_length=5, verbose_name=u"操作说明", default="点击进入", null=True, blank=True)

    class Meta:
        verbose_name = u"商品详情页"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.hat_name
