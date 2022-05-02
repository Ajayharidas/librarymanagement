from django.urls import path
from LibraryApp import views
from django.contrib.auth import views as auth_views


urlpatterns = [
    path('add_author',views.add_author,name='add_author'),
    path('add_category',views.add_category,name='add_category'),
    path('add_book',views.add_book,name='add_book'),
    path('show_category',views.show_category,name='show_category'),
    path('show_book',views.show_book,name='show_book'),
    path('show_author',views.show_author,name='show_author'),
    path('edit_category/<int:pk>',views.edit_category,name='edit_category'),
    path('edit_author/<int:pk>',views.edit_author,name='edit_author'),
    path('edit_book/<int:pk>',views.edit_book,name='edit_book'),
    path('delete_category/<int:pk>',views.delete_category,name='delete_category'),
    path('delete_author/<int:pk>',views.delete_author,name='delete_author'),
    path('delete_book/<int:pk>',views.delete_book,name='delete_book'),
    path('sign_up',views.sign_up,name='sign_up'),
    path('log_in',views.log_in,name='log_in'),
    path('home',views.home,name='home'),
    path('log_out',views.log_out,name='log_out'),
    path('book_details/<int:pk>',views.book_details,name='book_details'),
    path('profile',views.profile,name='profile'),
    path('edit_profile',views.edit_profile,name='edit_profile'),
    path('issue_request/<int:pk>',views.issue_request,name='issue_request'),
    path('myissues',views.myissues,name='myissues'),
    path('requested_issues',views.requested_issues,name='requested_issues'),
    path('issue_book/<int:pk>',views.issue_book,name='issue_book'),
    path('return_book/<int:pk>',views.return_book,name='return_book'),
    path('myfines',views.myfines,name='myfines'),
    path('members',views.members,name='members'),
    path('delete_member/<int:pk>',views.delete_members,name='delete_member'),
    path('all_fines',views.all_fines,name='all_fines'),
    path('delete_fine/<int:pk>',views.delete_fine,name='delete_fine'),

    path('reset_password',auth_views.PasswordResetView.as_view(template_name='user/rp_1.html'),name='reset_password'),
    path('reset_password_sent',auth_views.PasswordResetDoneView.as_view(template_name='user/rp_2.html'),name='password_reset_done'),
    path('reset/<uidb64>/<token>',auth_views.PasswordResetConfirmView.as_view(template_name='user/rp_3.html'),name='password_reset_confirm'),
    path('reset_password_complete',auth_views.PasswordResetCompleteView.as_view(template_name='user/rp_4.html'),name='password_reset_complete'),
]