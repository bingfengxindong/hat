from django.views.generic.base import View
from django.shortcuts import render, redirect,reverse
# Create your views here.
from hatchange.models import HatChange
from orderflow.models import OrderFlow


class OrderFlowView(View):
    def get(self, request,update_id):
        if not request.user.is_authenticated:
            return redirect(reverse('login'))
        change = HatChange.objects.get(hat_update_Id=int(update_id))

        all_change_list = []
        all_flows = OrderFlow.objects.filter(hat_order=change.hat_update_Id)
        all_change_list.append({'change': change, 'all_flows': all_flows})

        return render(request, 'order-flow.html', {
            'all_change_list': all_change_list,
            'change' : change
        })
