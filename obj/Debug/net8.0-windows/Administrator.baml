   M S B A M L   `   `   `  ����G  Capp-ketering, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:app_keteringapp_ketering  5   	        app_ketering.Administrator   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   &localclr-namespace:app_ketering  5   	     � Title$  Administrator��5   	   $	��508��6   $
��1050��6,    � WindowStartupLocation$ CenterScreen=�69    � 
ResizeMode$ NoResize=�6^    � WindowStyle$
 None=�6t   .��5      � .+�5
   
   �� $	��Top=�6   $
��0 25q�6-   .+�5      �� $-��'ADMINISTRATOR - UPRAVLJANJE KORISNICIMA��6   ���#324969 �� TextAlignment$ Center=�6\   $��24(�6s    �� Padding$ 10q�6�   $	��583��6�   $
��Bold"�6�   $��Center=�6�   $��Center=�6�   $��Quicksand Medium)�6�   5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $	��975��6   $	��330��6%   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ datagrid��5         AlternatingRowBackground �#a8bcd7	   AutoGenerateColumns$	 False��5      
   CanUserSortColumns$

 True��5         ColumnHeaderHeight$ 40Q�5         	RowHeight$ 35Q�5         VerticalGridLinesBrush
 �����   HorizontalGridLinesBrush
 �����$��13(�5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6-      
IsReadOnly$
 True��6P   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *Id+6P     5      $	 Ime��6-    6:   �� *Ime+  5      $ Prezime��6-    6>   �� *	Prezime+  5      $ Email��6-    6<   �� *Email+  5      $ Adresa��6-    6=   �� *Adresa+  5      $
 Grad��6-    6;   �� *Grad+  5      $ Telefon��6-    6>   �� *	Telefon+  5       $ KorIme��6-    6=   �� *KorisnickoIme+  5!      $ Lozinka��6-    6>   �� *	Lozinka+  5"      $ Uloga��6-    6<   �� *Uloga+5%      5&      �� 5(      $��59��6   .+�5)      �� -   5         ��Name$ 
btnZatvori��5*       $
��0 20q�5)       &  "MaterialDesignFloatingActionButton#��[  6'    � ToolTip$ Zatvori��5*      ��5)   c   Z� .��5+      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   ���#324969$��20��6P   $��20��6[   5,      5-      50      �� 51   
   -   5        $��DODAJ��51      $
��Left=�6!   $��331,454,0,0q�6<   $	��Top=�6Q   
�������
��� � �
�������$
��Bold"�6�     MaterialDesignRaisedButton#��[ 6�   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��6   $	��100��6.  �� 52   
   -   5        $��IZMENI��52      $
��Left=�6"   $��451,454,0,0q�6=   $	��Top=�6R   
�������
��� ���
�������$
��Bold"�6�   #��[ 6�   $ 10��6  $	��100��61  �� 53   
   -   5        $��OBRIŠI��53      $
��Left=�6"   $��571,454,0,0q�6=   $	��Top=�6R   
�������
���  ��
�������$
��Bold"�6�   #��[ 6�   $ 10��6   $	��100��6.  54      55      