   M S B A M L   `   `   `  ����G  Capp-ketering, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:app_keteringapp_ketering  5   	       app_ketering.Korpa   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:app_ketering     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Korpa��5	   	   $	��550��6   $	��800��6$    � WindowStartupLocation$ CenterScreen=�60    � 
ResizeMode$ NoResize=�6U    � WindowStyle$
 None=�6k   .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   ���#324969 �� Padding$ 10q�63   ._�5      �� $��KETERING LONAC��6   $��36(�6.   $
��Bold"�6<   
�������$��Center=�6a   $��Quicksand Medium)�6~   5      � 5   
   $��1��6   $��10q�6   .+�5      �� -   5         ��Name$ KorpaItemsControl��5      $
��Left=�62   $	��780��6M   ��5      �� 5      .R�5      �� .+�5      �� $	��100��6=   ��6$   �� *Slika+6=   �� 5      $
��Bold"�6?   ���#324969��6(   �� *Naziv+6Q   �� 5      ���#324969��6(   �� *Cena+ �� StringFormat$ {0} RSD��6V   5       5!      5#      �� 5$       �� Orientation$ Vertical=�6   $��Center=�60   $��10q�6M   .+�5%      �� $��Ukupna cena:��6   $��18(�60   $
��Bold"�6>   ���#3249696P   �� 5&      -   5        	 ��Name$	 UkupnaCenaTextBlock��5&      $��18(�69   $
��Bold"�6G   
���  ��6Y   �� 5'      -   5        $��Završi kupovinu��5'      $	��200��5(      $��50��6   ���#4CAF50
�������$��16(�5)      $��10q�6   5*      �� 5,      -   5        
 ��Name$
 
btnZatvori��5-      $��709,-72,0,439q�5,       &  "MaterialDesignFloatingActionButton#��[  6,    � ToolTip$ Zatvori��5-       J� RenderTransformOrigin$ 7.341,0.202&�6J   $
��Left=�6n   ��5,   h   Z� .��5.      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6*   
�������$��20��6J   $��20��6U   $ 1.019,-10.801&�6a   5/      51      �� 55   
   $��2��6   ���#324969$ 10q�63   ._�56      �� $��© 2024 Ketering Lonac��6   $��14(�65   
�������$��Center=�6V   57      59      5:      