   M S B A M L   `   `   `  ����P  LControlTemplateBrower, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ControlTemplateBrowerControlTemplateBrower  5          ControlTemplateBrower.App   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      5local#clr-namespace:ControlTemplateBrower     5        �� 	Resources  5       �� Color   EditWindowBG  BtnForeground  WindowStyle �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Padding � RowDefinitions	 � Title 	 BtnBG-   'ControlTemplateBrower.WindowStyleHelper
   CanDragMove   IsCloseActive �� Triggers P� Property P� Value �� ContentStringFormat �� ContentStringFormat ��Name �� Triggers ]� 
Conditions �� Property �� Value �� 
TargetName��%�	  &	        &	 (     &	 K     �� 5   
   $ 	#FE3E3B3A��6   6,   �� 5   
   $ 	#FFEEEEEE��60   �� 5
   
   " �6$   .�5      ��  �@�ShowInTaskbar .  6.   �� 5       � ��# �  6+   �� 5       � ��# �   6+   �� 5       �@�WindowStyle$
 None=�6,   �� 5       � ��$ 17(�6)   �� 5       �@�
ResizeMode$ CanResizeWithGrip=�6+   �� 5       �@�AllowsTransparency . 63   �� 5       � �� 5      �� 5      " �6&   .R�5      �� $ 0,0,5,5��6!   #��z��68   #��z��6d   #��z��6�   $ 2,5,2,2q�6�   ._�5      �� .u�5   "   �  5   &   �� 5   *   $��40 �68   �� 5   *   $��* �68   .+�5   &   �� #��z	 6,   #��z��6N   #���  6t   $��0��6�   #��z��6�   
 . 6�   �� 5   &   
������ $��×��6E   $��25(�6Q   $��0��6_   $��Right=�6l   $
��auto��6�   $	��Top=�6�    . $��0,-5,0,0q�6�   ��5   *   �� 5    .   " ��64   .�5!   2   ��  � ��# �  6O    5"   2   P� 5#   6    �@J�IsMouseOver . . �5$   :   ��  � ��
 �  ��6W   5%   7   5'   /   5)   '   �� 5*   &   $��1��67   $��Stretch=�6D   #��z��6`   #��z��6�   # z 6�   5+   #   5,      5-      5.      50       51      P� 52       �@�
ResizeMode$ CanResizeWithGrip=�60   . �53      ��  � �� 54      �� 55      " �6.   .R�56   "   �� #��z��6)   #��z��6U   #��z��6�   $ 5��6�   $ 5q�6�   ._�57   &   � .+�58   *   �� .u�59   .   �  5:   2   �� 5;   6   $��40 �6D   �� 5<   6   $��* �6D   .+�5>   2   �� #��z	 68   #���  6Z   $��0��6   #��z��6�   
 . 6�   �� 5?   2   
������ $��X��6Q   $��25(�6]   $��0��6k   $��Right=�6x   $
��auto��6�   $��Center=�6�    . $��0,0,5,0q�6�   ��5@   6   �� 5A   :   " ��6@   .�5B   >   ��  � ��# �  6[    5C   >   P� 5D   B    �@J�IsMouseOver . . �5E   F   ��  � ��
 �  ��6c   5F   C   5H   ;   5J   3   �� 5K   2   $��1��6C   #��z��6P   #��z��6�   # z 6�   5L   /   5M   +   �� 5N   *   $ WindowResizeGrip��65   $��Right=�6O   ��.  $y�	Collapsed=�6}   $��Bottom=�6�   5O   '   5P   #    5Q   "   ]� 5R   &    5S   *   �� 5T   .    �@�
ResizeMode$ CanResizeWithGrip=�6N   �� 5U   .    �@�WindowState$ Normal=�6O   ./�5W   *   �� $ WindowResizeGrip��6G    � y�$ Visible=�6e   5X   '   5Z      5\      5]      5_      5b      5c      