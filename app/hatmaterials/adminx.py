from django.contrib import admin
import xadmin
from .models import HatMaterials


# Register your models here.
class HatInline(object):
    model = HatMaterials
    extra = 0


class HatMaterialsAdmin(object):
    list_display = ['hat_materials_Id','materials','materials_number', 'price', 'add_time']
    search_fields = ['hat_materials_Id', 'price', 'add_time']
    list_filter = ['hat_materials_Id', 'price', 'add_time']
    readonly_fields = ['hat_materials_Id']


xadmin.site.register(HatMaterials, HatMaterialsAdmin)
