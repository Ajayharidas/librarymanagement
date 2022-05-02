from django import forms
from LibraryApp.models import Author, Book,Category,UserMember
from django.contrib.auth.models import User


class AuthorForm(forms.ModelForm):
    class Meta:
        model = Author
        fields = '__all__'

class CategoryForm(forms.ModelForm):
    class Meta:
        model = Category
        fields = '__all__'

        labels = {
            'category_name': 'Category',
        }


class BookForm(forms.ModelForm):
    class Meta:
        model = Book
        fields = '__all__'

        labels = {
            'book_name': 'Name',
            'book_author': 'Author',
            'book_category': 'Category',
            'book_description': 'Description',
            'book_publish_date': 'Date of publication',
        }

        widgets = {
            'book_publish_date': forms.DateInput(attrs={'type':'date'}),
        }

class LoginForm(forms.Form):
    username = forms.CharField(widget=forms.TextInput(attrs={'placeholder':'  username'}),label='')
    password = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder':'  password'}),label='')



