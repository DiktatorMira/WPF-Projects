   M S B A M L   `   `   `  ����B  >Recipes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:RecipesRecipes  5   	       Recipes.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Recipes     5   	   -   5          � WindowStartupLocation$  CenterScreen=�5   	   ���#262626 � Title$) #Кулинарные рецепты��5
   	   $	��330��5   	   $	��600��6   $	��450��5   	   $	��800��6    � Icon$ /AppIcon.png��6"   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��0.4* �6   �� 5      .+�5   
   �� -   5        $��listBox��5         ListBoxStyle#��[  6!   ��5      �� 5       �� ResourceKey$ ListBoxItemStyle��6!   .@�5      �� .��6   $"Мясо по-французски6.   �� 5      .��6   Сациви6"   �� 5      .��6   )'Торт "Мишка на севере"62   �� 5      .��6   Суп чихиртма6(   �� 5      .��6    Свинина в рукаве6,   5      �� 5   
    �� CornerRadius$ 10��6   $��1��6#   ._�5      -�   DocumentReaderStyle#��[ 6!   $��1��6N   .��5      /�  /� 
Background �#2e2e2e.T�5      �� .r�5       �� $��Center=�6%   .+�5!      �� -   5        $��title��5!   $     
LabelStyle#��[ 61   $��20(�6U   5"      5#      J� 5$        ParagraphStyle#��[ 6    $��16(�6H   .*�6V   .*�5%      6�  6� Width$	 2004�6!    �� Padding$ 0q�6-   	 6� HorizontalAnchor$	 	PageRight=�69   .t�5&      �� .r�5'   "   �� -   5        $��image��5'   (     
ImageStyle#��[ 65   5(      5)       �� 5*      -   5        
 �Name$	
 str��5*      5+      �� 5,      -   5        $

 list��5,      J� 5-      -   5        $
 description��5-       #��[ 63   5.      5/      50      51      52      