   M S B A M L   `   `   `  ����  app-ketering!    app_ketering.DodajKorisnika   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Dodaj Korisnika��5   	   $	��550��6!   $	��500��6.    � WindowStartupLocation$ CenterScreen=�6:    � 
ResizeMode$ NoResize=�6_    � WindowStyle$
 None=�6u   .��5      � .+�5   
   �� $	��Top=�6   $
��0,25q�6-   .+�5	      �� $��DODAJ KORISNIKA��6   ���#324969 �� TextAlignment$ Center=�6D   $��20(�6[    �� Padding$ 10q�6i   $	��583��6v   $
��Bold"�6�   $��Center=�6�   $��Center=�6�   $��Quicksand Medium)�6�   5
      �� 5   
   $��100,70,100,10q�6   .+�5      �� -   5         ��Name$ txtIme��5      $��10q�5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Unesi ime��5      ���#324969$	��250��5   +   ���#324969 �� 
CaretBrush �#324969	 �� SelectionBrush	 �#324969.  (MaterialDesignThemes.Wpf.TextFieldAssist
   UnderlineBrush
 �#3249695      �� 5      -   5        $ 
txtPrezime��5      $��10q�5      $ Unesi prezime��5      ���#324969$	��250��5   +   ���#324969 �#324969	 �#324969
 �#3249695      �� 5      -   5        $ txtEmail��5      $��10q�5      $ Unesi email��5       ���#324969$	��250��5!   +   ���#324969 �#324969	 �#324969
 �#3249695%      �� 5&      -   5        $ 	txtAdresa��5&      $��10q�5'      $ Unesi adresu��5(      ���#324969$	��250��5)   +   ���#324969 �#324969	 �#324969
 �#3249695-      �� 5.      -   5        $ txtGrad��5.      $��10q�5/      $ 
Unesi grad��50      ���#324969$	��250��51   +   ���#324969 �#324969	 �#324969
 �#32496955      �� 56      -   5        $ 
txtTelefon��56      $��10q�57      $ Unesi telefon��58      ���#324969$	��250��59   +   ���#324969 �#324969	 �#324969
 �#3249695=      �� 5>      -   5        $ txtKorisnickoIme��5>      $��10q�5?      $ Unesi korisničko ime��5@      ���#324969$	��250��5A   +   ���#324969 �#324969	 �#324969
 �#3249695E      �� 5F      -   5        $ 
txtLozinka��5F      $��10q�5G      $ Unesi lozinku��5H      ���#324969$	��250��5I   +   ���#324969 �#324969	 �#324969
 �#3249695M      �� 5N      -	   5        $ txtUloga��5N      $��10q�5O      $ Unesi ulogu��5P      ���#324969$	��250��5Q   +   ���#324969 �#324969	 �#324969
 �#3249695U      �� 5X       �� Orientation$ 
Horizontal=�6   $��Center=�62   $��10q�6O   .+�5Y      �� -
   5         ��Name$ btnSnimi��5`   !   $��SNIMI��5Y      $	��100��6)   $��5q�65   $��40��6W      MaterialDesignRaisedButton#��[  6c   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5Z   !   $��2q�5[   !   ���#324969���#a8bcd7���#324969 � ToolTip$ Insert��5_   !   5`   !   �� 5b      -   5        $ 	btnOcisti��5i      $��OČISTI��5b      $	��100��6*   $��5q�66   $��40��6Y   #��[  6e   $ 10��5c      $��2q�5d      ���#324969���#a8bcd7���#324969$ Insert��5h      5i      5j      5k      �� 5n   
   -   5        $ 
btnZatvori��5o   #    & "MaterialDesignFloatingActionButton#��[ 5n      $ Zatvori��5o      $��434,10,10,484q�6P   ��5n   M   Z� .��5p      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   ���#324969$��20��6H   $��20��6S   5q      5r      5s      