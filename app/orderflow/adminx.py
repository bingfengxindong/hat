import xadmin
from .models import OrderFlow


# Register your models here.

class OrderFlowAdmin(object):
    list_display = ['state','hat_order','get_hat_order_id','hat_status_one','hat_status_two','hat_status_three',
                    'hat_status_four','hat_status_five','hat_status_six','hat_status_seven']
    search_fields = ['state','hat_order','hat_status_one','hat_status_two','hat_status_three',
                    'hat_status_four','hat_status_five','hat_status_six','hat_status_seven']
    list_filter = ['hat_status_one','hat_status_two','hat_status_three',
                    'hat_status_four','hat_status_five','hat_status_six','hat_status_seven']

    def get_hat_order_id(self,obj):
        return '%s' % obj.hat_order.hat_order_id
    get_hat_order_id.short_description = u"订单编号"


xadmin.site.register(OrderFlow, OrderFlowAdmin)
