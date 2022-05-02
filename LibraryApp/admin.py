from django.contrib import admin
from LibraryApp.models import Book,Author,UserMember,Issue,Fine

admin.site.register(Book)
admin.site.register(Author)
admin.site.register(UserMember)
admin.site.register(Issue)
admin.site.register(Fine)

