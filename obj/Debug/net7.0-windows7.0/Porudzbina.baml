   M S B A M L   `   `   `  ����G  Capp-ketering, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:app_keteringapp_ketering  5   	       app_ketering.Porudzbina   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:app_ketering     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  
Porudzbina��5	   	   $	��600��6   $	��700��6)    � WindowStartupLocation$ CenterScreen=�65    � 
ResizeMode$ NoResize=�6Z    � WindowStyle$
 None=�6p   .��5      � $��26,0,0,0q�6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��3* �6   �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��2��6"   $	��Top=�62   $��Right=�6J   .+�5      �� -   5         ��Name$ 
btnZatvori��5   '   $��10q�5       &  "MaterialDesignFloatingActionButton#��[  6!    � ToolTip$ Zatvori��5      ��5   ]   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6*   ���#324969$��20��6L   $��20��6W   5      5      �� 5!   
   ���#324969	 �� TextAlignment$	 Center=�5"   )   $��30(�6@   
 �� Padding$
 10q�6N   $
��Bold"�5#      $
��Left=�6&   $	��Top=�6A   $��	90,14,0,0q�5$      $	��466��6'   $��2��63   $��Quicksand Medium)�6G   �� 5%      $�UPRAVLJANJE PORUDŽBINAMA��6   �� 64    � Language$ 
sr-latn-ba�68   5&      &   System.Windows.Controls.DataGrid  5)   
   -   5          Name$ datagrid��5)      $��1��5*      $��0��6      AlternatingRowBackground �#a8bcd7   AutoGenerateColumns$ False��5,         CanUserSortColumns$
 True��5-         ColumnHeaderHeight$ 40Q�5.         VerticalGridLinesBrush
 �����   HorizontalGridLinesBrush
 �����$��13(�51      $��
-26,0,0,95q�52      $��3��53        MaterialDesignDataGrid#���  6      Columns 54      0  *System.Windows.Controls.DataGridTextColumn  55      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      
IsReadOnly$
 True��6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     56      $ Korisnik��6%    67   �� *
Korisnik+  57      $ Datum��6%    64   �� *Datum+  58      $ Status��6%    65   �� *Status+  59      $ 
Naziv jela��6%    69   �� *	NazivJela+  5:      $ 	Količina��6%    67   �� *
Kolicina+5<      �� 5=   
   -   5        $��1��5=      $��IZMENI��6!   $
��Left=�62   $��1��6N   $��138,459,0,0q�6[   $	��Top=�6p   
�������
��� ���
�������$
��Bold"�6�     MaterialDesignRaisedButton#��[ 6�   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��6"  $	��100��6P  5>      5?      