   M S B A M L   `   `   `  ����C  ?Notebook, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:NotebookNotebook  5   	       Notebook.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Notebook     5   	     � Title$#  Записная книжка��5   	   ���#262626$	��300��66   $	��450��6H   $	��300��6W   $	��650��6d    � Icon$ /AppIcon.png��6p    � 	Resources 5	         Notebook.Person   pers
   Fio   Address   Phone��%<   &	          5
   
   $  ��6$   $  ��6+   $  ��66   5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$ local:CommandLoad.Load��5      6:     5   
   -   5        $ local:CommandSave.Save��5      6Q     5   
   -   5        $ local:CommandAdd.Add��5      6N     5   
   -   5        $  local:CommandChange.Change��5      6W     5   
   -   5        $( "local:CommandSaveChange.SaveChange��5      6c     5   
   -   5        $  local:CommandDelete.Delete��5      6W   .��5      �  � DataContext# [  6   .+�5   
   � 	 � ColumnDefinitions	 5      �� 5      �� 5      
 � RowDefinitions
 5      �� 5      -   5         �Name$
 row1��5       �� 5      -   5        $
 row2��5       �� 5      -	   5        $
 row3��5       �� 5      -
   5        $
 row4��5       �� 5      -   5        $
 row5��5       �� 5       -   5        $
 row6��5        �� 5!      -   5        $
 row7��5!       �� 5"      -   5        $
 row8��5"       .+�5$      o� -   5        $
��menu��5$        	MenuStyle#��[ 6   $��2��6B   .@�5%      m�   MenuItemStyle#��[ 6    m� Command$ local:CommandLoad.Load��6B   m� 5&      #��[ 6   $ local:CommandSave.Save��6B   m� 5'      #��[ 6   $ local:CommandAdd.Add��6B   m� 5(      #��[ 6   $  local:CommandChange.Change��6B   m� 5)      #��[ 6   $  local:CommandDelete.Delete��6B   5*      �� 5+      $��Введите ФИО:��6     
LabelStyle#��[ 6+   $��1��6O   �� 5,        TextBoxStyle#��[ 6   $��2��6Q   ��6<   �� *Fio+6Q   �� 5-      $"��Введите адресс:��6   #��[ 6.   $��3��6R   �� 5.      #��[ 6   $��4��6U   ��6<   �� *	Address+6U   �� 5/      $$��Введите телефон:��6   #��[ 6/   $��5��6S   �� 50      #��[ 6   $��6��6S   ��6<   �� *Phone+6S   �� 51      -   5        $��change��51        ButtonStyle#��[ 6#   $(��"local:CommandSaveChange.SaveChange��6H   $��7��6�   ��6u   ��  �� RelativeSource �� *Self+ �� Path$ Command.Text�6�   �� 52      -   5        $��listBox��52        ListBoxStyle#��[ 6%   $��1��53   C   $��1��6P   $��7��6`   ��52   K   �� *	Persons+ �� SelectedIndex 53      �� *SelectedIndex+ �� Mode$ TwoWay=���54      �� 55       �� 
TargetType" ��6   .�56      ��  �� Property � �� �� Value 57      �� 58   "    �� 
TargetType" ��62   .R�59   &   ��  ��Name$ border��6-    �� CornerRadius$ 5��6=   ._�5:   *   �� 5;   '    �� Triggers 5<   &   P� 5=   *    P� Property �@��
IsSelected P� Value$
 True��6H   . �5>   .   ��  �� 
TargetName$ border��65    � �� �#4a4a4a6_   5?   +   5A   #   5C      5D      5F      5G      5H      5I      