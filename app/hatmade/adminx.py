import xadmin
from .models import HatDiy, HatColorImage, HatColourName, GoodsCategor, GoodsStyle, GoodsName


# Register your models here.
class HatInline(object):
    model = HatDiy
    extra = 0


class GoodsStyleAdmin(object):
    list_display = ['name']
    search_fields = ['name']
    list_filter = ['name']


class GoodsNameAdmin(object):
    list_display = ['name']
    search_fields = ['name']
    list_filter = ['name']


class GoodsCategorAdmin(object):
    list_display = ['name', 'image']
    search_fields = ['name', 'image']
    list_filter = ['name', 'image']


class HatColourNameAdmin(object):
    list_display = ['id','hat_colour_number', 'hat_colour_name']
    search_fields = ['id','hat_colour_number', 'hat_colour_name']
    list_filter = ['id','hat_colour_number', 'hat_colour_name']
    # readonly_fields = ['hat_colour_number','hat_colour_name']


class HatDiyAdmin(object):
    list_display = ['state','hat_number', 'hat_name', 'hat_brand','hat_price','goods_categor','status','add_time',
                    'hatdiy_button']
    search_fields = ['state', 'hat_name', 'hat_brand', 'add_time']
    list_filter = ['state', 'hat_name', 'hat_brand', 'add_time',]
    readonly_fields = ['hat_made_Id','state']
    style_fields = {"detail": "ueditor"}
    filter_horizontal = ('hatdiy_button','hatdiy_color')


class HatColorImageAdmin(object):
    list_display = ['state','hat_number', 'image', 'hat_left', 'hat_right', 'hat_bottom','hat_back','hat_null_button']
    search_fields = ['state', 'image', 'hat_left', 'hat_right', 'hat_bottom','hat_back','hat_null_button']
    list_filter = ['state','image', 'hat_left', 'hat_right', 'hat_bottom','hat_back','hat_null_button']
    readonly_fields = ['id','state']


xadmin.site.register(HatDiy, HatDiyAdmin)
xadmin.site.register(HatColorImage, HatColorImageAdmin)
xadmin.site.register(GoodsCategor, GoodsCategorAdmin)
xadmin.site.register(GoodsStyle, GoodsStyleAdmin)
xadmin.site.register(GoodsName, GoodsNameAdmin)
xadmin.site.register(HatColourName, HatColourNameAdmin)

