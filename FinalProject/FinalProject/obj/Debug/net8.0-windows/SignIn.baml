   M S B A M L   `   `   `  ����G  CFinalProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:FinalProjectFinalProject  5   	       FinalProject.SignIn   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:FinalProject     5   	     � WindowStartupLocation$  CenterScreen=�5   	   ���#262626 � Title$ Галерея��5
   	   $	��250��5   	   $	��250��6   $	��300��5   	   $	��300��6    � Icon$ /favicon.png��6"    � 	Resources 5         FinalProject.SignInVM   	ViewModel��%   &	          5   
   6   5      .��5      �  � DataContext# [  6    � ColumnDefinitions 5   
   �� 5      $
��0.4* �6   �� 5       � RowDefinitions 5   
   �� 5      $
��0.5* �6   �� 5      �� 5      �� 5      $
��0.6* �6   .+�5   
   ��  	 Title#��[ 6   $��Вход��6/   $��2��6>   �� 5   
     
LabelStyle#��[ 6   $��1��64   $��Логин:��6A   �� 5   
     TextBoxStyle#��[ 6   $��1��6O   $��1��6\   ��68   �� *Login+6\   �� 5   
   #��[ 6   $��2��64   $��Пароль:��6A   �� 5   
   #��[ 6   $��2��5    #   $��1��60   ��6	   �� *
Password+60   � 5!   
   $��3��6   $��2��6    5"      �� 5#      �� 5$      .+�5&      ��   ButtonStyle#��[ 6   $��Нет аккаунта?��6:   ��5'      �� *OpenRegCommand+�� 5(      #��[ 6   $��
Войти��5)      $��2��6   ��5(   :   �� *SignInCommand+5)      5*      5+      5,      