   M S B A M L   `   `   `  ����B  >Agenda2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:Agenda2Agenda2  5          Agenda2.CustomersList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:Agenda2     5      -   5          N� Title$  CustomersList��5	       � 	Resources 5
         customerViewSource��%   &	        �� 5   
   6   5       N� 
Background 5      �� 5   
    �� ImageSource$ img/fond.jpg��6    j� Stretch$
 Fill=�60    j� TileMode$
 None=�6?   .��5      �  � DataContext# [  6   .+�5   
   �� $��Liste des clients��6   $��48(�6-   $��Center=�6;   $��EucrosiaUPC)�6X   $
��Bold"�6q   $��19,27,285,0q�6�   $	��496��6�    �� TextAlignment$ Center=�6�   ��5      �� 5       �� EndPoint$ 0.5,1&�6&   	 �� 
StartPoint$	 0.5,0&�67   .��5      � 
 � Color$
 Black��6#    � Offset$ 0Q�61   � 5      $
 	#FFE8C375��6#   $ 1Q�65   5      5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ customerDataGrid��5      $��Center=�6-      AutoGenerateColumns .     EnableRowVirtualization . $��19,140,285,142q�6�   $	��496��6�      
IsReadOnly . ��6�   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        budgetColumn��,  &System.Windows.Controls.DataGridColumn   Header$ Budget��5   V      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6f   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *Budget+6f     5      -   5        customerIDColumn��   
IsReadOnly . $ Customer ID��5   p   $ * 6�    6?   �� *
CustomerID+6�     5      -   5        firstnameColumn��$ 	Firstname��5   \   $ * 6o    6>   �� *	Firstname+6o     5       -   5        lastnameColumn��$ Lastname��5    Z   $ * 6l    6=   �� *
Lastname+6l     5!      -   5        
mailColumn��$
 Mail��5!   R   $ * 6`    69   �� *Mail+6`     5"      -   5        phoneNumberColumn��$ Phone Number��5"   `   $ * 6v    6@   �� *PhoneNumber+6v   5$      �� 5&   
   $��Modifier��6   $��48(�6$   $��Center=�62   $��EucrosiaUPC)�6O   $
��Bold"�6h   $	��252��6z   $ Center=�6�   $��520,27,28,68q�6�   ��5'      �� 5(      $ 0.5,1&�6&   $	 0.5,0&�67   .��5)      � $
 Black��6#   $ 0Q�61   � 5*      $
 	#FFE8C375��6#   $ 1Q�65   5+      5-      � 5/   
   -	   5         �Name$ grid1��5/      $
��Left=�6   $��520,140,0,0q�69   $	��Top=�6N   $	��242��6f   $	��252��6s    � ColumnDefinitions 50      �� 51      $
��Auto �6#   �� 52      $
��Auto �6#    � RowDefinitions 54      �� 55      $
��Auto �6    �� 56      $
��Auto �6    �� 57      $
��Auto �6    �� 58      $
��Auto �6    �� 59      $
��Auto �6    �� 5:      $
��Auto �6    �� 5;      $
��Auto �6    .+�5=      �� $��Budget:��6   $��0��6&   $
��Left=�66   $��3q�6Q   $��0��6\   $��Center=�6i   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5>      -
   5         ��Name$ budgetTextBox��5>      $��1��6-   $
��Left=�6=   $��23��6X   $��3,5,-9,5q�6d   $��0��6v   $��Center=�6�   $	��133��6�   ��6�   �� *Budget+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6�   �� 5?      $��
Firstname:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��1��6_   $��Center=�6l   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5@      -   5        $ firstnameTextBox��5@      $��1��60   $
��Left=�6@   $��23��6[   $��3,5,-8,5q�6g   $��1��6y   $��Center=�6�   $	��133��6  ��6�   �� *	Firstname+$ TwoWay=� .  . 6  �� 5A      $��	Lastname:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��2��6^   $��Center=�6k   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5B      -   5        $ lastnameTextBox��5B      $��1��6/   $
��Left=�6?   $��23��6Z   $��3,5,-7,5q�6f   $��2��6x   $��Center=�6�   $	��133��6  ��6�   �� *
Lastname+$ TwoWay=� .  . 6  �� 5C      $��Mail:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��3��6Z   $��Center=�6g   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5D      -   5        $ mailTextBox��5D      $��1��6+   $
��Left=�6;   $��23��6V   $��3,5,-6,5q�6b   $��3��6t   $��Center=�6�   $	��133��6�   ��6�   �� *Mail+$ TwoWay=� .  . 6�   �� 5E      $��Phone Number:��6   $��0��6,   $
��Left=�6<   $��3q�6W   $��4��6b   $��Center=�6o   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5F      -   5        $ phoneNumberTextBox��5F      $��1��62   $
��Left=�6B   $��23��6]   $��3,5,-5,5q�6i   $��4��6{   $��Center=�6�   $	��133��6  ��6�   �� *PhoneNumber+$ TwoWay=� .  . 6  �� 5G      $��Customer ID:��6   $��0��6+   $
��Left=�6;   $��3q�6V   $��5��6a   $��Center=�6n   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5H      -   5        $ customerIDTextBox��5H       �� 
IsReadOnly . $��1��6C   $
��Left=�6S   $��23��6n   $��3,5,-4,5q�6z   $��5��6�   $��Center=�6�   $	��133��6  ��6�   �� *
CustomerID+$ TwoWay=� .  . 6  �� 5I      -   5         ��Name$ 	BtnModify��5I      $��Modifier��6(   $
��Left=�6;   $��15,8,0,0q�6V   $��6��6h   $	��Top=�6u   $��75��6�   ���	#FF5A6A8D���	#FF1DF51D���	#FF21BF4C$
��Bold"�6�   �� 5J      -   5        $ 	BtnDelete��5J      $��	Supprimer��6(   $��1��6<   $
��Left=�6L   $��	48,10,0,0q�6g   $��6��6z   $	��Top=�6�   $��75��6�   ���	#FF4B6CB6���	#FFEE0606���	#FFF00000$
��Bold"�6   � Cursor$
 Help��6  5L      5M      5N      