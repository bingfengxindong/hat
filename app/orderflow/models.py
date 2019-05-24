from django.db import models
from datetime import datetime
from hatchange.models import HatChange
# Create your models here.


class OrderFlow(models.Model):
    hat_order = models.ForeignKey(HatChange, on_delete=models.CASCADE, verbose_name=u"订单ID", null=True, blank=True)
    hat_status_one = models.CharField(max_length=20, verbose_name=u'流转状态(1)', choices=(('1', '审核中'), ('2', ''),),null=True, blank=True)
    add_time_one = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间(1)")
    hat_status_two = models.CharField(max_length=20, verbose_name=u'流转状态(2)', choices=(('1', '打样中'),('2', ''),),null=True, blank=True)
    add_time_two = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间(2)")
    hat_status_three = models.CharField(max_length=20, verbose_name=u'流转状态(3)', choices=(('1', '确认中'),('2', ''),),null=True, blank=True)
    add_time_three = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间(3)")
    hat_status_four = models.CharField(max_length=20, verbose_name=u'流转状态(4)', choices=(('1', '付定金'),('2', ''),),null=True, blank=True)
    add_time_four = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间(4)")
    hat_status_five = models.CharField(max_length=20, verbose_name=u'流转状态(5)', choices=(('1', '大货生产'),('2', ''),),null=True, blank=True)
    add_time_five = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间(5)")
    hat_status_six = models.CharField(max_length=20, verbose_name=u'流转状态(6)', choices=(('1', '运输中'),('2', ''),),null=True, blank=True)
    add_time_six = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间(6)")
    hat_status_seven = models.CharField(max_length=20, verbose_name=u'流转状态(7)', choices=(('1', '完成订单'),('2', ''),), null=True,blank=True)
    add_time_seven = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间(7)")
    state = models.CharField(max_length=5, verbose_name=u"操作说明", default="点击进入", null=True, blank=True)

    class Meta:
        verbose_name = u"订单流转"
        verbose_name_plural = verbose_name

    def __str__(self):
        return str(self.id)
