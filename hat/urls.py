"""hat URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin

from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from django.conf.urls import include,url
import xadmin
from hatmade.views import HatView, HatDetailView, IndexView

from hatchange.views import HatUpdateView, HatChangeAllView, UpdatelogoView, UpdatefileView
from messagereply.views import MessageReplyView
from orderflow.views import OrderFlowView
from user import views
from user.views import LoginView, LogoutView, RegisterView


urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    path('hat/<good_id>', HatView.as_view(), name="hat"),
    path('login/', LoginView.as_view(), name="login"),
    path('logout/', LogoutView.as_view(), name="logout"),
    path('register/', RegisterView.as_view(), name="register"),
    path('hat_detail/<hat_id>', HatDetailView.as_view(), name="hat_detail"),
    path('alldiy/', HatChangeAllView.as_view(), name="alldiy"),
    path('update/', HatUpdateView.as_view(), name="update"),
    path('logo/', UpdatelogoView.as_view(), name="logo"),
    path('file/', UpdatefileView.as_view(), name="file"),
    path('index/', IndexView.as_view(), name="index"),
    path('flows/<update_id>', OrderFlowView.as_view(), name="flows"),
    path('messages/<update_id>', MessageReplyView.as_view(), name="messages"),
    # path('add_message/', AddUserMessageView.as_view(), name="add_message"),
      # 课程机构url配置
    url('^user_name$', views.user_name),

    # 富文本相关url
    url(r'^ueditor/', include('DjangoUeditor.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
