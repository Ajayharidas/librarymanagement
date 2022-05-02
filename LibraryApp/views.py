from django.shortcuts import redirect, render
from LibraryApp.models import Author,Book, Category, UserMember,Issue,Fine
from LibraryApp.forms import AuthorForm,CategoryForm,BookForm,LoginForm
from django.contrib import messages
from django.contrib.auth.models import User,auth
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from LibraryApp.filters import BookFilter
from django.utils import timezone
import datetime
from LibraryApp.utilities import calcFine

# -------------- add author---------------
@login_required(login_url='log_in')
def add_author(request):
    form = AuthorForm()
    if request.method == 'POST':
        form = AuthorForm(request.POST or None , request.FILES or None)
        if form.is_valid():
            form.save()
            return redirect('show_author')
    context = {'form':form}
    return render(request,'author/add_author.html',context)


# ------------- add category -----------
@login_required(login_url='log_in')
def add_category(request):
    form = CategoryForm()
    if request.method == 'POST':
        form = CategoryForm(request.POST or None)
        if form.is_valid():
            form.save()
            return redirect('show_category')
    context = {'form':form}
    return render(request,'category/add_category.html',context)

# ----------- add book ---------------
@login_required(login_url='log_in')
def add_book(request):
    form = BookForm()
    if request.method == 'POST':
        form = BookForm(request.POST or None,request.FILES or None)
        if form.is_valid():
            form.save()
            return redirect('show_book')
    context = {'form':form}
    return render(request,'book/add_book.html',context)

# ------------ show author -------------
@login_required(login_url='log_in')
def show_author(request):
    authors = Author.objects.all()
    context = {'authors':authors}
    return render(request,'author/show_author.html',context)

# ------------ show category -------------
@login_required(login_url='log_in')
def show_category(request):
    category = Category.objects.all()
    context = {'category':category}
    return render(request,'category/show_category.html',context)


# ------------ show book -------------
@login_required(login_url='log_in')
def show_book(request):
    books = Book.objects.all()
    context = {'books':books}
    return render(request,'book/show_book.html',context)

# ------------- edit category -----------------
@login_required(login_url='log_in')
def edit_category(request,pk):
    category = Category.objects.get(id=pk)
    form = CategoryForm(instance=category)
    if request.method == 'POST':
        form = CategoryForm(request.POST or None,instance=category)
        if form.is_valid():
            form.save()
            return redirect('show_category')
    context = {'form':form}
    return render(request,'category/edit_category.html',context)
    

# ------------ delete categroy ---------------
@login_required(login_url='log_in')
def delete_category(request,pk):
    category = Category.objects.get(id=pk)
    category.delete()
    return redirect('show_category')
    

# ------------- edit author -----------------
@login_required(login_url='log_in')
def edit_author(request,pk):
    author = Author.objects.get(id=pk)
    form = AuthorForm(instance=author)
    if request.method == 'POST':
        form = AuthorForm(request.POST or None,request.FILES or None,instance=author)
        if form.is_valid():
            form.save()
            return redirect('show_author')
    context = {'form':form}
    return render(request,'author/edit_author.html',context)

# ------------ delete author ---------------
@login_required(login_url='log_in')
def delete_author(request,pk):
    author = Author.objects.get(id=pk)
    author.delete()
    return redirect('show_author')

# ------------- edit book -----------------
@login_required(login_url='log_in')
def edit_book(request,pk):
    book = Book.objects.get(id=pk)
    form = BookForm(instance=book)
    if request.method == 'POST':
        form = BookForm(request.POST or None,request.FILES or None,instance=book)
        if form.is_valid():
            form.save()
            return redirect('show_book')
    context = {'form':form}
    return render(request,'book/edit_book.html',context)

# ------------ delete book ---------------
@login_required(login_url='log_in')
def delete_book(request,pk):
    book = Book.objects.get(id=pk)
    book.delete()
    return redirect('show_book')

    

# -------------- sign up----------------
def sign_up(request):
    if request.method == 'POST':
        fname = request.POST.get('fname')
        lname = request.POST.get('lname')
        address = request.POST.get('address')
        email = request.POST.get('email')
        uname = request.POST.get('uname')
        passw = request.POST.get('passw')
        cpassw = request.POST.get('cpassw')
        gender = request.POST.get('gender')
        mobile = request.POST.get('mobile')
        photo = request.FILES.get('photo')
        if cpassw == passw:
            if User.objects.filter(username=uname).exists():
                messages.info(request, 'Username not available...')
                return redirect('sign_up')
            elif User.objects.filter(email=email).exists():
                messages.info(request, 'Email not available...')
                return redirect('sign_up')
            else:
                user = User.objects.create_user(first_name=fname,last_name=lname,email=email,username=uname,password=passw)
                user.save()
                u = User.objects.get(id=user.id)
                member = UserMember(user_address=address,user_gender=gender,user_mobile=mobile,user=u,user_photo=photo)
                member.save()
                return redirect('log_in')
    return render(request,'signup.html')

# ------------ login -------------
def log_in(request):
    form = LoginForm()
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            uname = form.cleaned_data['username']
            passw = form.cleaned_data['password']
            user = auth.authenticate(username=uname,password=passw)
            if user is not None:
                login(request,user)
                auth.login(request,user)
                return redirect('home')
            else:
                messages.info(request,'Invalid username or password...')
                return redirect('log_in')
    context = {'form':form}
    return render(request,'login.html',context)

# -------------- log out ---------------
@login_required(login_url='log_in')
def log_out(request):
    logout(request)
    auth.logout(request)
    return redirect('log_in')


# ------------- home ------------
def home(request):
    books = Book.objects.all()
    book_filter = BookFilter(request.GET, queryset=books)
    books = book_filter.qs
    context = {'book_filter':book_filter,'books':books}
    return render(request,'home.html',context)


# ------------ book details ----------

def book_details(request,pk):
    book = Book.objects.filter(id=pk)
    context = {
        'book':book
    }
    return render(request,'book/book_details.html',context)

# ------------  profile --------------
@login_required(login_url='log_in')
def profile(request):
    user = UserMember.objects.filter(user=request.user)
    context = {'user':user}
    return render(request,'user/profile.html',context)


# ------------ edit profile --------------
@login_required(login_url='log_in')
def edit_profile(request):
    if request.method == 'POST':
        umember = UserMember.objects.get(user=request.user)
        umember.user.first_name = request.POST.get('fname')
        umember.user.last_name = request.POST.get('lname')
        umember.user.username = request.POST.get('uname')
        umember.user.email = request.POST.get('email')
        umember.user_address = request.POST.get('address')
        umember.user_mobile = request.POST.get('mobile')
        umember.user_photo = request.FILES.get('photo')
        umember.user.save()
        umember.save()
        return redirect('profile')
    umember = UserMember.objects.get(user=request.user)
    context = {'umember':umember}
    return render(request,'user/edit_profile.html',context)

# ------------- issue request -----------

@login_required(login_url='log_in')
def issue_request(request,pk):
    usermember = UserMember.objects.filter(user=request.user)
    if usermember:
        book = Book.objects.get(id=pk)
        issue,created = Issue.objects.get_or_create(book=book,user=usermember[0])
        messages.info(request, 'Book - {} Requested successfully '.format(book.book_name))
        return redirect('home')
    messages.error(request,'You are not a Member !')
    return redirect('issue_request')

# --------- my issues -------------

@login_required(login_url='log_in')
def myissues(request):
    if UserMember.objects.filter(user=request.user):
        usermember = UserMember.objects.filter(user=request.user)[0]
        if request.GET.get('issued') is not None:
            issues = Issue.objects.filter(user=usermember,issued=True)
        elif request.GET.get('notissued') is not None:
            issues = Issue.objects.filter(user=usermember,issued=False)
        else:
            issues = Issue.objects.filter(user=usermember)
        return render(request,'user/myissues.html',{'issues':issues})

# ----------- all issues ------------

@login_required(login_url='log_in')
def requested_issues(request):
    if request.GET.get('userID') is not None and request.GET.get('userID') !='':
        try:
            user = User.objects.get(username=request.GET.get('userID'))
            usermember = UserMember.objects.filter(user=user)
            if usermember:
                usermember = usermember[0]
                issues = Issue.objects.filter(user=usermember,issued=False)
                return render(request,'admin/all_issues.html',{'issues':issues})
            messages.error(request,'No user found')
            return redirect('requested_issues')
        except User.DoesNotExist:
            messages.error(request,'No user found')
            return redirect('requested_issues')
    else:
        issues = Issue.objects.filter(issued=False)
        return render(request,'admin/all_issues.html',{'issues':issues})

# ------------ issue book -------------

@login_required(login_url='log_in')
def issue_book(request,pk):
    issue = Issue.objects.get(id=pk)
    issue.return_date = timezone.now() + datetime.timedelta(days=1)
    issue.issued_at = timezone.now()
    issue.issued = True
    issue.save()
    return redirect('requested_issues')

# ---------- return book ------------

@login_required(login_url='log_in')
def return_book(request,pk):
    issue = Issue.objects.get(id=pk)
    calcFine(issue)
    issue.returned = True
    issue.save()
    return redirect('myfines')

# --------------- my fine ---------------

@login_required(login_url='log_in')
def myfines(request):
    if UserMember.objects.filter(user=request.user):
        usermember = UserMember.objects.filter(user=request.user)[0]
        issues = Issue.objects.filter(user=usermember)
        for issue in issues:
            calcFine(issue)
        fines = Fine.objects.filter(user=usermember)
        return render(request,'user/myfines.html',{'fines':fines})
    messages.error(request,'You are not a Member !')
    return redirect('myfines')

# ---------- members table -----------   
@login_required(login_url='log_in')
def members(request):
    user = UserMember.objects.all()
    return render(request,'admin/members.html',{'user':user})

# ---------- delete member ------------
@login_required(login_url='log_in')
def delete_members(request,pk):
    user = User.objects.get(id=pk)
    user.delete()
    return redirect('members')

# ------------- all fines -------------
@login_required(login_url='log_in')
def all_fines(request):
    fines = Fine.objects.all()
    context = {'fines':fines}
    return render(request,'admin/all_fines.html',context)

# ------------- delete fine -------------
@login_required(login_url='log_in')
def delete_fine(request,pk):
    fine = Fine.objects.get(id=pk)
    fine.delete()
    return redirect('all_fines')



