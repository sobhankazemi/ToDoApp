   M S B A M L   `   `   `  ���� ?  ;ToDo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ToDoToDo      ToDo.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  localclr-namespace:ToDo  -     � WindowStyle$
  None=� � WindowStartupLocation$ CenterScreen=� � Icon$ Images\todo (2).png�� � 
ResizeMode$ NoResize=� � Title$
 ToDo��$	��700��$	��500�����#1E1321.���  � RowDefinitions �� $��40 ��� $��* �.+�� $��0��.+���  �� Orientation$ 
Horizontal=�.+��� -   $	��100��$	��100��$��10,0,0,0q�$
��Home������  �� 
TargetType" ��.���  �� Property � ��	 �� Value	 �#DC85FF��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  �@�Cursor$
	 Hand����  � ��$	 SemiBold"���  � ��	 �#1E1321
 �� Triggers
 P�  P� Property �@J�IsMouseOver P� Value . . ���  � ��	 �#F4ACFB����  �� 
TargetType" ��.R���  �� CornerRadius$ 50��#��z��._��� $��Center=�$��Center=��� -    ��Name$ AddTask��$	��100��$	��100��$��10,0,0,0q�$��Add Task������ " ��.���  � ��	 �#DC85FF��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  �@�Cursor$
	 Hand����  � ��$	 SemiBold"���  � ��	 �#1E1321
 P�  �@J�IsMouseOver . . ���  � ��	 �#F4ACFB���� " ��.R��� $ 50��#��z��._��� $��Center=�$��Center=��� -   $ btnExit��.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�
���   ����� " ��.���  � ��
	 �  ����  � ��$	 
250,-5,0,0q���  �@�Cursor$
	 Hand������ " ��.R��� $��20��$��20��$ 50��#��z��._��� $��Center=�$��Center=��� -   $ btnMinimize��.��  $ WindowMinimize=�$��-6,0,0,0q����� " ��.���  � ��
	 � �����  � ��$	 
-80,-5,0,0q���  �@�Cursor$
	 Hand������ " ��.R��� $��20��$��20��$ 50��#��z��._��� $��Center=�$��Center=�� -    �Name$ 
HomeWindow��$��2��$y�Visible=�.+��� .+��� $ 
Horizontal=�.+��� -    ��Name$	 Day��$��
15,5,0,600q�$��60(�$��Center=����#1E1321
�������$��0q�$��SemiBold"�$��Fonts\#Dosis)� �� 
IsReadOnly . �� -   $ Month��$��	0,5,0,620q�$��20(�$��Center=����#1E1321
�������$��0q�$��Fonts\#Dosis)�$��SemiBold"� . �� -	   $
 year��$��-30,5,0,570q�$��20(�$��Center=����#1E1321
�������$��0q�$��SemiBold"�$��Fonts\#Dosis)� . �� .+��� -
    ��Name$ Monday��$��40,-575,380,560q����� " ��.���  � ��	 �#D6D6D6��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 M���� -   $ Tuesday��$��113,-585,320,560q����� " ��.���  � ��	 �#D6D6D6��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 T���� -   $ 	Wednesday��$��188,-585,260,560q����� " ��.���  � ��	 �#D6D6D6��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 W���� -   $ Thursday��$��260,-585,200,560q����� " ��.���  � ��	 �#D6D6D6��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 T���� -   $ Friday��$��326,-585,150,560q����� " ��.���  � ��	 �#D6D6D6��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 F���� -   $ Saturday��$��388,-585,90,560q����� " ��.���  � ��	 �#D6D6D6��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 S���� -   $ Sunday��$��448,-585,5,560q����� " ��.���  � ��	 �#D6D6D6��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 S���� $��20,140,20,12q����#B8F24B$ 12��._��� .+�&   System.Windows.Controls.DataGrid  -     Name$ Tasks��$��5q�$��0q�   HeadersVisibility$
 None=�   GridLinesVisibility$
 None=�$��Fonts/#Dosis)����#B8F24B$��15(�   CanUserAddRows .     AutoGenerateColumns .  {�.    RowStyle �� )  #System.Windows.Controls.DataGridRow"  .���  � ��$	 30����  � ��	 �#B8F24B��  � ��$	 2q���  � ��$	 Center=���  � ��	 �#272727��  � ��$	 0,3,0,0q���  � ��	 �� "  .R���  ��Name$ 
DGR_Border��#��z��#��z��#��z�� J� SnapsToDevicePixels . $ 5��._�?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid   � ColumnDefinitions �� $
��Auto ��� $��* � �� $��* ��� $
��Auto �.+�?  9System.Windows.Controls.Primitives.DataGridCellsPresenter  $��1��   
ItemsPanel#��z # z A  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter  $��1��$��1��   DetailsVisibility#y�z $    SelectiveScrollingOrientation  �� *AreRowDetailsFrozen+;  5System.Windows.Controls.SelectiveScrollingOrientation!   Vertical" �� ConverterParameter#" Z! ##   RowDetailsScrollingConverter$ �� 	Converter#$ Z# % �� RelativeSource% �� & �� AncestorType"&  :  4System.Windows.Controls.Primitives.DataGridRowHeader  $��2��$  Vertical=�y��� *HeadersVisibility+7	  1System.Windows.Controls.DataGridHeadersVisibility
' 	  Row#" Z' !(   HeadersVisibilityConverter#$ Z( % �� "&  )   Columns) 1
  +MaterialDesignThemes.Wpf.DataGridTextColumn
  ,  &System.Windows.Controls.DataGridColumn*   Width5  /System.Windows.Controls.DataGridLengthConverter$	* 205 +   
IsReadOnly+ . 1  +System.Windows.Controls.DataGridBoundColumn,   Binding, �� *Task1+0  *System.Windows.Controls.DataGridTextColumn  $* 55 + . , �� *Start+4  .System.Windows.Controls.DataGridTemplateColumn  $* SizeToCells -   CellTemplate- �� .R�  $ Arrow=�  $* 80 + . , �� *Finish+  - �� Hasdone��.R��� . ��Name$. HasDone��-   / d� 	IsChecked/ �� 0 �� Path$0 HasDone����� " ��.���  � ��	 �#4D4848��  � ��	 �#D2B4DE��  � ��$		 1.5q�
 P�  �@J�IsMouseOver . . ���  � ��	 �#21A276  $* 30 + . - �� 1 �� DataType$
1 null��.R�  2  Name$2 	DeleteRow��-   $ DeleteAlert=����� "  .���  �@�Cursor$
	 Hand����  � ��	 �#4D4848
 P�  �@J�IsMouseOver . . ���  � ��
	 �   �  $* SizeToCells + . - �� .R�  $2 EditRow��-   $ NoteEdit=����� "  .���  �@�Cursor$
	 Hand����  � ��	 �#4D4848
 P�  �@J�IsMouseOver . . ���  � ��
	 �   �3   	CellStyle3 �� *  $System.Windows.Controls.DataGridCell"  .���  � ��$	 center=���  � ��$	 0q���  �@�FocusVisualStyle	 Z� 
 P�  �@ 
IsSelected . . ���  � ��	 Z� ��  � ��	 Z� ��  � ��	 �#4D4848� -   $ AddTaskWindow��$��1��$y�Hidden=�.+��� .+��� .+��� $��Free Your Mind ��$��Fonts\#Dosis)����#F06477$��40(�$��DemiBold"�$��	15,20,0,0q��� -   $
 Task��$��15(�$��DemiBold"�$��Fonts\#Dosis)�$��
20,50,30,0q�$��0,0,0,2q����#999696$��0,0,0,5q����#F06477)  #MaterialDesignThemes.Wpf.HintAssist4   Hint$
4 Task�� %  !MaterialDesignFloatingHintTextBox#��[  �� -   $ Error��$��Fonts\#Dosis)�$��15(�$��DemiBold"����#81ED7D$)��#The maximum length is 28 characters��$y�Hidden=�$��20,0,0,0q��� $ 
Horizontal=�.+�)  #MaterialDesignThemes.Wpf.TimePicker  -   5  Name$5 Start��$��15(�$��DemiBold"�$	��200��$��Fonts\#Dosis)�$��
20,50,30,0q� ( $MaterialDesignFloatingHintTimePicker#��[ $��0,0,0,2q����#999696$��0,0,0,5q����#F06477$4 Start��  -   $5 Finish��$��15(�$��DemiBold"�$	��200��$��Fonts\#Dosis)�$��
20,50,30,0q�$��0,0,0,2q����#999696$��0,0,0,5q����#F06477$4 Finish��#��[ �� $ 
Horizontal=�.+��� -   $ 	btnCancel��$	��130��$��30��$��110,100,0,0q�$��Cancel������ " ��.���  � ��	 �#1E1321��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  �@�Cursor$
	 Hand����  � ��$	 SemiBold"���  � ��	 �#807676��  � ��$	 0q�
 P�  �@J�IsMouseOver . . ���  � ��	 �#E68787�� -   $ btnSave��$	��130��$��30��$
��Save������ " ��.���  � ��	 �#F32C2C��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  �@�Cursor$
	 Hand����  � ��$	 SemiBold"���  � ��$	 0q���  � ��	 �#8E8E8D��  � ��$	 
 0,100,0,0q��� $ 
Horizontal=�.+��� $	��150��$��30��$��-25,130,0,0q����� " ��.���  � ��	 �#C9E78D��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  � ��$	 SemiBold"���  � ��	 �#1E1321���� " ��.R��� $ 15��#��z��._��� $��Center=�$��Center=��� $	��150��$��30��$��250,130,0,0q����� " ��.���  � ��	 �#C9E78D��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  � ��$	 SemiBold"���  � ��	 �#1E1321���� " ��.R��� $ 15��#��z��._��� $��Center=�$��Center=��� $ 
Horizontal=�.+��� $	��200��$��30��$��
-27,10,0,0q����� " ��.���  � ��	 �#F1F57A��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  � ��$	 SemiBold"���  � ��	 �#1E1321���� " ��.R��� $ 15��#��z��._��� $��Center=�$��Center=��� $	��200��$��30��$��
150,10,0,0q����� " ��.���  � ��	 �#F1F57A��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  � ��$	 SemiBold"���  � ��	 �#1E1321���� " ��.R��� $ 15��#��z��._��� $��Center=�$��Center=��� $ 
Horizontal=�.+��� $	��250��$��30��$��
-40,10,0,0q����� " ��.���  � ��	 �#F5B27A��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  � ��$	 SemiBold"���  � ��	 �#1E1321���� " ��.R��� $ 15��#��z��._��� $��Center=�$��Center=��� $	��250��$��30��$��	80,10,0,0q����� " ��.���  � ��	 �#F5B27A��  � ��$	 Fonts\#Dosis)���  � ��$	 20(���  � ��$	 Center=���  � ��$	 SemiBold"���  � ��	 �#1E1321���� " ��.R��� $ 15��#��z��._��� $��Center=�$��Center=�