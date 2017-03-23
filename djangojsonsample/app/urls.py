
from django.conf.urls import url
from .views import *

urlpatterns = [
    url("^data$", send_data, name="send_data"),
]
