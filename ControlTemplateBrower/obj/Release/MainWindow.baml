   M S B A M L   `   `   `  ����   ControlTemplateBrower&     ControlTemplateBrower.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -   $	��600��$
��1000��  � WindowStartupLocation$  CenterScreen=� � ShowInTaskbar .  � Title$ WPF模板编辑器��   WindowStyle#���   .��� -    �Name$
 grid�� � ColumnDefinitions �� $
��auto �$	��150���� $
��auto ��� -    ��Name$ clnTxt��$��* � � RowDefinitions �� $��* ��� $��15 �.+��� -    ��Name$ lstTypes��$��0������ .R��� ���� *Name+�� $��1��$��Center=�$��Stretch=�$��5���� -    ��Name$ txtTemplate��$��2��$��12(�$	 �� HorizontalScrollBarVisibility$
	 Auto=�"
 �� VerticalScrollBarVisibility$
 Visible=�$��Stretch=� �� TextWrapping$
 Wrap=����� *Width+ �� ElementName$ clnTxt���� -   $��预览��$��0��$��2��$	��100��$��Right=�$��Bottom=� � Cursor$
 Hand��$��0,0,20,0q�����  �� 
TargetType" ��.R���  ��Name$ bd�� J� Opacity$	 0.7Q�
���iii�$��0q� � UseLayoutRounding .  J� SnapsToDevicePixels . 
�������._��� ��. #��z��#��z�� �� ContentStringFormat �� ContentStringFormat# z #��z��#��z��#��z��# z  �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ bd�� �� Property �@J�Opacity �� Value$ 1Q��� $ bd�� � ��$ 1q�