   M S B A M L   `   `   `  ����G  Capp-ketering, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:app_keteringapp_ketering  5   	       app_ketering.Jela   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   &localclr-namespace:app_ketering  5   	   ;av2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  6G     � Title$
  Jela��5   	   $	��600��6   $
��1100��6#    � WindowStartupLocation$ CenterScreen=�60    � 
ResizeMode$ NoResize=�6U    � WindowStyle$
 none=�6k   .��5      � $��	26,0,36,0q�6    � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $��3* �6   �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��2��6"   $	��Top=�62   $��Right=�6J   .+�5      �� -   5         ��Name$ 
btnZatvori��5   '   $��10q�5       &  "MaterialDesignFloatingActionButton#��[  6!    � ToolTip$ Zatvori��5      ��5   ]   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6*   ���#324969$��20��6L   $��20��6W   5      5       �� 5#   
   $��0��6   $��1��6!   $��UPRAVLJANJE JELIMA��61   ���#324969	 �� TextAlignment$	 Center=�5$   )   $��30(�6@   
 �� Padding$
 10q�6N   $
��Bold"�5%      $
��Left=�6&   $	��Top=�6A   $��
144,14,0,0q�5&      $��Quicksand Medium)�6(   $	��346��6F   &   System.Windows.Controls.DataGrid  5)   
   -   5          Name$ datagrid��5)      $��1��5*      $��0��6       AlternatingRowBackground �#a8bcd7   AutoGenerateColumns$ False��5,         CanUserSortColumns$
 True��5-         ColumnHeaderHeight$ 40Q�5.         VerticalGridLinesBrush
 �����   HorizontalGridLinesBrush
 �����$��13(�51      $��
-26,0,0,62q�52      $��2��53        MaterialDesignDataGrid#���  6'   ��54      �� 55       �� 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .�56      ��  �� Property � �� �� Value$
 Auto��6/   57         Columns 59      0  *System.Windows.Controls.DataGridTextColumn  5:      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      
IsReadOnly$
 True��6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *Id+6H     5;      $ Naziv��6%    64   �� *Naziv+  5<      $
 Opis��6%    63   �� *Opis+4  .System.Windows.Controls.DataGridTemplateColumn  5=      $ Slika��6)      CellTemplate 5>      �� 5?      .R�5@      �� $��UniformToFill=�5A   $   $��50��5B   $   $��50��5C   $   $��Center=�5D   $   $��Center=�5E   $   ��5@   $   �� *Slika+5E   $   5F      5H        5I      $
 Cena��6%    63   �� *Cena+5K      �� 5N   
   $��1��6   $��2��6"   $	��Top=�62   $��Right=�6J   $��	0,5,-23,5q�6f   $	��277��6y   $	��319��6�   .+�5O      �� -   5         ��Name$ txtNaziv��5O      $��10q�5P      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Unesi naziv jela��5Q      ���#324969$	��257��5R   +   ���#324969 �� 
CaretBrush �#324969 �� SelectionBrush �#324969.	  (MaterialDesignThemes.Wpf.TextFieldAssist 	  UnderlineBrush �#3249695V      �� 5W      -   5        $ txtOpis��5W      $��10q�5X      $ Unesi opis jela��5Y      ���#324969$	��257��5Z   +   ���#324969 �#324969 �#324969 �#3249695^      �� 5`       �� Orientation$ 
Horizontal=�6   $��10q�62   $	��255��6>   .+�5a      �� -   5        $ txtSlika��5a      $	��156��5b      $ Dodaj sliku jela��5c      ���#324969���#324969 �#324969 �#324969 �#3249695h      �� 5i      -   5        $��IZABERI��5i      $��99��6+   $��30��6N     MaterialDesignRaisedButton#��[ 5j      +
  %MaterialDesignThemes.Wpf.ButtonAssist  
  CornerRadius$  5��5k      $��12(�5l      ���#324969
�������5n      5o      �� 5q      -   5        $ txtCena��5q      $��10q�5r      $ Unesi cenu jela��5s      ���#324969$	��257��5t   +   ���#324969 �#324969 �#324969 �#3249695x      �� 5z      $ 
Horizontal=�6   $��Center=�62   $��10q�6O   .+�5{      �� -   5        $ btnSnimi��5�      $��DODAJ��5{      $	��100��6)   $��5q�65   #��[ 5|      $  10��5}      $��2q�5~      
�������
��� � �
�������$ Insert��5�      5�      �� 5�      -	   5        $ 	btnOcisti��5�      $��OČISTI��5�      $	��100��6*   $��5q�66   #��[ 5�      $  10��5�      $��2q�5�      
����������#a8bcd7
�������$ Clear��5�      5�      5�      5�      �� 5�   
   -
   5        $ 	btnObrisi��5�      $��OBRIŠI��5�      #��[ 5�      $  10��5�      $��2q�5�      
�������
���  ��
�������$ Delete��5�      $��118,463,329,29q�5�       $��1��68   $��1��6E   5�      5�      