   M S B A M L   `   `   `  ����G  CFinalProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:FinalProjectFinalProject  5   	       FinalProject.Registration   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:FinalProject     5   	     � WindowStartupLocation$  CenterScreen=�5   	   ���#262626 � Title$ Галерея��5
   	   $	��350��5   	   $	��290��6   $	��400��5   	   $	��340��6    � Icon$ /favicon.png��6"    � 	Resources 5      !   FinalProject.RegistrationVm   	ViewModel��%   &	          5   
   6   5      .��5      �  � DataContext# [  6    � ColumnDefinitions 5   
   �� 5      $
��0.4* �6   �� 5       � RowDefinitions 5   
   �� 5      $
��0.5* �6   �� 5      �� 5      �� 5      �� 5      $
��0.6* �6   .+�5   
   ��  	 Title#��[ 6   $��Регистрация��6/   $��2��6E   �� 5   
     
LabelStyle#��[ 6   $��1��64   $��Логин:��6A   �� 5   
     TextBoxStyle#��[ 6   $��1��6O   $��1��6\   ��68   �� *Login+6\   �� 5   
   #��[ 6   $��2��64   $��Пароль:��6A   �� 5    
   #��[ 6   $��2��5!   	   $��1��6   ��5    8   �� *
Password+5!      �� 5"   
   #��[ 6   $��3��64   $��Повторить:��6A   �� 5#   
   #��[ 6   $��3��5$   	   $��1��6   ��5#   8   �� *RepeatPassword+5$      � 5%   
   $��4��6   $��2��6    5&      �� 5'      �� 5(      .+�5*      ��   ButtonStyle#��[ 6   $��Есть аккаунт?��6:   ��5+      �� *
OpenSignIn+�� 5,      #��[ 6   $*��$Зарегестрироваться��6:   $��1��5-   5   ��6   �� *RegistrationCommand+65   5.      5/      50      