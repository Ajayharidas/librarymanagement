from django.db import models
from django.contrib.auth.models import User
from ckeditor.fields import RichTextField
import datetime
from django.utils import timezone


class Author(models.Model):
    author_name = models.CharField(max_length=255)
    author_article = RichTextField()
    author_image = models.ImageField(upload_to='author/image')

    def __str__(self):
        return self.author_name


class Category(models.Model):
    category_name = models.CharField(max_length=255)

    def __str__(self):
        return self.category_name

class Book(models.Model):
    book_name = models.CharField(max_length=255)
    book_author = models.ForeignKey(Author,on_delete=models.CASCADE,null=True,blank=True)
    book_category = models.ForeignKey(Category,on_delete=models.CASCADE,blank=True,null=True)
    book_description = RichTextField()
    book_publish_date = models.DateField()
    book_image = models.ImageField(upload_to='book/image')

    def __str__(self):
        return self.book_name

class UserMember(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    user_address = models.CharField(max_length=255)
    user_gender = models.CharField(max_length=150)
    user_mobile = models.CharField(max_length=255)
    user_photo = models.ImageField(upload_to='user/photo')

    def __str__(self):
        return self.user.username

class Issue(models.Model):
    user = models.ForeignKey(UserMember,on_delete=models.CASCADE)
    book = models.ForeignKey(Book,on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now=True)
    issued = models.BooleanField(default=False)
    issued_at = models.DateTimeField(auto_now=False,null=True,blank=True)
    returned = models.BooleanField(default=False)
    return_date = models.DateTimeField(auto_now=False,auto_created=False,auto_now_add=False,null=True,blank=True)

    def __str__(self):
        return "{}_{} book issue request".format(self.user,self.book)

    def days_no(self):
        if self.issued:
            y,m,d = str(timezone.now().date()).split('-')
            today = datetime.date(int(y),int(m),int(d))
            y2,m2,d2 = str(self.return_date.date()).split('-')
            lastdate = datetime.date(int(y2),int(m2),int(d2))
            print(lastdate-today,lastdate>today)
            if lastdate > today:
                return "{} left".format(str(lastdate-today).split('.')[0])
            else:
                return "{} passed".format(str(today-lastdate).split('.')[0])
        else:
            return ""

class Fine(models.Model):
    user = models.ForeignKey(UserMember,on_delete=models.CASCADE)
    issue = models.ForeignKey(Issue,on_delete=models.CASCADE)
    amount = models.DecimalField(default=0.00,max_digits=10,decimal_places=2)

    def __str__(self):
        return "{} fine ->{}".format(self.issue,self.amount)

