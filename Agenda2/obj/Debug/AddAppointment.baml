   M S B A M L   `   `   `  ����  Agenda2    Agenda2.AddAppointment   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      >d2http://schemas.microsoft.com/expression/blend/2008    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      X TXceed.Wpf.Toolkit, Version=3.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5        N� Title$  AddAppointment��5	       N� 
Background
 �  ��.��5      � .+�5   
   �� $��0,10,0,0q�6   .+�5      �� $��Ajouter un RDV��6   $��48(�6.   $��Center=�6<   $��EucrosiaUPC)�6Y   $
��Bold"�6r   $��0,0,0,23q�6�   ��5      �� 5       �� EndPoint$ 0.5,1&�6*    � MappingMode$ RelativeToBoundingBox=�6;    �� 
StartPoint$ 0.5,0&�6_   .��5      �  � Color$ 	#FF554F43��6'    � Offset$ 0Q�69   � 5      $ 	#FFF7C14D��6'   $ 1Q�69   5      5      � 5      .+�5      �� $��166,0,167,0q�6   .+�5      �� $��Client :��6   $
��Bold"�6/   �� 5      -   5        $��CustomersList_ComboBox��5   s    �� DisplayMemberPath$ Lastname��67    �� SelectedValuePath$ 
CustomerID��6T   ��6   �� 6s   �� 5      $��
Courtier :��6   $
��Bold"�61   �� 5      -   5        $��BrokersList_ComboBox��5   q   $ Lastname��67   $ BrokerID��6T   ��6   �� 6q   �� 5      $��Objet du rendez-vous :��6   $
��Bold"�6=   �� 5      -   5        	 ��Name$	 subjectTextBox��5      ��66   �� *	Subject+
 �� Mode$
 TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . �� 5      $��Jour du RDV :��6   $
��Bold"�64   &   Xceed.Wpf.Toolkit.DateTimePicker  5      -   5          Name$ dtpStartTime��5   *   &   Xceed.Wpf.Toolkit.DateTimeUpDown   Format$ Custom=�6@      FormatString$ dd/MM/yyyy HH:mm��6P   �� 5!      -   5         ��Name$
 Save��5!      $��Enregistrer��6+   $	��Top=�6A   $	��121��6Y   $��150,10,151,5q�6x   ���	#FF5A6A8D���	#FF1DF51D���	#FF21BF4C$
��Bold"�6�   5"      5#      5$      5%      5&      