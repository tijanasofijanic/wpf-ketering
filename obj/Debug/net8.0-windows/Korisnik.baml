   M S B A M L   `   `   `  ����G  Capp-ketering, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:app_keteringapp_ketering  5   	       app_ketering.Korisnik   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:app_ketering     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Korisnik��5	   	   $	��550��6   $	��800��6'    � WindowStartupLocation$ CenterScreen=�63    � 
ResizeMode$ NoResize=�6X    � WindowStyle$
 None=�6n   .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   ���#324969 �� Padding$ 10q�63   ._�5      �� $��KETERING LONAC��6   $��36(�6.   $
��Bold"�6<   
�������$��Center=�6a   $��Quicksand Medium)�6~   5      � 5   
   $��1��6   $��10q�6   .+�5      �� -   5         ��Name$ JelaItemsControl��5      ��5      �� 5      .R�5      A�  A� Rows$ 2��6&    A� Columns$ 3��6/   5      ��5!      �� 5"      .R�5#      �� 
�������$��1q�64   $��5q�6H   $ 5q�6S   ._�5$      �� .+�5%   "   �� $	��100��6A   $��0,0,0,10q�6N   ��6(   �� *Slika+6N   �� 5&   "   	 �� Orientation$	 
Horizontal=�6-   $��Center=�6F   .+�5'   &   �� $��12(�6G   $
��Bold"�6U   ���#324969$��0,0,10,0q�6|   ��60   �� *Naziv+6|   5)   #   �� 5*   "   $��10(�6B   $��0,5,0,0q�6P   ���#324969$��Center=�6v   ��6,   �� *Opis+6v   �� 5+   "   $��12(�6Z   $
��Bold"�6h   ���#324969$��0,5,0,0q�6�   $��Center=�6�   ��6,   �� *Cena+
 �� StringFormat$
 {0} RSD��6�   �� 5,   "   -   5        $��NARUČI��5,   )   ���#324969
�������$
��Bold"�6b   $��Center=�6�   $��10(�6�   $��20��6�   $��80��6�   $��5,0,0,0q�6�   $��5q�6�   5-      5.      5/      51      �� 55      -   5         ��Name$ btnKorpa��56      $��669,-72,0,439q�55       &  "MaterialDesignFloatingActionButton#��[  6,    � ToolTip$ Korpa��56       J� RenderTransformOrigin$ 7.341,0.202&�6I   $
��Left=�6m   ��55   h   Z� .��57      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Cart=�6*   
�������$��20��6I   $��20��6T   $ 1.019,-10.801&�6`   58      �� 59      -   5        $ 
btnZatvori��5:   '   $��709,-72,0,439q�59      #��[  6,   $ Zatvori��5:      $ 7.341,0.202&�6T   $
��Left=�6x   ��59   h   Z� .��5;        $ Close=�6*   
�������$��20��6J   $��20��6U   $ 1.019,-10.801&�6a   5<      5=      �� 5@   
   $��2��6   ���#324969$ 10q�63   ._�5A      �� $��© 2024 Ketering Lonac��6   $��14(�65   
�������$��Center=�6V   5B      5C      5D      