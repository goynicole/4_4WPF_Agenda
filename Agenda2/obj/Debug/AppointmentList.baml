   M S B A M L   `   `   `  ����B  >Agenda2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:Agenda2Agenda2  5          Agenda2.AppointmentList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:Agenda2     5      X TXceed.Wpf.Toolkit, Version=3.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5        N� Title$  AppointmentList��5
       N� 
Background 5      �� 5   
    �� ImageSource$ img/home.jpg��6   .��5      � .+�5   
   �� $+��%Liste des rendez-vous et Modification��6   $��48(�6A   $
��Wrap=�6O   $��Center=�6c   $��EucrosiaUPC)�6�   $
��Bold"�6�   $	��800��6�    �� TextAlignment$ Center=�6�   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ Black��6#    � Offset$ 0Q�61   � 5      $ 	#FFE8C375��6#   $ 1Q�65   5      5      &   System.Windows.Controls.DataGrid  5   
   -   5        $��AppointmentsListDataGrid��5      $��10,115,369,10q�63   5      � 5   
   -   5         �Name$ grid1��5      $
��Left=�6   $��436,140,0,0q�69   $	��Top=�6N   $	��168��6f   $	��354��6s   	 � ColumnDefinitions	 5      �� 5      $
��Auto �6#   �� 5       $
��Auto �6#   �� 5!      $
��Auto �6#   
 � RowDefinitions
 5#      �� 5$      $
��Auto �6    �� 5%      $
��Auto �6    �� 5&      $
��Auto �6    �� 5'      $
��Auto �6    �� 5(      $
��Auto �6    .+�5*      �� $��Appointment ID:��6   $��0��6.   $
��Left=�6>   $��3q�6Y   $��0��6d   $��Center=�6q   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5,      $��Nom du Courtier :��6   $��0��60   $
��Left=�6@   $��3q�6[   $��1��6f   $��Center=�6s   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5-      $��Nom du Client :��6   $��0��6.   $
��Left=�6>   $��3q�6Y   $��2��6d   $��Center=�6q   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 5.      $��	Date RDV:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��3��6^   $��Center=�6k   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   &   Xceed.Wpf.Toolkit.DateTimePicker  5/      -   5          Name$ dateHourDatePicker��5/   "   &   Xceed.Wpf.Toolkit.DateTimeUpDown   Format$ Custom=�6>      FormatString$ dd/MM/yyyy HH:mm��6N   $��1��6�   $
��Left=�6�   $��	3,6,-41,6q�6�   $��3��6  $��Center=�6  $	��232��64  $��2��6@  $��25��6T  �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value 6n   ��  �� ElementName$ AppointmentsListDataGrid�� �� Path$ SelectedItem.DateHour� �� Mode$ TwoWay=�6T  �� 50      $��Sujet du RDV:��6   $��0��6,   $
��Left=�6<   $��3q�6W   $��4��6b   $��Center=�6o   
���   �
���   ����	#FFF9F3F3$
��Bold"�6�   �� 51      -   5        $��BrokerComboBox��51       �� DisplayMemberPath$ Lastname��6�    �� SelectedValuePath$ BrokerID��6�   $��1��6�   $
��Left=�6�   $��	3,4,-45,0q�6  $��1��6  $	��Top=�6%  $	��232��6=  $��2��6I   �� SelectedValue 6-   �� $ AppointmentsListDataGrid��$ SelectedItem.BrokerID���6�   �� 6I  �� 52      -   5        $��CustomerComboBox��52      $ Lastname��6�   $ 
CustomerID��6�   $��1��6�   $
��Left=�6�   $��	3,3,-43,0q�6  $��2��6  $	��Top=�6+  $	��232��6C  $��2��6O   6/   �� $ AppointmentsListDataGrid��$ SelectedItem.CustomerID���6�   �� 6O  �� 53      -   5        $��TxtAppointmentID��53      $��1��6�   $
��Left=�6�   $��23��6�   $��
3,10,-47,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��232��6	  $��2��6  ��6.   �� $ AppointmentsListDataGrid��$  SelectedItem.AppointmentID�$ TwoWay=�6  �� 54      -   5        $��
TxtSubject��54      $��1��6�   $
��Left=�6�   $��23��6�   $��	3,3,-39,0q�6�   $��4��6�   $
 Wrap=�6�   $	��Top=�6�   $	��232��6	  $��2��6  ��6(   �� $ AppointmentsListDataGrid��$ SelectedItem.Subject�$ TwoWay=�6  55      �� 56   
   -   5        $��	BtnModify��56      $��Enregistrer��6"   $
��Left=�68   $��494,327,0,0q�6S   $	��Top=�6h   $	��121��6�   ���	#FF5A6A8D���	#FF1DF51D���	#FF21BF4C$
��Bold"�6�   �� 57   
   -	   5        $��	BtnDelete��57      $��	Supprimer��6#   $
��Left=�67   $��644,327,0,0q�6R   $	��Top=�6g   $	��121��6   ���	#FF4B6CB6���	#FFEE0606���	#FFF00000$
��Bold"�6�    � Cursor$
 Help��6�   58      5:      