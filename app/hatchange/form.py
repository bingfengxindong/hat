from django import forms
from .models import HatChange


class HatChangeFrom(forms.ModelForm):
    class Meta:
        model = HatChange
        fields = ['hat_change_materials', 'hat_total_price', 'hat_change_color', 'hat_nums']

    def clean_hat_change_materials(self):
        hat_change_materials = self.cleaned_data['hat_change_materials']
        if hat_change_materials:
            return hat_change_materials

    def clean_hat_price(self):
        hat_price = self.cleaned_data['hat_price']
        if hat_price:
            return hat_price
