   M S B A M L   `   `   `  ����B  >Agenda2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:Agenda2Agenda2  5          Agenda2.BrokersList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:Agenda2     5      -   5          N� Title$  BrokersList��5	       � 	Resources 5
         brokerViewSource��%   &	        �� 5   
   6   5       N� 
Background 5      �� 5   
    �� ImageSource$ img/Role-dun-courtier.jpg��6   .��5      �  � DataContext# [  6   .+�5   
   �� $��Liste des courtiers��6   $��48(�6/   $��Center=�6=   $��EucrosiaUPC)�6Z   $
��Bold"�6s   $��23,27,315,0q�6�   $	��462��6�    �� TextAlignment$ Center=�6�   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ Black��6#   	 � Offset$	 0Q�61   � 5      $ 	#FFE8C375��6#   $	 1Q�65   5      5      &   System.Windows.Controls.DataGrid  5   
   -   5        
  Name$
 brokerDataGrid��5         AutoGenerateColumns .     EnableRowVirtualization . $��23,107,315,143q�6~      
IsReadOnly .    RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   ��6f   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        brokerIDColumn��,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    Header$ 	Broker ID��5   l      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *
BrokerID+6     5      -   5        firstnameColumn��$ 	Firstname��5   \   $ * 6o    6>   �� *	Firstname+6o     5      -   5        lastnameColumn��$ Lastname��5   Z   $ * 6l    6=   �� *
Lastname+6l     5       -   5        
mailColumn��$
 Mail��5    R   $ * 6`    69   �� *Mail+6`     5!      -   5        phoneNumberColumn��$ Phone Number��5!   `   $ * 6v    6@   �� *PhoneNumber+6v   5#      �� 5%   
   $��Modifier��6   $��48(�6$   $��Center=�62   $��EucrosiaUPC)�6O   $
��Bold"�6h   $	��236��6z   $ Center=�6�   $��520,27,44,142q�6�   ��5&      �� 5'      $ 0.5,1&�6&   $ 0.5,0&�67   .��5(      � $ Black��6#   $	 0Q�61   � 5)      $ 	#FFE8C375��6#   $	 1Q�65   5*      5,      � 5-   
   -   5         �Name$ grid1��5-      $
��Left=�6   $��523,107,0,0q�69   $	��Top=�6N   $	��200��6f    � ColumnDefinitions 5.      �� 5/      $
��Auto �6#   �� 50      $
��Auto �6#    � RowDefinitions 52      �� 53      $
��Auto �6    �� 54      $
��Auto �6    �� 55      $
��Auto �6    �� 56      $
��Auto �6    �� 57      $
��Auto �6    �� 58      $
��Auto �6    .+�5:      �� $��
Broker ID:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��0��6_   $��Center=�6l   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5;      -	   5         ��Name$ brokerIDTextBox��5;      $��1��6/    �� 
IsReadOnly . $
��Left=�6R   $��23��6m   $��3q�6y   $��0��6�   $��Center=�6�   $	��120��6  ��6�   �� *
BrokerID+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6  �� 5<      $��
Firstname:��6   $��0��6)   $
��Left=�69   $��3q�6T   $��1��6_   $��Center=�6l   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5=      -
   5        $ firstnameTextBox��5=      $��1��60   $
��Left=�6@   $��23��6[   $��3q�6g   $��1��6r   $��Center=�6�   $	��120��6�   ��6   �� *	Firstname+$ TwoWay=� .  . 6�   �� 5>      $��	Lastname:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��2��6^   $��Center=�6k   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5?      -   5        $ lastnameTextBox��5?      $��1��6/   $
��Left=�6?   $��23��6Z   $��3q�6f   $��2��6q   $��Center=�6�   $	��120��6�   ��6~   �� *
Lastname+$ TwoWay=� .  . 6�   �� 5@      $��Mail:��6   $��0��6$   $
��Left=�64   $��3q�6O   $��3��6Z   $��Center=�6g   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5A      -   5        $ mailTextBox��5A      $��1��6+   $
��Left=�6;   $��23��6V   $��3q�6b   $��3��6m   $��Center=�6�   $	��120��6�   ��6z   �� *Mail+$ TwoWay=� .  . 6�   �� 5B      $��Phone Number:��6   $��0��6,   $
��Left=�6<   $��3q�6W   $��4��6b   $��Center=�6o   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5C      -   5        $ phoneNumberTextBox��5C      $��1��62   $
��Left=�6B   $��23��6]   $��3q�6i   $��4��6t   $��Center=�6�   $	��120��6   ��6�   �� *PhoneNumber+$ TwoWay=� .  . 6   �� 5D      -   5         ��Name$ 	BtnModify��5D      $��Modifier��6(   $
��Left=�6;   $��15,8,0,0q�6V   $��6��6h   $	��Top=�6u   $��75��6�   ���	#FF5A6A8D���	#FF1DF51D���	#FF21BF4C$
��Bold"�6�   �� 5E      -   5        $ 	BtnDelete��5E      $��	Supprimer��6(   $��1��6<   $
��Left=�6L   $��41,8,0,0q�6g   $��5��6y   $	��Top=�6�   $��75��6�   ���	#FF4B6CB6���	#FFEE0606���	#FFF00000$
��Bold"�6   � Cursor$
 Help��6  5G      5I      5J      