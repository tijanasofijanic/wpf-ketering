   M S B A M L   `   `   `  ����G  Capp-ketering, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:app_keteringapp_ketering  5   	       app_ketering.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   &localclr-namespace:app_ketering  5   	     � Title$  KeteringLonac��5	   	   $	��450��6   $	��800��6,    � WindowStartupLocation$ CenterScreen=�68    � 
ResizeMode$ NoResize=�6]    � WindowStyle$
 None=�6s   .��5
      � ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ #324969��6    � Offset$ 1Q�6/   � 5      $ #a8bcd7��6   $ 0Q�6/   5      .+�5   
   �� $	��390��6   $	��Top=�6    �� CornerRadius$ 	0 0 180 0��66   
�������6d   �� 5   
   	 �� Orientation$	 
Horizontal=�6   .+�5      �� $	��350��6   .+�5      �� $��	/logo.jpg��6   $	��300��6+   $	��300��67   $	��Top=�6D   $��30q�6\   5      �� 5      $	��350��6   .+�5      �� $��20 40q�6   .+�5      �� $��Prijava��6    $��20q�6/   ���#324969
 �� TextAlignment$
 Center=�6P   $��38(�6g   $��Great Vibes)�6u   6�   �� 5      $	 
Horizontal=�6!   $��10q�6:   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 User=�62   $��25��6>   $��25��6I   ���#3249696U   �� 5      -   5         ��Name$ korisnickoIme��5   "   $
��10 0q�69   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Unesi korisničko ime��5   "   ���#324969$	��250��5   7   ���#324969 �� 
CaretBrush �#324969 �� SelectionBrush �#324969.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#3249695"   "   5#      �� 5%      $	 
Horizontal=�6!   $��10q�6:   .+�5&        $
 Lock=�62   $��25��6>   $��25��6I   ���#3249696U   G� 5'      -   5         G�Name$ lozinka��5'   &   $
��10 0q�67   $ 
**********��5(   &   ���#324969$	��250��5*   &   ���#324969 G� 
CaretBrush �#324969 G� SelectionBrush �#324969 �#3249695.   &   5/      �� 51      $��10q�6!   $��Center=�6-   .+�52      �� -   5         ��Name$ 
btnPrijava��59   !   $	��100��52   !   $��40��6-      MaterialDesignRaisedButton#��[  69   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��53   !   $��2q�54   !   ���#324969���#a8bcd7���#324969 � ToolTip$ Login��58   !   $��
PRIJAVI SE��5;   !   5<      5=      5>      �� 5?      $	��100��6   .+�5@      �� -   5        $ 
btnZatvori��5A   +   $��10 20q�5@       & "MaterialDesignFloatingActionButton#��[ 6(   $ Zatvori��5A      ��5@   d   Z� .��5B        $ Close=�6.   ���#324969$��30��6P   $��30��6[   5C      5D      5E      5F      5G      