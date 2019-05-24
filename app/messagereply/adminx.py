import xadmin
# Register your models here.
from messagereply.models import HatMessageReply


class HatMessageReplyAdmin(object):
    list_display = ['state','id','user','hat_remark', 'hat_message_reply', 'add_time','add_time2']
    search_fields = ['state','id','hat_remark', 'hat_message_reply', 'add_time','add_time2']
    list_filter = ['state','id','hat_remark', 'hat_message_reply']
    readonly_fields = ['hat_remark']

    # def get_nick_name(self,obj):
    #     return '%s' % obj.users.nick_name
    # get_nick_name.short_description = u"客户名称"


xadmin.site.register(HatMessageReply, HatMessageReplyAdmin)


