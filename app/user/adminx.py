from django.contrib import admin
import xadmin
from xadmin import views
from .models import UserProfile


# Register your models here.
class UserProfileInline(object):
    model = UserProfile
    extra = 0


class GlobalSettings(object):
    site_title = "今世多后台管理系统"
    site_footer = "今世多电商平台"
    # menu_style = "accordion"


class UserProfileAdmin(object):
    list_display = ['username', 'nick_name', 'gender', 'mobile', 'add_time', 'company_name']
    search_fields = ['nick_name', 'birthday', 'address']
    list_filter = ['nick_name', 'birthday', 'address']


xadmin.site.unregister(UserProfile)
xadmin.site.register(UserProfile, UserProfileAdmin)
xadmin.site.register(views.CommAdminView, GlobalSettings)

