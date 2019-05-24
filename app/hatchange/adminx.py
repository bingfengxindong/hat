from django.contrib import admin
import xadmin
from .models import HatChange, UploadImageLogo, UploadFile


# Register your models here.
class HatChangeInline(object):
    model = HatChange
    extra = 0


class HatChangeAdmin(object):
    list_display = ['state','hat_update_Id', 'hat_order_id', 'hat_nums', 'hat_total_price', 'add_time']
    search_fields = ['hat_update_Id', 'hat_change_color', 'hat_total_price',]
    list_filter = ['hat_update_Id', 'hat_change_color', 'hat_total_price']
    readonly_fields = ['hat_update_Id','hat_order_id',]
    style_fields = {'hat_order_flow': 'checkbox-inline', }
    refresh_times = (3, 5, 60)


class UploadImageLogoAdmin(object):
    list_display = ['state','id', 'image']
    search_fields = ['id', 'image']
    list_filter = ['id', 'image']
    readonly_fields = ['image']


class UploadFileAdmin(object):
    list_display = ['state','id', 'file']
    search_fields = ['id', 'file']
    list_filter = ['id', 'file']
    readonly_fields = ['file']


xadmin.site.register(HatChange, HatChangeAdmin)
xadmin.site.register(UploadImageLogo, UploadImageLogoAdmin)
xadmin.site.register(UploadFile, UploadFileAdmin)
