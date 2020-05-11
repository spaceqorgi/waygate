from django.urls import path

from . import views

app_name = 'map'

urlpatterns = [
    path('', views.BookView.as_view(), name='book'),
    path('<int:pk>/', views.BookDetailView.as_view(), name='book_detail'),
    path('<int:book_number>/<int:pk>/',
         views.ChapterView.as_view(), name='chapter'),
]
