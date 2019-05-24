import xadmin
from .models import HatButton


class HatButtonAdmin(object):
    list_display = ['hat_back_Id', 'hat_back_button', 'hat_number', 'hat_back_image','add_time']
    search_fields = ['hat_back_Id', 'hat_back_button', 'add_time']
    list_filter = ['hat_back_Id', 'hat_back_button', 'add_time']
    readonly_fields = ['hat_back_Id']


xadmin.site.register(HatButton, HatButtonAdmin)
