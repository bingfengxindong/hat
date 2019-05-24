from django.shortcuts import render
from django.views.generic.base import View
from hatmade.models import HatDiy, GoodsCategor, GoodsStyle
from hatmaterials.models import HatMaterials
# Create your views here.


class IndexView(View):
    """首页"""
    def get(self, request):
        banners = GoodsCategor.objects.all()

        return render(request, 'hat-banner.html', {
            "banners": banners,
        })


class HatView(View):
    def get(self, request,good_id):
        sort_str = 'add_time'
        sort = request.GET.get('sort', '1')
        goods_obj = GoodsCategor.objects.filter(id=int(good_id))[0]
        if sort == '2':
            sort_str = 'hat_price'
            all_goods = goods_obj.hatdiy_set.all().order_by(sort_str)
        elif sort == '4':
            sort_str = '-hat_price'
            all_goods = goods_obj.hatdiy_set.all().order_by(sort_str)
        elif sort == '3':
            sort_str = 'add_time'  # 新品
            all_goods = goods_obj.hatdiy_set.all().order_by(sort_str)[0:2]
        elif sort == '5':
            all_goods = goods_obj.hatdiy_set.filter(hat_change_materials=2)
        elif sort == '6':
            all_goods = goods_obj.hatdiy_set.filter(hat_change_materials=3)
        elif sort == '7':
            all_goods = goods_obj.hatdiy_set.filter(hat_change_materials=4)
        elif sort == '8':
            all_goods = goods_obj.hatdiy_set.filter(hat_change_materials=5)
        elif sort == '9':
            all_goods = goods_obj.hatdiy_set.filter(hat_change_materials=1)
        elif sort == '10':
            all_goods = goods_obj.hatdiy_set.filter(goods_style=1)
        elif sort == '11':
            all_goods = goods_obj.hatdiy_set.filter(goods_style=2)
        elif sort == '12':
            all_goods = []
            goods = goods_obj.hatdiy_set.all()
            for good in goods:
                if good.hat_price>=str(10) and good.hat_price<=str(30):
                    all_goods.append(good)
        elif sort == '13':
            all_goods = []
            goods = goods_obj.hatdiy_set.all()
            for good in goods:
                if good.hat_price >= str(31) and good.hat_price <= str(50):
                    all_goods.append(good)
        elif sort == '14':
            all_goods = []
            goods = goods_obj.hatdiy_set.all()
            for good in goods:
                if good.hat_price >= str(51) and good.hat_price <= str(80):
                    all_goods.append(good)
        else:
            sort = '1'
            all_goods = goods_obj.hatdiy_set.all().order_by(sort_str)

        goodsstyle = GoodsStyle.objects.all()
        return render(request, 'hat-list.html', {
            "hats": all_goods,
            "goods_obj": goods_obj,
            "goodsstyles": goodsstyle,
        })


class HatDetailView(View):
    def get(self, request, hat_id):
        hatdiy = HatDiy.objects.get(hat_made_Id=int(hat_id))
        materials = HatMaterials.objects.all()
        return render(request, "hat-detail.html", {
            "hatdiy": hatdiy,
            "hatdiy_button": hatdiy.hatdiy_button.all(),
            "hatdiy_color": hatdiy.hatdiy_color.all().order_by("hat_number"),
            'materials': materials,
        })
