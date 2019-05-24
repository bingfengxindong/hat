from django.test import TestCase
import os
from django.core.wsgi import get_wsgi_application
import django
from hatchange.views import HatChangeView




os.environ.setdefault("DJANGO_SETTINGS_MODULE", "hats.settings")

django.setup()
# Create your tests here.
if __name__ == '__mian__':
    print(HatChangeView.post())

