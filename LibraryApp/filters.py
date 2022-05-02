import django_filters
from LibraryApp.models import *

class BookFilter(django_filters.FilterSet):
    class Meta:
        model = Book
        fields = '__all__'
        exclude = ['book_description','book_publish_date','book_image']