FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
add - new item alert

This Folder Action handler is triggered whenever items are added to the attached folder.
The script will display an alert containing the number of items added and offering the user
the option to reveal the added items in Finder.

Copyright � 2002�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	� 
 a d d   -   n e w   i t e m   a l e r t 
 
 T h i s   F o l d e r   A c t i o n   h a n d l e r   i s   t r i g g e r e d   w h e n e v e r   i t e m s   a r e   a d d e d   t o   t h e   a t t a c h e d   f o l d e r . 
 T h e   s c r i p t   w i l l   d i s p l a y   a n   a l e r t   c o n t a i n i n g   t h e   n u m b e r   o f   i t e m s   a d d e d   a n d   o f f e r i n g   t h e   u s e r 
 t h e   o p t i o n   t o   r e v e a l   t h e   a d d e d   i t e m s   i n   F i n d e r . 
 
 C o p y r i g h t   �   2 0 0 2  2 0 0 7   A p p l e   I n c . 
 
 Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
 r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e 
 r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o 
 r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g 
 m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e 
 t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e 
 c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s . 
   
  
 l     ��������  ��  ��        l          j     �� �� 0 dialog_timeout    m     ����   9 3 set the amount of time before dialogs auto-answer.     �   f   s e t   t h e   a m o u n t   o f   t i m e   b e f o r e   d i a l o g s   a u t o - a n s w e r .      l     ��������  ��  ��     ��  i        I     ��  
�� .facofgetnull���     alis  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    Q     $  ��  k           O       !   r     " # " n    
 $ % $ 1    
��
�� 
psxp % o    ���� 0 this_folder   # o      ���� 0 device_path   ! m     & &�                                                                                  MACS  alis    \  Tool                       Ч@�H+     -
Finder.app                                                      '�϶��        ����  	                CoreServices    Ч$�      ϶��       -   *   )  .Tool:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  
  T o o l  &System/Library/CoreServices/Finder.app  / ��     ' ( ' l   ��������  ��  ��   (  ) * ) r     + , + m     - - � . .  w w w . a p p l e . c o m , o      ���� 0 hostname   *  / 0 / I   �� 1��
�� .sysoexecTEXT���     TEXT 1 b     2 3 2 m     4 4 � 5 5 d / U s e r s / y u r o k l e / w s / o s x - k i n d l e - n o t e s - s y n c / s c r i p t . r b   3 o    ���� 0 hostname  ��   0  6 7 6 l   ��������  ��  ��   7  8 9 8 l    �� : ;��   :��
		tell application "Finder"			--get the name of the folder			set the folder_name to the name of this_folder		end tell
				-- find out how many new items have been placed in the folder		set the item_count to the number of items in the added_items		--create the alert string		set alert_message to ("Folder Actions Alert:" & return & return) as Unicode text		set alert_message to alert_message & "been placed in the fucking folder " & �data utxt201C� & the device_path & �data utxt201D� & "."		set the alert_message to (the alert_message & return & return & "Would you like to view the added items?")				display dialog the alert_message buttons {"Yes", "No"} default button 2 with icon 1 giving up after dialog_timeout		set the user_choice to the button returned of the result				if user_choice is "Yes" then			tell application "Finder"				--go to the desktop 				activate				--open the folder				open this_folder				--select the items				reveal the added_items			end tell		end if
		
		    ; � < <� 
 	 	 t e l l   a p p l i c a t i o n   " F i n d e r "  	 	 	 - - g e t   t h e   n a m e   o f   t h e   f o l d e r  	 	 	 s e t   t h e   f o l d e r _ n a m e   t o   t h e   n a m e   o f   t h i s _ f o l d e r  	 	 e n d   t e l l 
 	 	  	 	 - -   f i n d   o u t   h o w   m a n y   n e w   i t e m s   h a v e   b e e n   p l a c e d   i n   t h e   f o l d e r  	 	 s e t   t h e   i t e m _ c o u n t   t o   t h e   n u m b e r   o f   i t e m s   i n   t h e   a d d e d _ i t e m s  	 	 - - c r e a t e   t h e   a l e r t   s t r i n g  	 	 s e t   a l e r t _ m e s s a g e   t o   ( " F o l d e r   A c t i o n s   A l e r t : "   &   r e t u r n   &   r e t u r n )   a s   U n i c o d e   t e x t  	 	 s e t   a l e r t _ m e s s a g e   t o   a l e r t _ m e s s a g e   &   " b e e n   p l a c e d   i n   t h e   f u c k i n g   f o l d e r   "   &   � d a t a   u t x t 2 0 1 C �   &   t h e   d e v i c e _ p a t h   &   � d a t a   u t x t 2 0 1 D �   &   " . "  	 	 s e t   t h e   a l e r t _ m e s s a g e   t o   ( t h e   a l e r t _ m e s s a g e   &   r e t u r n   &   r e t u r n   &   " W o u l d   y o u   l i k e   t o   v i e w   t h e   a d d e d   i t e m s ? " )  	 	  	 	 d i s p l a y   d i a l o g   t h e   a l e r t _ m e s s a g e   b u t t o n s   { " Y e s " ,   " N o " }   d e f a u l t   b u t t o n   2   w i t h   i c o n   1   g i v i n g   u p   a f t e r   d i a l o g _ t i m e o u t  	 	 s e t   t h e   u s e r _ c h o i c e   t o   t h e   b u t t o n   r e t u r n e d   o f   t h e   r e s u l t  	 	  	 	 i f   u s e r _ c h o i c e   i s   " Y e s "   t h e n  	 	 	 t e l l   a p p l i c a t i o n   " F i n d e r "  	 	 	 	 - - g o   t o   t h e   d e s k t o p    	 	 	 	 a c t i v a t e  	 	 	 	 - - o p e n   t h e   f o l d e r  	 	 	 	 o p e n   t h i s _ f o l d e r  	 	 	 	 - - s e l e c t   t h e   i t e m s  	 	 	 	 r e v e a l   t h e   a d d e d _ i t e m s  	 	 	 e n d   t e l l  	 	 e n d   i f 
 	 	 
 	 	 9  =�� = l   ��������  ��  ��  ��    R      ������
�� .ascrerr ****      � ****��  ��  ��  ��       �� >�� ?��   > ������ 0 dialog_timeout  
�� .facofgetnull���     alis��  ? �� ���� @ A��
�� .facofgetnull���     alis�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��   @ ���������� 0 this_folder  �� 0 added_items  �� 0 device_path  �� 0 hostname   A  &�� - 4������
�� 
psxp
�� .sysoexecTEXT���     TEXT��  ��  �� % � ��,E�UO�E�O�%j OPW X  hascr  ��ޭ