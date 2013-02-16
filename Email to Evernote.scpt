FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

Advanced Apple Mail to Evernote
Version 1.0
https://github.com/scouture

// ATTRIBUTION
Forked from version 2.04 of "Apple Mail to Evernote" script by Veritrope.com
http://veritrope.com/code/apple-mail-to-evernote/

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// IMPORTANT LINKS:
-- Original Project Page: http://veritrope.com/code/apple-mail-to-evernote
-- GROWL (App Store Version) (Optional): http://bit.ly/GrowlApp
-- terminal-notifier (Optional): https://github.com/alloy/terminal-notifier/downloads
-- FastScripts (Optional): http://bit.ly/FastScripts

// REQUIREMENTS:
THIS SCRIPT REQUIRES LION OR GREATER (OS X 10.7+) TO RUN WITHOUT MODIFICATION

// INSTALLATION:  
-- You can save this script to /Library/Scripts/Mail Scripts and launch it using the system-wide script menu from the Mac OS X menu bar. (The script menu can be activated using the AppleScript Utility application). 
-- To use, highlight the email messages you want to archive into Evernote and run this script file;
-- The "User Switches" below allow you to customize the way this script works.
-- You can save this script as a service and trigger it with a keyboard shortcut.

	(Optional but recommended)
	Easier Keyboard Shortcut with FastScripts
	-- Download and Install FastScripts here: 
	-- http://bit.ly/FastScripts
	Assign to Alfred keyword
	-- Download and install Alfred here:
	-- http://www.alfredapp.com
	

// CHANGELOG:
    	* 1.00 (February 16, 2013) 
	- Fork from v.2.0.4 of "Apple Mail to Evernote" script by Veritrope.com
	- Made GROWL notifications optional
	- Added OSX notifications with "terminal-notifier"
	- Added the ability to turn off notifications
	- Added mail archiving and flagging
	- Code cleanup
     � 	 	� 
 
 A d v a n c e d   A p p l e   M a i l   t o   E v e r n o t e 
 V e r s i o n   1 . 0 
 h t t p s : / / g i t h u b . c o m / s c o u t u r e 
 
 / /   A T T R I B U T I O N 
 F o r k e d   f r o m   v e r s i o n   2 . 0 4   o f   " A p p l e   M a i l   t o   E v e r n o t e "   s c r i p t   b y   V e r i t r o p e . c o m 
 h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e /  
  
 / /   T E R M S   O F   U S E :  
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
 / /   I M P O R T A N T   L I N K S :  
 - -   O r i g i n a l   P r o j e c t   P a g e :   h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e  
 - -   G R O W L   ( A p p   S t o r e   V e r s i o n )   ( O p t i o n a l ) :   h t t p : / / b i t . l y / G r o w l A p p  
 - -   t e r m i n a l - n o t i f i e r   ( O p t i o n a l ) :   h t t p s : / / g i t h u b . c o m / a l l o y / t e r m i n a l - n o t i f i e r / d o w n l o a d s  
 - -   F a s t S c r i p t s   ( O p t i o n a l ) :   h t t p : / / b i t . l y / F a s t S c r i p t s  
  
 / /   R E Q U I R E M E N T S :  
 T H I S   S C R I P T   R E Q U I R E S   L I O N   O R   G R E A T E R   ( O S   X   1 0 . 7 + )   T O   R U N   W I T H O U T   M O D I F I C A T I O N  
  
 / /   I N S T A L L A T I O N :      
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   t o   / L i b r a r y / S c r i p t s / M a i l   S c r i p t s   a n d   l a u n c h   i t   u s i n g   t h e   s y s t e m - w i d e   s c r i p t   m e n u   f r o m   t h e   M a c   O S   X   m e n u   b a r .   ( T h e   s c r i p t   m e n u   c a n   b e   a c t i v a t e d   u s i n g   t h e   A p p l e S c r i p t   U t i l i t y   a p p l i c a t i o n ) .    
 - -   T o   u s e ,   h i g h l i g h t   t h e   e m a i l   m e s s a g e s   y o u   w a n t   t o   a r c h i v e   i n t o   E v e r n o t e   a n d   r u n   t h i s   s c r i p t   f i l e ;  
 - -   T h e   " U s e r   S w i t c h e s "   b e l o w   a l l o w   y o u   t o   c u s t o m i z e   t h e   w a y   t h i s   s c r i p t   w o r k s .  
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   a s   a   s e r v i c e   a n d   t r i g g e r   i t   w i t h   a   k e y b o a r d   s h o r t c u t .  
  
 	 ( O p t i o n a l   b u t   r e c o m m e n d e d )  
 	 E a s i e r   K e y b o a r d   S h o r t c u t   w i t h   F a s t S c r i p t s  
 	 - -   D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   h e r e :    
 	 - -   h t t p : / / b i t . l y / F a s t S c r i p t s 
 	 A s s i g n   t o   A l f r e d   k e y w o r d 
 	 - -   D o w n l o a d   a n d   i n s t a l l   A l f r e d   h e r e : 
 	 - -   h t t p : / / w w w . a l f r e d a p p . c o m 
 	  
  
 / /   C H A N G E L O G :  
         	 *   1 . 0 0   ( F e b r u a r y   1 6 ,   2 0 1 3 )    
 	 -   F o r k   f r o m   v . 2 . 0 . 4   o f   " A p p l e   M a i l   t o   E v e r n o t e "   s c r i p t   b y   V e r i t r o p e . c o m 
 	 -   M a d e   G R O W L   n o t i f i c a t i o n s   o p t i o n a l 
 	 -   A d d e d   O S X   n o t i f i c a t i o n s   w i t h   " t e r m i n a l - n o t i f i e r " 
 	 -   A d d e d   t h e   a b i l i t y   t o   t u r n   o f f   n o t i f i c a t i o n s 
 	 -   A d d e d   m a i l   a r c h i v i n g   a n d   f l a g g i n g 
 	 -   C o d e   c l e a n u p  
   
  
 l     ��������  ��  ��        l      ��  ��    h b 
======================================
// USER SWITCHES 
======================================
     �   �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U S E R   S W I T C H E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        l     ��  ��    H B SET THIS TO "OFF" IF YOU WANT TO SKIP THE TAGGING/NOTEBOOK DIALOG     �   �   S E T   T H I S   T O   " O F F "   I F   Y O U   W A N T   T O   S K I P   T H E   T A G G I N G / N O T E B O O K   D I A L O G      l     ��  ��    9 3 AND SEND ITEMS DIRECTLY INTO YOUR DEFAULT NOTEBOOK     �   f   A N D   S E N D   I T E M S   D I R E C T L Y   I N T O   Y O U R   D E F A U L T   N O T E B O O K      j     �� ��  0 tagging_switch tagging_Switch  m          � ! !  O N   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & 6 0 IF YOU'VE DISABLED THE TAGGING/NOTEBOOK DIALOG,    ' � ( ( `   I F   Y O U ' V E   D I S A B L E D   T H E   T A G G I N G / N O T E B O O K   D I A L O G , %  ) * ) l     �� + ,��   + = 7 TYPE THE NAME OF THE NOTEBOOK YOU WANT TO SEND ITEM TO    , � - - n   T Y P E   T H E   N A M E   O F   T H E   N O T E B O O K   Y O U   W A N T   T O   S E N D   I T E M   T O *  . / . l     �� 0 1��   0 < 6 BETWEEN THE QUOTES IF IT ISN'T YOUR DEFAULT NOTEBOOK.    1 � 2 2 l   B E T W E E N   T H E   Q U O T E S   I F   I T   I S N ' T   Y O U R   D E F A U L T   N O T E B O O K . /  3 4 3 l     �� 5 6��   5   (EMPTY SENDS TO DEFAULT)    6 � 7 7 2   ( E M P T Y   S E N D S   T O   D E F A U L T ) 4  8 9 8 j    �� :�� 0 
evnotebook 
EVnotebook : m     ; ; � < <   9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A A ; IF TAGGING IS ON AND YOU'D LIKE TO CHANGE THE DEFAULT TAG,    B � C C v   I F   T A G G I N G   I S   O N   A N D   Y O U ' D   L I K E   T O   C H A N G E   T H E   D E F A U L T   T A G , @  D E D l     �� F G��   F > 8 TYPE IT BETWEEN THE QUOTES ("Email Message" IS DEFAULT)    G � H H p   T Y P E   I T   B E T W E E N   T H E   Q U O T E S   ( " E m a i l   M e s s a g e "   I S   D E F A U L T ) E  I J I j    �� K�� 0 
defaulttag 
defaultTag K m     L L � M M   J  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R R L SET THIS "ON" IF YOU WISH TO ACTIVATE ARCHIVING IN '<year> Archive' MAILBOX    S � T T �   S E T   T H I S   " O N "   I F   Y O U   W I S H   T O   A C T I V A T E   A R C H I V I N G   I N   ' < y e a r >   A r c h i v e '   M A I L B O X Q  U V U j   	 �� W�� 0 	archiving   W m   	 
 X X � Y Y  O N V  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ ; 5 SET THIS "ON" IF YOU WISH TO FLAG PROCESSED MESSAGES    _ � ` ` j   S E T   T H I S   " O N "   I F   Y O U   W I S H   T O   F L A G   P R O C E S S E D   M E S S A G E S ]  a b a j    �� c�� 0 flagging   c m     d d � e e  O N b  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j � { SET THIS TO "GROWL", "OSX" OR "OFF". FOR OSX NOTIFICATIONS, YOU MUST INSTALL 'terminial-notifier.app' AND SET COMMAND PATH    k � l l �   S E T   T H I S   T O   " G R O W L " ,   " O S X "   O R   " O F F " .   F O R   O S X   N O T I F I C A T I O N S ,   Y O U   M U S T   I N S T A L L   ' t e r m i n i a l - n o t i f i e r . a p p '   A N D   S E T   C O M M A N D   P A T H i  m n m j    �� o�� 0 notifications   o m     p p � q q  O S X n  r s r l      �� t u��   t k e 
======================================
// OTHER PROPERTIES 
======================================
    u � v v �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   O T H E R   P R O P E R T I E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 s  w x w l     ��������  ��  ��   x  y z y l     �� { |��   {   Global properties    | � } } $   G l o b a l   p r o p e r t i e s z  ~  ~ j    �� ��� 0 successcount successCount � m    ����     � � � j    �� ��� 0 growl_running growl_Running � m     � � � � � 
 f a l s e �  � � � j    �� ��� 80 osxnotifications_available osxNotifications_Available � m     � � � � � 
 f a l s e �  � � � j    �� ��� 0 mytitle myTitle � m     � � � � �  M a i l   I t e m �  � � � j     #�� ��� 0 themessages theMessages � J     "����   �  � � � j   $ (�� ��� 0 thismessage thisMessage � m   $ ' � � � � �   �  � � � j   ) -�� ��� 0 itemnum itemNum � m   ) , � � � � �  0 �  � � � j   . 2�� ��� 0 attnum attNum � m   . 1 � � � � �  0 �  � � � j   3 7�� ��� 0 errnum errNum � m   3 6 � � � � �  0 �  � � � j   8 <�� ��� 0 usertag userTag � m   8 ; � � � � �   �  � � � j   = B�� ��� 0 evtag EVTag � J   = ?����   �  � � � j   C I�� ��� 0 	multihtml 	multiHTML � m   C F � � � � �   �  � � � j   J O�� ���  0 thesourceitems theSourceItems � J   J L����   �  � � � j   P V�� ��� 0 mysource mySource � m   P S � � � � �   �  � � � j   W ]�� ���  0 decode_success decode_Success � m   W Z � � � � �   �  � � � j   ^ d�� ��� 0 	finalhtml 	finalHTML � m   ^ a � � � � �   �  � � � j   e k�� ��� 0 	myheaders 	myHeaders � m   e h � � � � �   �  � � � j   l q�� ��� *0 mysource_paragraphs mysource_Paragraphs � J   l n����   �  � � � j   r x�� ��� 0 
base64_raw 
base64_Raw � m   r u � � � � �   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Archive properties    � � � � &   A r c h i v e   p r o p e r t i e s �  � � � j   y �� ��� 0 archive_mailbox_label   � m   y | � � � � �  A r c h i v e �  � � � j   � ��� ��� 0 archive_flag   � m   � �����  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Notification properties    � � � � 0   N o t i f i c a t i o n   p r o p e r t i e s �  � � � j   � ��� ��� 0 terminal_notifier_path   � m   � � � � � � � � / u s r / l o c a l / b i n / t e r m i n a l - n o t i f i e r . a p p / C o n t e n t s / M a c O S / t e r m i n a l - n o t i f i e r �  � � � j   � ��� ��� *0 notificationappname notificationAppName � m   � � � � � � � , A p p l e   M a i l   t o   E v e r n o t e �  � � � j   � ��� ��� (0 notificationaction notificationAction � m   � � � � � � �  c o m . a p p l e . M a i l �  � � � j   � ��� ��� $0 notificationicon notificationIcon � m   � � � � � � �  M a i l �  � � � l     ��������  ��  ��   �  �  � l     ��������  ��  ��     l      ����   g a 
======================================
// MAIN PROGRAM 
======================================
    � �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
  l     ��������  ��  ��   	 l     ��
��  
  RESET ITEMS    �  R E S E T   I T E M S	  l    ���� r      m      �  0 o      ���� 0 successcount successCount��  ��    l   ���� r     m    	 �  0 o      ���� 0 errnum errNum��  ��    l   ���� r     m       �!!   n     "#" 1    ��
�� 
txdl# 1    ��
�� 
ascr��  ��   $%$ l     ��������  ��  ��  % &'& l  "(����( Q   ")*+) k    �,, -.- l   ��/0��  /   Check for Growl   0 �11     C h e c k   f o r   G r o w l. 232 Z    ,45����4 =    676 o    ���� 0 notifications  7 m    88 �99 
 G R O W L5 k   # (:: ;<; l  # #��=>��  =   Activate Grown   > �??    A c t i v a t e   G r o w n< @��@ n  # (ABA I   $ (�������� 0 growl_check Growl_Check��  ��  B  f   # $��  ��  ��  3 CDC l  - -��������  ��  ��  D EFE l  - -��GH��  G   Set up activites   H �II "   S e t   u p   a c t i v i t e sF JKJ n  - 2LML I   . 2�������� 0 
item_check 
item_Check��  ��  M  f   - .K NON l  3 3����~��  �  �~  O PQP l  3 3�}RS�}  R "  Check for selected messages   S �TT 8   C h e c k   f o r   s e l e c t e d   m e s s a g e sQ UVU Z   3 oWX�|YW >  3 ;Z[Z o   3 8�{�{ 0 themessages theMessages[ J   8 :�z�z  X k   > e\\ ]^] l  > >�y�x�w�y  �x  �w  ^ _`_ l  > >�vab�v  a   Get messages count   b �cc &   G e t   m e s s a g e s   c o u n t` ded n  > Hfgf I   ? H�uh�t�u 0 
item_count 
item_Counth i�si o   ? D�r�r 0 themessages theMessages�s  �t  g  f   > ?e jkj l  I I�q�p�o�q  �p  �o  k lml l  I I�nno�n  n #  Announce the export of items   o �pp :   A n n o u n c e   t h e   e x p o r t   o f   i t e m sm qrq n  I Xsts I   J X�mu�l�m ,0 process_notification process_Notificationu vwv o   J O�k�k 0 itemnum itemNumw x�jx o   O T�i�i 0 attnum attNum�j  �l  t  f   I Jr yzy l  Y Y�h�g�f�h  �g  �f  z {|{ l  Y Y�e}~�e  } $  Process mail items for export   ~ � <   P r o c e s s   m a i l   i t e m s   f o r   e x p o r t| ��� n  Y c��� I   Z c�d��c�d 0 mail_process mail_Process� ��b� o   Z _�a�a 0 themessages theMessages�b  �c  �  f   Y Z� ��`� l  d d�_�^�]�_  �^  �]  �`  �|  Y k   h o�� ��� l  h h�\���\  �   No messages selected   � ��� *   N o   m e s s a g e s   s e l e c t e d� ��[� r   h o��� m   h i�Z�Z��� o      �Y�Y 0 successcount successCount�[  V ��� l  p p�X�W�V�X  �W  �V  � ��� l  p p�U���U  �    Show results notification   � ��� 4   S h o w   r e s u l t s   n o t i f i c a t i o n� ��� n  p ��� I   q �T��S�T 00 processed_notification processed_Notification� ��� o   q v�R�R 0 successcount successCount� ��Q� o   v {�P�P 0 errnum errNum�Q  �S  �  f   p q� ��� l  � ��O�N�M�O  �N  �M  � ��L� l  � ��K���K  �   Error handling   � ���    E r r o r   h a n d l i n g�L  * R      �J��
�J .ascrerr ****      � ****� o      �I�I 0 errtext errText� �H��G
�H 
errn� o      �F�F 0 errnum errNum�G  + Z   �"����E� =  � ���� o   � ��D�D 0 growl_running growl_Running� m   � ��C
�C boovtrue� k   � ��� ��� l  � ��B�A�@�B  �A  �@  � ��� Z   � ����?�� =  � ���� o   � ��>�> 0 errnum errNum� m   � ��=�=��� k   � ��� ��� l  � ��<�;�:�<  �;  �:  � ��� l  � ��9���9  � &   Failure notification for cancel   � ��� @   F a i l u r e   n o t i f i c a t i o n   f o r   c a n c e l� ��� I   � ��8��7�8 0 notification  � ��� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   � ��� ���  U s e r   C a n c e l l e d� ��� m   � ��� ��� " F a i l e d   t o   e x p o r t !� ��� o   � ��6�6 *0 notificationappname notificationAppName� ��� o   � ��5�5 (0 notificationaction notificationAction� ��4� o   � ��3�3 $0 notificationicon notificationIcon�4  �7  � ��2� l  � ��1�0�/�1  �0  �/  �2  �?  � k   � ��� ��� l  � ��.�-�,�.  �-  �,  � ��� l  � ��+���+  � %  Failure notification for error   � ��� >   F a i l u r e   n o t i f i c a t i o n   f o r   e r r o r� ��*� I   � ��)��(�) 0 notification  � ��� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   � ��� ���  I m p o r t   F a i l u r e� ��� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� " F a i l e d   t o   e x p o r t  � o   � ��'
�' 
ret � o   � ��&�& 0 mytitle myTitle� m   � ��� ��� > "     d u e   t o   t h e   f o l l o w i n g   e r r o r :  � o   � ��%
�% 
ret � o   � ��$�$ 0 errtext errText� ��� o   � ��#�# *0 notificationappname notificationAppName� ��� o   � ��"�" (0 notificationaction notificationAction� ��!� o   � �� �  $0 notificationicon notificationIcon�!  �(  �*  � ��� l  � �����  �  �  � ��� l  � �����  � %  Non notification error message   � �   >   N o n   n o t i f i c a t i o n   e r r o r   m e s s a g e�  �  F   � =  � � o   � ��� 0 growl_running growl_Running m   � ��
� boovfals =  � o   ��� 80 osxnotifications_available osxNotifications_Available m  �
� boovfals 	�	 I �

� .sysodlogaskr        TEXT
 b   b   b   m   � . I t e m   F a i l e d   t o   I m p o r t :   o  �� 0 errnum errNum o  �
� 
ret  o  �� 0 errtext errText ��
� 
disp m  ��  �  �  �E  ��  ��  '  l     ����  �  �    l      ��   s m 
======================================
// PREPARATORY SUBROUTINES 
=======================================
    � �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R E P A R A T O R Y   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
  l     �
�	��
  �	  �    l     � !�      App detect   ! �""    A p p   d e t e c t #$# i   � �%&% I      �'�� 0 appisrunning appIsRunning' (�( o      �� 0 appname appName�  �  & O    )*) E    +,+ l   	-��- n    	./. 1    	� 
�  
pnam/ 2   ��
�� 
prcs�  �  , o   	 
���� 0 appname appName* m     00�                                                                                  sevs  alis    z  OS X                       ��V�H+     NSystem Events.app                                               5��^Q�        ����  	                CoreServices    ��H�      �^5�       N   H   G  5OS X:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  O S   X  -System/Library/CoreServices/System Events.app   / ��  $ 121 l     ��������  ��  ��  2 343 l     ��56��  5   Set up activities   6 �77 $   S e t   u p   a c t i v i t i e s4 898 i   � �:;: I      �������� 0 
item_check 
item_Check��  ��  ; k     "<< =>= r     ?@? l    A����A I    ��B��
�� .earsffdralis        afdrB m     ��
�� afdrcusr��  ��  ��  @ o      ���� 0 mypath myPath> C��C O    "DED Q    !FG��F r    HIH 1    ��
�� 
slctI o      ���� 0 themessages theMessagesG R      ������
�� .ascrerr ****      � ****��  ��  ��  E m    	JJ�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  ��  9 KLK l     ��������  ��  ��  L MNM l     ��OP��  O ) # Get count of items and attachments   P �QQ F   G e t   c o u n t   o f   i t e m s   a n d   a t t a c h m e n t sN RSR i   � �TUT I      ��V���� 0 
item_count 
item_CountV W��W o      ���� 0 themessages theMessages��  ��  U O     AXYX k    @ZZ [\[ r    ]^] I   	��_��
�� .corecnte****       ****_ o    ���� 0 themessages theMessages��  ^ o      ���� 0 itemnum itemNum\ `a` r    bcb m    ����  c o      ���� 0 attnum attNuma d��d X    @e��fe r   ( ;ghg [   ( 5iji o   ( -���� 0 attnum attNumj l  - 4k����k I  - 4��l��
�� .corecnte****       ****l n   - 0mnm m   . 0��
�� 
attcn o   - .���� 0 
themessage 
theMessage��  ��  ��  h o      ���� 0 attnum attNum�� 0 
themessage 
theMessagef o    ���� 0 themessages theMessages��  Y m     oo�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  S pqp l     ��������  ��  ��  q rsr l      ��tu��  t { u 
======================================
// TAGGING AND NOTEBOOK SUBROUTINES
=======================================
   u �vv �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   T A G G I N G   A N D   N O T E B O O K   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
s wxw l     ��������  ��  ��  x yzy l     ��{|��  { , & Tagging and notebook selection dialog   | �}} L   T a g g i n g   a n d   n o t e b o o k   s e l e c t i o n   d i a l o gz ~~ i   � ���� I      ��������  0 tagging_dialog tagging_Dialog��  ��  � k     ��� ��� Q     [���� k    J�� ��� I   ,����
�� .sysodlogaskr        TEXT� b    ��� m    �� ���  � l 	  ������ m    �� ��� � P l e a s e   E n t e r   Y o u r   T a g s   B e l o w : 
 ( M u l t i p l e   T a g s   S e p a r a t e d   B y   C o m m a s )��  ��  � ����
�� 
appr� m    �� ��� Z V e r i t r o p e . c o m   |   A p p l e   M a i l   t o   E v e r n o t e   E x p o r t� ����
�� 
dtxt� o   	 ���� 0 
defaulttag 
defaultTag� ����
�� 
btns� J    �� ��� m    �� ��� 4 C r e a t e   i n   D e f a u l t   N o t e b o o k� ��� m    �� ��� 2 S e l e c t   N o t e b o o k   f r o m   L i s t� ���� m    �� ���  C a n c e l��  � ����
�� 
dflt� m    �� ��� 4 C r e a t e   i n   D e f a u l t   N o t e b o o k� ����
�� 
cbtn� l 	  ������ m    �� ���  C a n c e l��  ��  � �����
�� 
disp� I   &����
�� .sysorpthalis        TEXT� m    �� ���  E v e r n o t e . i c n s� �����
�� 
in B� l   "������ I   "�����
�� .earsffdralis        afdr� m    ���                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  � ��� r   - 2��� l  - 0������ 1   - 0��
�� 
rslt��  ��  � o      ���� 0 dialogresult  � ��� r   3 :��� n   3 8��� 1   4 8��
�� 
ttxt� o   3 4���� 0 dialogresult  � o      ���� 0 	userinput 	userInput� ��� r   ; B��� n   ; @��� 1   < @��
�� 
bhit� o   ; <���� 0 dialogresult  � o      ���� 0 	buttonsel 	ButtonSel� ���� r   C J��� J   C H�� ���� m   C F�� ���  ,��  � o      ���� 0 	thedelims 	theDelims��  � R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ���� ���  � r   R [��� m   R U������� o      ���� 0 errnum errNum� ��� l  \ \��������  ��  ��  � ��� l  \ \������  �   Assemble tag list   � ��� $   A s s e m b l e   t a g   l i s t� ��� r   \ e��� n  \ c��� I   ] c������� 0 tag_list Tag_List� ��� o   ] ^���� 0 	userinput 	userInput� ���� o   ^ _���� 0 	thedelims 	theDelims��  ��  �  f   \ ]� o      ���� 0 thetags theTags� ��� l  f f��������  ��  ��  � ��� l  f f������  � / ) Reset, final check and formating of tags   � ��� R   R e s e t ,   f i n a l   c h e c k   a n d   f o r m a t i n g   o f   t a g s� ��� r   f n��� J   f h����  � o      ���� 0 evtag EVTag� ��� r   o {��� n  o u��� I   p u������� 0 	tag_check 	Tag_Check� ���� o   p q���� 0 thetags theTags��  ��  �  f   o p� o      ���� 0 evtag EVTag� ��� l  | |��������  ��  ��  � ��� l  | |��� ��  �   Select Notebook     �     S e l e c t   N o t e b o o k� �� Z  | ����� =  | � o   | }���� 0 	buttonsel 	ButtonSel m   } � � 2 S e l e c t   N o t e b o o k   f r o m   L i s t r   � �	
	 n  � � I   � ���~�}� 0 notebook_list Notebook_List�~  �}    f   � �
 o      �|�| 0 
evnotebook 
EVnotebook��  ��  ��    l     �{�z�y�{  �z  �y    l     �x�x   &   Get Evernote's default Notebook    � @   G e t   E v e r n o t e ' s   d e f a u l t   N o t e b o o k  i   � � I      �w�v�u�w $0 default_notebook default_Notebook�v  �u   O     0 k    /  r     6     2    �t
�t 
EVnb  =   !"! 1   	 �s
�s 
EVnd" m    �r
�r boovtrue o      �q�q *0 get_defaultnotebook get_defaultNotebook #�p# Z    /$%�o�n$ =   &'& o    �m�m 0 
evnotebook 
EVnotebook' m    (( �))  % r    +*+* c    %,-, n    #./. 1   ! #�l
�l 
pnam/ l   !0�k�j0 n    !121 4    !�i3
�i 
cobj3 m     �h�h 2 o    �g�g *0 get_defaultnotebook get_defaultNotebook�k  �j  - m   # $�f
�f 
ctxt+ o      �e�e 0 
evnotebook 
EVnotebook�o  �n  �p   m     44�                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��   565 l     �d�c�b�d  �c  �b  6 787 l     �a9:�a  9   Tag selection subroutine   : �;; 2   T a g   s e l e c t i o n   s u b r o u t i n e8 <=< i   � �>?> I      �`@�_�` 0 tag_list Tag_List@ ABA o      �^�^ 0 	userinput 	userInputB C�]C o      �\�\ 0 	thedelims 	theDelims�]  �_  ? k     UDD EFE r     GHG n    IJI 1    �[
�[ 
txdlJ 1     �Z
�Z 
ascrH o      �Y�Y 0 	olddelims 	oldDelimsF KLK r    MNM J    	OO P�XP o    �W�W 0 	userinput 	userInput�X  N o      �V�V 0 thelist theListL QRQ X    LS�UTS k    GUU VWV r    !XYX o    �T�T 0 adelim aDelimY n     Z[Z 1     �S
�S 
txdl[ 1    �R
�R 
ascrW \]\ r   " &^_^ J   " $�Q�Q  _ o      �P�P 0 newlist newList] `a` X   ' Cb�Ocb r   7 >ded b   7 <fgf o   7 8�N�N 0 newlist newListg n   8 ;hih 2  9 ;�M
�M 
citmi o   8 9�L�L 0 anitem anIteme o      �K�K 0 newlist newList�O 0 anitem anItemc o   * +�J�J 0 thelist theLista j�Ij r   D Gklk o   D E�H�H 0 newlist newListl o      �G�G 0 thelist theList�I  �U 0 adelim aDelimT o    �F�F 0 	thedelims 	theDelimsR mnm r   M Ropo o   M N�E�E 0 	olddelims 	oldDelimsp n     qrq 1   O Q�D
�D 
txdlr 1   N O�C
�C 
ascrn s�Bs L   S Utt o   S T�A�A 0 thelist theList�B  = uvu l     �@�?�>�@  �?  �>  v wxw l     �=yz�=  y ' ! Creates tags if they don't exist   z �{{ B   C r e a t e s   t a g s   i f   t h e y   d o n ' t   e x i s tx |}| i   � �~~ I      �<��;�< 0 	tag_check 	Tag_Check� ��:� o      �9�9 0 thetags theTags�:  �;   k     V�� ��� O     S��� k    R�� ��� r    ��� J    �8�8  � o      �7�7 0 	finaltags 	finalTags� ��6� X   	 R��5�� Z    M���4�� l   #��3�2� H    #�� l   "��1�0� I   "�/��.
�/ .coredoexnull���     ****� 5    �-��,
�- 
EVtg� o    �+�+ 0 thetag theTag
�, kfrmname�.  �1  �0  �3  �2  � Q   & C���*� k   ) :�� ��� r   ) 5��� I  ) 3�)��
�) .corecrel****      � null� m   ) *�(
�( 
EVtg� �'��&
�' 
prdt� K   + /�� �%��$
�% 
pnam� o   , -�#�# 0 thetag theTag�$  �&  � o      �"�" 0 maketag makeTag� ��!� r   6 :��� o   6 7� �  0 maketag makeTag� n      ���  ;   8 9� o   7 8�� 0 	finaltags 	finalTags�!  � R      ���
� .ascrerr ****      � ****�  �  �*  �4  � r   F M��� 4   F J��
� 
EVtg� o   H I�� 0 thetag theTag� n      ���  ;   K L� o   J K�� 0 	finaltags 	finalTags�5 0 thetag theTag� o    �� 0 thetags theTags�6  � m     ���                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��  � ��� L   T V�� o   T U�� 0 	finaltags 	finalTags�  } ��� l     ����  �  �  � ��� l     ����  � - ' Evernote Notebook selection subroutine   � ��� N   E v e r n o t e   N o t e b o o k   s e l e c t i o n   s u b r o u t i n e� ��� i   � ���� I      ���� 0 notebook_list Notebook_List�  �  � O     ��� k    ~�� ��� I   	���
� .miscactvnull��� ��� null�  �  � ��� l   
 ���� r   
 ��� J   
 ��  � o      �
�
 "0 listofnotebooks listOfNotebooks� 2 ,PREPARE TO GET EVERNOTE'S LIST OF NOTEBOOKS    � ��� X P R E P A R E   T O   G E T   E V E R N O T E ' S   L I S T   O F   N O T E B O O K S  � ��� l    ���� r    ��� 2    �	
�	 
EVnb� o      �� 0 evnotebooks EVNotebooks�  GET THE NOTEBOOK LIST    � ��� , G E T   T H E   N O T E B O O K   L I S T  � ��� X    4���� k   % /�� ��� r   % *��� l  % (���� l  % (���� n   % (��� 1   & (�
� 
pnam� o   % &�� "0 currentnotebook currentNotebook�  �  �  �  � o      � �  *0 currentnotebookname currentNotebookName� ���� s   + /��� o   + ,���� *0 currentnotebookname currentNotebookName� l     ������ n      ���  ;   - .� o   , -���� "0 listofnotebooks listOfNotebooks��  ��  ��  � "0 currentnotebook currentNotebook� o    ���� 0 evnotebooks EVNotebooks� ��� l   5 =���� r   5 =��� n  5 ;��� I   6 ;������� 0 simple_sort  � ���� o   6 7���� "0 listofnotebooks listOfNotebooks��  ��  �  f   5 6� o      ����  0 folders_sorted Folders_sorted�  SORT THE LIST    � ���  S O R T   T H E   L I S T  � ��� l   > O���� r   > O��� I  > M����
�� .gtqpchltns    @   @ ns  � o   > ?����  0 folders_sorted Folders_sorted� ����
�� 
appr� m   @ A�� ��� 0 S e l e c t   E v e r n o t e   N o t e b o o k� ����
�� 
prmp� l 	 B C������ m   B C�� �   4 C u r r e n t   E v e r n o t e   N o t e b o o k s��  ��  � ��
�� 
okbt m   D E �  O K ����
�� 
cnbt m   F G �  N e w   N o t e b o o k��  � o      ���� 0 selnotebook SelNotebook� ( "USER SELECTION FROM NOTEBOOK LIST    � � D U S E R   S E L E C T I O N   F R O M   N O T E B O O K   L I S T  � 	��	 Z   P ~
��
 l  P S���� =  P S o   P Q���� 0 selnotebook SelNotebook m   Q R��
�� boovfals��  ��   l  V q k   V q  r   V i n   V g l 	 c g���� 1   c g��
�� 
ttxt��  ��   l  V c���� I  V c��
�� .sysodlogaskr        TEXT m   V Y � 0 E n t e r   N e w   N o t e b o o k   N a m e : �� ��
�� 
dtxt  m   \ _!! �""  ��  ��  ��   o      ���� 0 	userinput 	userInput #��# r   j q$%$ o   j k���� 0 	userinput 	userInput% o      ���� 0 
evnotebook 
EVnotebook��   ! CREATE NEW NOTEBOOK OPTION     �&& 6 C R E A T E   N E W   N O T E B O O K   O P T I O N  ��   r   t ~'(' n   t x)*) 4   u x��+
�� 
cobj+ m   v w���� * o   t u���� 0 selnotebook SelNotebook( o      ���� 0 
evnotebook 
EVnotebook��  � m     ,,�                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��  � -.- l     ��������  ��  ��  . /0/ l      ��12��  1 o i 
======================================
// UTILITY SUBROUTINES 
=======================================
   2 �33 �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U T I L I T Y   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
0 454 l     ��������  ��  ��  5 676 l     ��89��  8   Extraction subroutine   9 �:: ,   E x t r a c t i o n   s u b r o u t i n e7 ;<; i   � �=>= I      ��?����  0 extractbetween extractBetween? @A@ o      ���� 0 
searchtext 
SearchTextA BCB o      ���� 0 	starttext 	startTextC D��D o      ���� 0 endtext endText��  ��  > k     ,EE FGF r     HIH n    JKJ 1    ��
�� 
txdlK 1     ��
�� 
ascrI o      ���� 0 tid  G LML r    NON o    ���� 0 	starttext 	startTextO n     PQP 1    
��
�� 
txdlQ 1    ��
�� 
ascrM RSR r    TUT n    VWV m    ��
�� 
ctxtW n    XYX 4    ��Z
�� 
citmZ m    ������Y o    ���� 0 
searchtext 
SearchTextU o      ���� 0 enditems endItemsS [\[ r    ]^] o    ���� 0 endtext endText^ n     _`_ 1    ��
�� 
txdl` 1    ��
�� 
ascr\ aba r    #cdc n    !efe m    !��
�� 
ctxtf n    ghg 4    ��i
�� 
citmi m    ���� h o    ���� 0 enditems endItemsd o      ����  0 beginningtoend beginningToEndb jkj r   $ )lml o   $ %���� 0 tid  m n     non 1   & (��
�� 
txdlo 1   % &��
�� 
ascrk p��p L   * ,qq o   * +����  0 beginningtoend beginningToEnd��  < rsr l     ��������  ��  ��  s tut l     ��vw��  v   Sort subroutine   w �xx     S o r t   s u b r o u t i n eu yzy i   � �{|{ I      ��}���� 0 simple_sort  } ~��~ o      ���� 0 my_list  ��  ��  | k     u ��� r     ��� J     ����  � l     ������ o      ���� 0 
index_list  ��  ��  � ��� r    	��� J    ����  � l     ������ o      ���� 0 sorted_list  ��  ��  � ��� U   
 r��� k    m�� ��� r    ��� m    �� ���  � l     ������ o      ���� 0 low_item  ��  ��  � ��� Y    c�������� Z   ) ^������� H   ) -�� E  ) ,��� l  ) *������ o   ) *���� 0 
index_list  ��  ��  � o   * +���� 0 i  � k   0 Z�� ��� r   0 8��� c   0 6��� n   0 4��� 4   1 4���
�� 
cobj� o   2 3���� 0 i  � o   0 1���� 0 my_list  � m   4 5��
�� 
ctxt� o      ���� 0 	this_item  � ���� Z   9 Z������ =  9 <��� l  9 :������ o   9 :���� 0 low_item  ��  ��  � m   : ;�� ���  � k   ? F�� ��� r   ? B��� o   ? @���� 0 	this_item  � l     ������ o      ���� 0 low_item  ��  ��  � ���� r   C F��� o   C D���� 0 i  � l     ������ o      ���� 0 low_item_index  ��  ��  ��  � ��� A I L��� o   I J���� 0 	this_item  � l  J K���~� o   J K�}�} 0 low_item  �  �~  � ��|� k   O V�� ��� r   O R��� o   O P�{�{ 0 	this_item  � l     ��z�y� o      �x�x 0 low_item  �z  �y  � ��w� r   S V��� o   S T�v�v 0 i  � l     ��u�t� o      �s�s 0 low_item_index  �u  �t  �w  �|  ��  ��  ��  ��  �� 0 i  � m    �r�r � l   $��q�p� n    $��� m   ! #�o
�o 
nmbr� n   !��� 2   !�n
�n 
cobj� o    �m�m 0 my_list  �q  �p  ��  � ��� r   d h��� l  d e��l�k� o   d e�j�j 0 low_item  �l  �k  � l     ��i�h� n      ���  ;   f g� o   e f�g�g 0 sorted_list  �i  �h  � ��f� r   i m��� l  i j��e�d� o   i j�c�c 0 low_item_index  �e  �d  � l     ��b�a� n      ���  ;   k l� l  j k��`�_� o   j k�^�^ 0 
index_list  �`  �_  �b  �a  �f  � l   ��]�\� l   ��[�Z� n    ��� m    �Y
�Y 
nmbr� n   ��� 2   �X
�X 
cobj� o    �W�W 0 my_list  �[  �Z  �]  �\  � ��V� L   s u�� l  s t��U�T� o   s t�S�S 0 sorted_list  �U  �T  �V  z ��� l     �R�Q�P�R  �Q  �P  � ��� l      �O���O  � x r 
======================================
// PROCESS MAIL ITEMS SUBROUTINE
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R O C E S S   M A I L   I T E M S   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     �N�M�L�N  �M  �L  � ��� i   � ���� I      �K��J�K 0 mail_process mail_Process� ��I� o      �H�H 0 themessages theMessages�I  �J  � k    �� ��� l     �G���G  �  CHECK DEFAULT NOTEBOOK   � �   , C H E C K   D E F A U L T   N O T E B O O K�  n     I    �F�E�D�F $0 default_notebook default_Notebook�E  �D    f      �C O    Q   
	�B k   

  Z    �A�@ =    o    �?�?  0 tagging_switch tagging_Switch m     �  O N n    I    �>�=�<�>  0 tagging_dialog tagging_Dialog�=  �<    f    �A  �@    l  ! !�;�:�9�;  �:  �9   �8 X   !�7 k   1
  Q   1��6 k   4�  !  l  4 4�5"#�5  "   Get message info   # �$$ "   G e t   m e s s a g e   i n f o! %&% r   4 ='(' l  4 7)�4�3) n   4 7*+* 1   5 7�2
�2 
subj+ o   4 5�1�1 0 thismessage thisMessage�4  �3  ( o      �0�0 0 mytitle myTitle& ,-, r   > C./. l  > A0�/�.0 n   > A121 1   ? A�-
�- 
ctnt2 o   > ?�,�, 0 thismessage thisMessage�/  �.  / o      �+�+ 0 	mycontent 	myContent- 343 r   D M565 l  D G7�*�)7 n   D G898 1   E G�(
�( 
raso9 o   D E�'�' 0 thismessage thisMessage�*  �)  6 o      �&�& 0 mysource mySource4 :;: r   N S<=< l  N Q>�%�$> n   N Q?@? 1   O Q�#
�# 
rpto@ o   N O�"�" 0 thismessage thisMessage�%  �$  = o      �!�! 0 	replyaddr 	ReplyAddr; ABA r   T YCDC l  T WE� �E n   T WFGF 1   U W�
� 
rdrcG o   T U�� 0 thismessage thisMessage�   �  D o      �� 0 	emaildate 	EmailDateB HIH r   Z bJKJ l  Z `L��L n   Z `MNM 2   ^ `�
� 
trcpN n   Z ^OPO 4   [ ^�Q
� 
cobjQ m   \ ]�� P o   Z [�� 0 thismessage thisMessage�  �  K o      �� 0 allrecipients allRecipientsI RSR l  c c����  �  �  S TUT l  c c�VW�  V . ( Assemble all to : resipients for header   W �XX P   A s s e m b l e   a l l   t o   :   r e s i p i e n t s   f o r   h e a d e rU YZY r   c f[\[ m   c d]] �^^  \ o      �� 0 torecipients toRecipientsZ _`_ X   g �a�ba k   w �cc ded r   w |fgf l  w zh��h n   w ziji 1   x z�
� 
pnamj o   w x�� 0 allrecipient allRecipient�  �  g o      �
�
 0 toname toNamee klk r   } �mnm l  } �o�	�o n   } �pqp 1   ~ ��
� 
raddq o   } ~�� 0 allrecipient allRecipient�	  �  n o      �� 0 toemail toEmaill rsr r   � �tut b   � �vwv b   � �xyx b   � �z{z b   � �|}| o   � ��� 0 toname toName} 1   � ��
� 
spac{ m   � �~~ �  (y o   � ��� 0 toemail toEmailw m   � ��� ���  ) < b r / >u o      �� 0 
tocombined 
toCombineds �� � r   � ���� l  � ������� c   � ���� b   � ���� o   � ����� 0 torecipients toRecipients� o   � ����� 0 
tocombined 
toCombined� m   � ���
�� 
TEXT��  ��  � o      ���� 0 torecipients toRecipients�   � 0 allrecipient allRecipientb o   j k���� 0 allrecipients allRecipients` ��� l  � ���������  ��  ��  � ��� l  � �������  �   Create mail message URL   � ��� 0   C r e a t e   m a i l   m e s s a g e   U R L� ��� r   � ���� m   � ��� ���  � o      ���� 0 therecipient theRecipient� ��� r   � ���� m   � ��� ���  � o      ���� 0 ex  � ��� r   � ���� m   � ��� ���  � o      ���� 0 msglink MsgLink� ��� Q   � ������ k   � ��� ��� r   � ���� m   � ��� ���  � o      ���� 0 therecipient theRecipient� ��� r   � ���� l  � ������� n   � ���� 1   � ���
�� 
radd� n   � ���� 4   � ����
�� 
trcp� m   � ����� � o   � ����� 0 thismessage thisMessage��  ��  � o      ���� 0 therecipient theRecipient� ��� r   � ���� b   � ���� b   � ���� m   � ��� ���  m e s s a g e : / / % 3 c� n  � ���� 1   � ���
�� 
meid� o   � ����� 0 thismessage thisMessage� m   � ��� ���  % 3 e� o      ���� 0 msglink MsgLink� ���� l  � ����� Z  � �������� >  � ���� o   � ����� 0 therecipient theRecipient� m   � ��� ���  � r   � ���� n  � ���� I   � ��������  0 extractbetween extractBetween� ��� o   � ����� 0 	replyaddr 	ReplyAddr� ��� m   � ��� ���  <� ���� m   � ��� ���  >��  ��  �  f   � �� o      ���� 0 ex  ��  ��  �   extract the Address   � ��� (   e x t r a c t   t h e   A d d r e s s��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  �   HTML email functions   � ��� *   H T M L   e m a i l   f u n c t i o n s� ��� r   ���� n  ���� I   ��������  0 extractbetween extractBetween� ��� o   ����� 0 mysource mySource� ��� m  �� ���  b o u n d a r y = "� ���� m  �� ���  "��  ��  �  f   � �� o      ���� 0 theboundary theBoundary� ��� r  ��� l ������ b  ��� b  ��� o  ��
�� 
ret � m  �� �    - -� o  ���� 0 theboundary theBoundary��  ��  � o      ���� "0 themessagestart theMessagestart�  r  , l (���� b  ( b  $	 b   

 m   �  - - o  ���� 0 theboundary theBoundary	 o   #��
�� 
ret  m  $' �  C o n t e n t - T y p e :��  ��   o      ���� 0 themessageend theMessageEnd  r  -: n  -6 2 26��
�� 
cpar o  -2���� 0 mysource mySource o      ���� 0 
parasource 
paraSource  r  ;L n  ;H 2 DH��
�� 
cpar l ;D���� c  ;D n  ;@  1  <@��
�� 
alhe  o  ;<���� 0 thismessage thisMessage m  @C��
�� 
ctxt��  ��   o      ���� 0 myheaderlines myHeaderlines !"! l MM��������  ��  ��  " #$# l MM��������  ��  ��  $ %&% l MM��'(��  '   Get content type   ( �)) "   G e t   c o n t e n t   t y p e& *+* X  M�,��-, Z  _�./����. C  _f010 o  _b���� 0 myheaderline myHeaderline1 m  be22 �33  C o n t e n t - T y p e :  / r  i}454 n iw676 I  jw��8����  0 extractbetween extractBetween8 9:9 o  jm���� 0 myheaderline myHeaderline: ;<; m  mp== �>>  C o n t e n t - T y p e :  < ?��? m  ps@@ �AA  ;��  ��  7  f  ij5 o      ���� 0 	myheaders 	myHeaders��  ��  �� 0 myheaderline myHeaderline- o  PS���� 0 myheaderlines myHeaderlines+ BCB r  ��DED n ��FGF I  ����H���� 0 stripheader stripHeaderH IJI o  ������ 0 
parasource 
paraSourceJ K��K o  ������ 0 myheaderlines myHeaderlines��  ��  G  f  ��E o      ���� 0 	cutsource 	cutSourceC L��L r  ��MNM o  ������ 0 	cutsource 	cutSourceN o      ���� 0 evhtml evHTML��   R      ������
�� .ascrerr ****      � ****��  ��  �6   OPO l ����������  ��  ��  P QRQ l ����ST��  S   Make header template   T �UU *   M a k e   h e a d e r   t e m p l a t eR VWV r  ��XYX b  ��Z[Z b  ��\]\ b  ��^_^ b  ��`a` b  ��bcb b  ��ded b  ��fgf b  ��hih b  ��jkj b  ��lml m  ��nn �oo� 
 < t a b l e   b o r d e r = " 1 "   w i d t h = " 1 0 0 % "   c e l l s p a c i n g = " 0 "   c e l l p a d d i n g = " 2 " > 
 < t b o d y > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > F r o m :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < a   h r e f = " m a i l t o :m o  ������ 0 ex  k m  ��pp �qq  " >i o  ������ 0 ex  g m  ��rr �ss < / a > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > S u b j e c t :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < s t r o n g >e o  ������ 0 mytitle myTitlec m  ��tt �uu < / s t r o n g > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > D a t e   /   T i m e :     < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " >a o  ������ 0 	emaildate 	EmailDate_ m  ��vv �ww � < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > T o : < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " >] o  ������ 0 torecipients toRecipients[ m  ��xx �yy J < / t d > 
 < / t r > 
 
 < / t b o d y > 
 < / t a b l e > 
 < h r   / >Y o      ���� 0 the_template the_TemplateW z{z l ����������  ��  ��  { |}| l ����~��  ~ ' ! Sent item to Evernote subroutine    ��� B   S e n t   i t e m   t o   E v e r n o t e   s u b r o u t i n e} ��� n ���� I  �������� 0 make_evernote make_Evernote� ��� o  ������ 0 mytitle myTitle� ��� o  ������ 0 evtag EVTag� ��� o  ������ 0 	emaildate 	EmailDate� ��� o  ������ 0 msglink MsgLink� ��� o  ������ 0 	mycontent 	myContent� ��� o  ������ 0 mysource mySource� ��� o  ������ 0 theboundary theBoundary� ��� o  ������ "0 themessagestart theMessagestart� ��� o  ������ 0 themessageend theMessageEnd� ��� o  ������ 0 	myheaders 	myHeaders� ��� o  ������ 0 thismessage thisMessage� ��� o  ������ 0 evhtml evHTML� ��� o  ������ 0 
evnotebook 
EVnotebook� ���� o  ������ 0 the_template the_Template��  ��  �  f  ��� ��� l ����~��  �  �~  � ��� l �}���}  � * $ Run message post process subroutine   � ��� H   R u n   m e s s a g e   p o s t   p r o c e s s   s u b r o u t i n e� ��� n ��� I  �|��{�| &0 mail_post_process mail_post_Process� ��z� o  �y�y 0 themessages theMessages�z  �{  �  f  � ��x� l 		�w�v�u�w  �v  �u  �x  �7 0 thismessage thisMessage o   $ %�t�t 0 themessages theMessages�8  	 R      �s�r�q
�s .ascrerr ****      � ****�r  �q  �B   m    ���                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  �C  � ��� l     �p�o�n�p  �o  �n  � ��� l     �m���m  � 1 + Archiving and flagging of processed emails   � ��� V   A r c h i v i n g   a n d   f l a g g i n g   o f   p r o c e s s e d   e m a i l s� ��� i   � ���� I      �l��k�l &0 mail_post_process mail_post_Process� ��j� o      �i�i 0 themessages theMessages�j  �k  � O     ���� X    ���h�� k    ��� ��� l   �g�f�e�g  �f  �e  � ��� l   �d���d  �   Flag message   � ���    F l a g   m e s s a g e� ��� Z    -���c�b� =   ��� o    �a�a 0 flagging  � m    �� ���  O N� r    )��� c    %��� o    #�`�` 0 archive_flag  � m   # $�_
�_ 
long� n      ��� 1   & (�^
�^ 
fidx� o   % &�]�] 0 m  �c  �b  � ��� l  . .�\�[�Z�\  �[  �Z  � ��� l  . .�Y���Y  �   Archive message   � ���     A r c h i v e   m e s s a g e� ��� Z   . ����X�W� =  . 5��� o   . 3�V�V 0 	archiving  � m   3 4�� ���  O N� k   8 ��� ��� r   8 =��� n   8 ;��� m   9 ;�U
�U 
mbxp� o   8 9�T�T 0 m  � o      �S�S 0 mb  � ��� r   > C��� n   > A��� m   ? A�R
�R 
mact� o   > ?�Q�Q 0 mb  � o      �P�P 0 acc  � ��� r   D W��� e   D U�� b   D U��� b   D O��� l  D M��O�N� c   D M��� l  D K��M�L� l  D K �K�J  n   D K 1   I K�I
�I 
year l  D I�H�G I  D I�F�E�D
�F .misccurdldt    ��� null�E  �D  �H  �G  �K  �J  �M  �L  � m   K L�C
�C 
TEXT�O  �N  � m   M N �   � o   O T�B�B 0 archive_mailbox_label  � o      �A�A 0 archive_mailbox  �  l  X X�@�?�>�@  �?  �>   	 Q   X 

 r   [ a n  [ _ 4   \ _�=
�= 
mbxp o   ] ^�<�< 0 archive_mailbox   o   [ \�;�; 0 acc   o      �:�: 0 archive   R      �9�8�7
�9 .ascrerr ****      � ****�8  �7   k   i   I  i |�6�5
�6 .sysodisAaleR        TEXT b   i x b   i t b   i r b   i n m   i l �  N o   ' o   l m�4�4 0 archive_mailbox   m   n q   �!! : '   m a i l b o x   f o u n d   f o r   a c c o u n t   ' o   r s�3�3 0 acc   m   t w"" �##  ' .�5   $�2$ L   } �1�1  �2  	 %&% l  � ��0�/�.�0  �/  �.  & '�-' I  � ��,()
�, .coremovenull���     obj ( o   � ��+�+ 0 m  ) �**�)
�* 
insh* o   � ��(�( 0 archive  �)  �-  �X  �W  � +�'+ l  � ��&�%�$�&  �%  �$  �'  �h 0 m  � o    �#�# 0 themessages theMessages� m     ,,�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  � -.- l     �"�!� �"  �!  �   . /0/ l     ����  �  �  0 121 l      �34�  3 { u 
======================================
// MAKE ITEM IN EVERNOTE SUBROUTINE
=======================================
   4 �55 �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A K E   I T E M   I N   E V E R N O T E   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
2 676 l     ����  �  �  7 898 i   � �:;: I      �<�� 0 make_evernote make_Evernote< =>= o      �� 0 mytitle myTitle> ?@? o      �� 0 evtag EVTag@ ABA o      �� 0 	emaildate 	EmailDateB CDC o      �� 0 msglink MsgLinkD EFE o      �� 0 	mycontent 	myContentF GHG o      �� 0 mysource mySourceH IJI o      �� 0 theboundary theBoundaryJ KLK o      �� "0 themessagestart theMessagestartL MNM o      �� 0 themessageend theMessageEndN OPO o      �� 0 	myheaders 	myHeadersP QRQ o      �� 0 thismessage thisMessageR STS o      �� 0 evhtml evHTMLT UVU o      �
�
 0 
evnotebook 
EVnotebookV W�	W o      �� 0 the_template the_Template�	  �  ; k    �XX YZY l     ����  �  �  Z [\[ O    �]^] Q   �_`�_ k   �aa bcb l   �de�  d   Is it a text email?   e �ff (   I s   i t   a   t e x t   e m a i l ?c ghg Z   �ijkli E    
mnm o    �� 0 	myheaders 	myHeadersn m    	oo �pp  t e x t / p l a i nj k    Hqq rsr r    tut I   �� v
� .EVRNcrntnull��� ��� null�   v ��wx
�� 
Enhlw o    ���� 0 the_template the_Templatex ��yz
�� 
Entty o    ���� 0 mytitle myTitlez ��{��
�� 
Ennb{ o    ���� 0 
evnotebook 
EVnotebook��  u o      ���� 0 n  s |}| Z   -~����~ >   ��� o    ���� 0 evtag EVTag� J    ����   I  " )����
�� .EVRNassnnull���     ****� o   " #���� 0 evtag EVTag� �����
�� 
EV13� o   $ %���� 0 n  ��  ��  ��  } ��� O  . :��� I  2 9�����
�� .EVRNadtnnull���     EVnn��  � �����
�� 
EV18� o   4 5���� 0 	mycontent 	myContent��  � o   . /���� 0 n  � ��� r   ; @��� o   ; <���� 0 	emaildate 	EmailDate� n      ��� 1   = ?��
�� 
EVdd� o   < =���� 0 n  � ��� r   A F��� o   A B���� 0 msglink MsgLink� n      ��� 1   C E��
�� 
EVsu� o   B C���� 0 n  � ��� l  G G��������  ��  ��  � ���� l  G G������  � #  Is it multipart alternative?   � ��� :   I s   i t   m u l t i p a r t   a l t e r n a t i v e ?��  k ��� E   K N��� o   K L���� 0 	myheaders 	myHeaders� m   L M�� ��� * m u l t i p a r t / a l t e r n a t i v e� ��� k   Q��� ��� l  Q Q��������  ��  ��  � ��� l  Q Q������  �   Check for Base64   � ��� "   C h e c k   f o r   B a s e 6 4� ��� r   Q Y��� n  Q W��� I   R W������� 0 base64_check base64_Check� ���� o   R S���� 0 mysource mySource��  ��  �  f   Q R� o      ���� 0 base64detect base64Detect� ��� l  Z Z��������  ��  ��  � ��� l  Z Z������  � #  If message if Base64 encoded   � ��� :   I f   m e s s a g e   i f   B a s e 6 4   e n c o d e d� ��� Z   Z������� =  Z ]��� o   Z [���� 0 base64detect base64Detect� m   [ \��
�� boovtrue� k   `�� ��� r   ` n��� n  ` h��� I   a h�������  0 extractbetween extractBetween� ��� o   a b���� 0 mysource mySource� ��� m   b c�� ��� B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4� ���� o   c d���� 0 theboundary theBoundary��  ��  �  f   ` a� o      ���� 0 	multihtml 	multiHTML� ��� l  o o��������  ��  ��  � ��� l  o o������  � 2 , Strip out content-disposition, if necessary   � ��� X   S t r i p   o u t   c o n t e n t - d i s p o s i t i o n ,   i f   n e c e s s a r y� ��� Z  o �������� E   o x��� o   o t���� 0 	multihtml 	multiHTML� m   t w�� ��� 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e� r   { ���� n  { ���� I   | ��������  0 extractbetween extractBetween� ��� o   | ����� 0 	multihtml 	multiHTML� ��� m   � ��� ��� 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e� ���� o   � ����� 0 theboundary theBoundary��  ��  �  f   { |� o      ���� 0 	multihtml 	multiHTML��  ��  � ��� Z  � �������� E   � ���� o   � ����� 0 	multihtml 	multiHTML� m   � ��� ��� > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t� r   � ���� n  � ���� I   � ��������  0 extractbetween extractBetween� ��� o   � ����� 0 	multihtml 	multiHTML� ��� m   � ��� ��� > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t�  ��  o   � ����� 0 theboundary theBoundary��  ��  �  f   � �� o      ���� 0 	multihtml 	multiHTML��  ��  �  l  � ���������  ��  ��    l  � �����     Decode Base64    �    D e c o d e   B a s e 6 4 	 r   � �

 I  � �����
�� .sysoexecTEXT���     TEXT b   � � b   � � m   � � � 
 e c h o   l  � ����� n   � � 1   � ���
�� 
strq o   � ����� 0 	multihtml 	multiHTML��  ��   m   � � � & |   o p e n s s l   b a s e 6 4   - d��   o      ���� 0 basehtml baseHTML	  l  � ���������  ��  ��    l  � �����     Make note in Evernote    � ,   M a k e   n o t e   i n   E v e r n o t e   r   � �!"! I  � �����#
�� .EVRNcrntnull��� ��� null��  # ��$%
�� 
Enhl$ o   � ����� 0 the_template the_Template% ��&'
�� 
Entt& o   � ����� 0 mytitle myTitle' ��(��
�� 
Ennb( o   � ����� 0 
evnotebook 
EVnotebook��  " o      ���� 0 n    )*) Z  � �+,����+ >  � �-.- o   � ����� 0 evtag EVTag. J   � �����  , I  � ���/0
�� .EVRNassnnull���     ****/ o   � ����� 0 evtag EVTag0 ��1��
�� 
EV131 o   � ����� 0 n  ��  ��  ��  * 232 O  �454 I  �����6
�� .EVRNadtnnull���     EVnn��  6 ��7��
�� 
EV197 o   � ����� 0 basehtml baseHTML��  5 o   � ����� 0 n  3 898 r  
:;: o  ���� 0 	emaildate 	EmailDate; n      <=< 1  	��
�� 
EVdd= o  ���� 0 n  9 >��> r  ?@? o  ���� 0 msglink MsgLink@ n      ABA 1  ��
�� 
EVsuB o  ���� 0 n  ��  ��  � k  �CC DED l �������  ��  �  E FGF l �~HI�~  H ' ! If message is not Base64 encoded   I �JJ B   I f   m e s s a g e   i s   n o t   B a s e 6 4   e n c o d e dG KLK r  !MNM n OPO I  �}Q�|�} 0 htmlfix htmlFixQ RSR o  �{�{ 0 mysource mySourceS TUT o  �z�z 0 theboundary theBoundaryU V�yV o  �x�x 0 	mycontent 	myContent�y  �|  P  f  N o      �w�w 0 	finalhtml 	finalHTMLL W�vW Z  "�XY�uZX = ")[\[ o  "'�t�t  0 decode_success decode_Success\ m  '(�s
�s boovtrueY k  ,k]] ^_^ l ,,�r�q�p�r  �q  �p  _ `a` l ,,�obc�o  b   Make note in Evernote   c �dd ,   M a k e   n o t e   i n   E v e r n o t ea efe r  ,9ghg I ,7�n�mi
�n .EVRNcrntnull��� ��� null�m  i �ljk
�l 
Enhlj o  ./�k�k 0 the_template the_Templatek �jlm
�j 
Enttl o  01�i�i 0 mytitle myTitlem �hn�g
�h 
Ennbn o  23�f�f 0 
evnotebook 
EVnotebook�g  h o      �e�e 0 n  f opo Z :Lqr�d�cq > :>sts o  :;�b�b 0 evtag EVTagt J  ;=�a�a  r I AH�`uv
�` .EVRNassnnull���     ****u o  AB�_�_ 0 evtag EVTagv �^w�]
�^ 
EV13w o  CD�\�\ 0 n  �]  �d  �c  p xyx O M_z{z I Q^�[�Z|
�[ .EVRNadtnnull���     EVnn�Z  | �Y}�X
�Y 
EV19} o  UZ�W�W 0 	finalhtml 	finalHTML�X  { o  MN�V�V 0 n  y ~~ r  `e��� o  `a�U�U 0 	emaildate 	EmailDate� n      ��� 1  bd�T
�T 
EVdd� o  ab�S�S 0 n   ��R� r  fk��� o  fg�Q�Q 0 msglink MsgLink� n      ��� 1  hj�P
�P 
EVsu� o  gh�O�O 0 n  �R  �u  Z k  n��� ��� l nn�N�M�L�N  �M  �L  � ��� l nn�K���K  �   Make note in Evernote   � ��� ,   M a k e   n o t e   i n   E v e r n o t e� ��� r  n{��� I ny�J�I�
�J .EVRNcrntnull��� ��� null�I  � �H��
�H 
Enhl� o  pq�G�G 0 the_template the_Template� �F��
�F 
Entt� o  rs�E�E 0 mytitle myTitle� �D��C
�D 
Ennb� o  tu�B�B 0 
evnotebook 
EVnotebook�C  � o      �A�A 0 n  � ��� Z |����@�?� > |���� o  |}�>�> 0 evtag EVTag� J  }�=�=  � I ���<��
�< .EVRNassnnull���     ****� o  ���;�; 0 evtag EVTag� �:��9
�: 
EV13� o  ���8�8 0 n  �9  �@  �?  � ��� O ����� I ���7�6�
�7 .EVRNadtnnull���     EVnn�6  � �5��4
�5 
EV18� o  ���3�3 0 	mycontent 	myContent�4  � o  ���2�2 0 n  � ��� r  ����� o  ���1�1 0 	emaildate 	EmailDate� n      ��� 1  ���0
�0 
EVdd� o  ���/�/ 0 n  � ��.� r  ����� o  ���-�- 0 msglink MsgLink� n      ��� 1  ���,
�, 
EVsu� o  ���+�+ 0 n  �.  �v  � ��� l ���*�)�(�*  �)  �(  � ��'� l ���&���&  �   Is it multipart mixed?   � ��� .   I s   i t   m u l t i p a r t   m i x e d ?�'  � ��� E  ����� o  ���%�% 0 	myheaders 	myHeaders� m  ���� ���  m u l t i p a r t� ��$� k  ��� ��� Z  �����#� E  ����� o  ���"�" 0 mysource mySource� m  ���� ��� . C o n t e n t - T y p e :   t e x t / h t m l� k  ���� ��� l ���!� ��!  �   �  � ��� l ������  �   Check for Base64   � ��� "   C h e c k   f o r   B a s e 6 4� ��� r  ����� n ����� I  ������ 0 base64_check base64_Check� ��� o  ���� 0 mysource mySource�  �  �  f  ��� o      �� 0 base64detect base64Detect� ��� l ������  �  �  � ��� l ������  � #  If message is Base64 encoded   � ��� :   I f   m e s s a g e   i s   B a s e 6 4   e n c o d e d� ��� Z  ������� = ����� o  ���� 0 base64detect base64Detect� m  ���
� boovtrue� k  ��� ��� r  ����� n ����� I  ������ 0 base64_decode base64_Decode� ��� o  ���� 0 mysource mySource�  �  �  f  ��� o      �� 0 basehtml baseHTML� ��� l �����
�  �  �
  � ��� l ���	���	  �   Make note in Evernote   � ��� ,   M a k e   n o t e   i n   E v e r n o t e� ��� r  ����� I �����
� .EVRNcrntnull��� ��� null�  � ��	 
� 
Enhl� o  ���� 0 the_template the_Template	  �		
� 
Entt	 o  ���� 0 mytitle myTitle	 �	�
� 
Ennb	 o  ��� �  0 
evnotebook 
EVnotebook�  � o      ���� 0 n  � 			 Z ��		����	 > ��				 o  ������ 0 evtag EVTag		 J  ������  	 I ����	
	
�� .EVRNassnnull���     ****	
 o  ������ 0 evtag EVTag	 ��	��
�� 
EV13	 o  ������ 0 n  ��  ��  ��  	 			 O �			 I �����	
�� .EVRNadtnnull���     EVnn��  	 ��	��
�� 
EV19	 o  ����� 0 basehtml baseHTML��  	 o  ������ 0 n  	 			 r  			 o  	���� 0 	emaildate 	EmailDate	 n      			 1  
��
�� 
EVdd	 o  	
���� 0 n  	 			 r  			 o  ���� 0 msglink MsgLink	 n      			 1  ��
�� 
EVsu	 o  ���� 0 n  	 		 	 l ��������  ��  ��  	  	!��	! l ��	"	#��  	" ' ! If message is not Base64 encoded   	# �	$	$ B   I f   m e s s a g e   i s   n o t   B a s e 6 4   e n c o d e d��  � 	%	&	% = 	'	(	' o  ���� 0 base64detect base64Detect	( m  ��
�� boovfals	& 	)��	) k  �	*	* 	+	,	+ r  ,	-	.	- n &	/	0	/ I  &��	1���� 0 htmlfix htmlFix	1 	2	3	2 o   ���� 0 mysource mySource	3 	4	5	4 o   !���� 0 theboundary theBoundary	5 	6��	6 o  !"���� 0 	mycontent 	myContent��  ��  	0  f  	. o      ���� 0 	finalhtml 	finalHTML	, 	7��	7 Z  -�	8	9��	:	8 = -4	;	<	; o  -2����  0 decode_success decode_Success	< m  23��
�� boovtrue	9 k  7v	=	= 	>	?	> l 77��������  ��  ��  	? 	@	A	@ l 77��	B	C��  	B   Make note in Evernote   	C �	D	D ,   M a k e   n o t e   i n   E v e r n o t e	A 	E	F	E r  7D	G	H	G I 7B����	I
�� .EVRNcrntnull��� ��� null��  	I ��	J	K
�� 
Enhl	J o  9:���� 0 the_template the_Template	K ��	L	M
�� 
Entt	L o  ;<���� 0 mytitle myTitle	M ��	N��
�� 
Ennb	N o  =>���� 0 
evnotebook 
EVnotebook��  	H o      ���� 0 n  	F 	O	P	O Z EW	Q	R����	Q > EI	S	T	S o  EF���� 0 evtag EVTag	T J  FH����  	R I LS��	U	V
�� .EVRNassnnull���     ****	U o  LM���� 0 evtag EVTag	V ��	W��
�� 
EV13	W o  NO���� 0 n  ��  ��  ��  	P 	X	Y	X O Xj	Z	[	Z I \i����	\
�� .EVRNadtnnull���     EVnn��  	\ ��	]��
�� 
EV19	] o  `e���� 0 	finalhtml 	finalHTML��  	[ o  XY���� 0 n  	Y 	^	_	^ r  kp	`	a	` o  kl���� 0 	emaildate 	EmailDate	a n      	b	c	b 1  mo��
�� 
EVdd	c o  lm���� 0 n  	_ 	d��	d r  qv	e	f	e o  qr���� 0 msglink MsgLink	f n      	g	h	g 1  su��
�� 
EVsu	h o  rs���� 0 n  ��  ��  	: k  y�	i	i 	j	k	j l yy��������  ��  ��  	k 	l	m	l l yy��	n	o��  	n   Make note in Evernote   	o �	p	p ,   M a k e   n o t e   i n   E v e r n o t e	m 	q	r	q r  y�	s	t	s I y�����	u
�� .EVRNcrntnull��� ��� null��  	u ��	v	w
�� 
Enhl	v o  {|���� 0 the_template the_Template	w ��	x	y
�� 
Entt	x o  }~���� 0 mytitle myTitle	y ��	z��
�� 
Ennb	z o  ����� 0 
evnotebook 
EVnotebook��  	t o      ���� 0 n  	r 	{	|	{ Z ��	}	~����	} > ��		�	 o  ������ 0 evtag EVTag	� J  ������  	~ I ����	�	�
�� .EVRNassnnull���     ****	� o  ������ 0 evtag EVTag	� ��	���
�� 
EV13	� o  ������ 0 n  ��  ��  ��  	| 	�	�	� O ��	�	�	� I ������	�
�� .EVRNadtnnull���     EVnn��  	� ��	���
�� 
EV18	� o  ������ 0 	mycontent 	myContent��  	� o  ������ 0 n  	� 	�	�	� r  ��	�	�	� o  ������ 0 	emaildate 	EmailDate	� n      	�	�	� 1  ����
�� 
EVdd	� o  ������ 0 n  	� 	���	� r  ��	�	�	� o  ������ 0 msglink MsgLink	� n      	�	�	� 1  ����
�� 
EVsu	� o  ������ 0 n  ��  ��  ��  �  � 	���	� l ����������  ��  ��  ��  � 	�	�	� E  ��	�	�	� o  ������ 0 mysource mySource	� m  ��	�	� �	�	�  t e x t / p l a i n	� 	���	� k  ��	�	� 	�	�	� l ����������  ��  ��  	� 	�	�	� l ����	�	���  	�   Make note in Evernote   	� �	�	� ,   M a k e   n o t e   i n   E v e r n o t e	� 	�	�	� r  ��	�	�	� I ������	�
�� .EVRNcrntnull��� ��� null��  	� ��	�	�
�� 
Enhl	� o  ������ 0 the_template the_Template	� ��	�	�
�� 
Entt	� o  ���� 0 mytitle myTitle	� �~	��}
�~ 
Ennb	� o  ���|�| 0 
evnotebook 
EVnotebook�}  	� o      �{�{ 0 n  	� 	�	�	� Z ��	�	��z�y	� > ��	�	�	� o  ���x�x 0 evtag EVTag	� J  ���w�w  	� I ���v	�	�
�v .EVRNassnnull���     ****	� o  ���u�u 0 evtag EVTag	� �t	��s
�t 
EV13	� o  ���r�r 0 n  �s  �z  �y  	� 	�	�	� O ��	�	�	� I ���q�p	�
�q .EVRNadtnnull���     EVnn�p  	� �o	��n
�o 
EV18	� o  ���m�m 0 	mycontent 	myContent�n  	� o  ���l�l 0 n  	� 	�	�	� r  ��	�	�	� o  ���k�k 0 	emaildate 	EmailDate	� n      	�	�	� 1  ���j
�j 
EVdd	� o  ���i�i 0 n  	� 	�	�	� r  ��	�	�	� o  ���h�h 0 msglink MsgLink	� n      	�	�	� 1  ���g
�g 
EVsu	� o  ���f�f 0 n  	� 	��e	� l ���d�c�b�d  �c  �b  �e  ��  �#  � 	�	�	� l �a�`�_�a  �`  �_  	� 	�	�	� l �^	�	��^  	�   Multipart mixed   	� �	�	�     M u l t i p a r t   m i x e d	� 	�	�	� l �]�\�[�]  �\  �[  	� 	��Z	� l �Y	�	��Y  	� #  Other types of HTML-encoding   	� �	�	� :   O t h e r   t y p e s   o f   H T M L - e n c o d i n g�Z  �$  l k  �	�	� 	�	�	� l �X�W�V�X  �W  �V  	� 	�	�	� l �U	�	��U  	�   Check for Base64   	� �	�	� "   C h e c k   f o r   B a s e 6 4	� 	�	�	� r  	�	�	� n 	�	�	� I  �T	��S�T 0 base64_check base64_Check	� 	��R	� o  	�Q�Q 0 mysource mySource�R  �S  	�  f  	� o      �P�P 0 base64detect base64Detect	� 	�	�	� l �O�N�M�O  �N  �M  	� 	�	�	� l �L	�	��L  	� #  If message is Base64 encoded   	� �	�	� :   I f   m e s s a g e   i s   B a s e 6 4   e n c o d e d	� 	�	�	� Z  N	�	��K	�	� = 	�	�	� o  �J�J 0 base64detect base64Detect	� m  �I
�I boovtrue	� r  "	�	�	� n 	�	�	� I  �H	��G�H 0 base64_decode base64_Decode	� 	��F	� o  �E�E 0 mysource mySource�F  �G  	�  f  	� o      �D�D 0 	finalhtml 	finalHTML�K  	� k  %N	�	� 	�	�	� r  %7	�
 	� n %1


 I  &1�C
�B�C  0 extractbetween extractBetween
 


 o  &'�A�A 0 evhtml evHTML
 


 m  '*

 �
	
	  < / h e a d >
 

�@

 m  *-

 �

  < / h t m l >�@  �B  
  f  %&
  o      �?�? 0 	multihtml 	multiHTML	� 
�>
 r  8N


 c  8H


 n 8D


 I  9D�=
�<�= 0 htmlfix htmlFix
 


 o  9>�;�; 0 	multihtml 	multiHTML
 


 o  >?�:�: 0 theboundary theBoundary
 
�9
 o  ?@�8�8 0 	mycontent 	myContent�9  �<  
  f  89
 m  DG�7
�7 
ctxt
 o      �6�6 0 	finalhtml 	finalHTML�>  	� 


 l OO�5�4�3�5  �4  �3  
 


 l OO�2

�2  
   Make note in Evernote   
 �
 
  ,   M a k e   n o t e   i n   E v e r n o t e
 
!
"
! r  O\
#
$
# I OZ�1�0
%
�1 .EVRNcrntnull��� ��� null�0  
% �/
&
'
�/ 
Enhl
& o  QR�.�. 0 the_template the_Template
' �-
(
)
�- 
Entt
( o  ST�,�, 0 mytitle myTitle
) �+
*�*
�+ 
Ennb
* o  UV�)�) 0 
evnotebook 
EVnotebook�*  
$ o      �(�( 0 n  
" 
+
,
+ Z ]o
-
.�'�&
- > ]a
/
0
/ o  ]^�%�% 0 evtag EVTag
0 J  ^`�$�$  
. I dk�#
1
2
�# .EVRNassnnull���     ****
1 o  de�"�" 0 evtag EVTag
2 �!
3� 
�! 
EV13
3 o  fg�� 0 n  �   �'  �&  
, 
4
5
4 O p�
6
7
6 I t���
8
� .EVRNadtnnull���     EVnn�  
8 �
9�
� 
EV19
9 o  x}�� 0 	finalhtml 	finalHTML�  
7 o  pq�� 0 n  
5 
:
;
: r  ��
<
=
< o  ���� 0 	emaildate 	EmailDate
= n      
>
?
> 1  ���
� 
EVdd
? o  ���� 0 n  
; 
@
A
@ r  ��
B
C
B o  ���� 0 msglink MsgLink
C n      
D
E
D 1  ���
� 
EVsu
E o  ���� 0 n  
A 
F
G
F l ������  �  �  
G 
H�
H l ���
I
J�  
I    End of message processing   
J �
K
K 4   E n d   o f   m e s s a g e   p r o c e s s i n g�  h 
L
M
L l ������  �  �  
M 
N
O
N l ���

P
Q�
  
P %  Start of attachment processing   
Q �
R
R >   S t a r t   o f   a t t a c h m e n t   p r o c e s s i n g
O 
S
T
S O  ��
U
V
U k  ��
W
W 
X
Y
X l ���	���	  �  �  
Y 
Z
[
Z l ���
\
]�  
\ 7 1 If attachment present, run attachment subroutine   
] �
^
^ b   I f   a t t a c h m e n t   p r e s e n t ,   r u n   a t t a c h m e n t   s u b r o u t i n e
[ 
_�
_ Z ��
`
a��
` > ��
b
c
b n ��
d
e
d 2 ���
� 
attc
e o  ���� 0 thismessage thisMessage
c J  ��� �   
a n ��
f
g
f I  ����
h���� 0 attachment_process  
h 
i
j
i o  ������ 0 thismessage thisMessage
j 
k��
k o  ������ 0 n  ��  ��  
g  f  ���  �  �  
V m  ��
l
l�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  
T 
m
n
m l ����������  ��  ��  
n 
o
p
o l ����
q
r��  
q * $ Item has finished. Count as success   
r �
s
s H   I t e m   h a s   f i n i s h e d .   C o u n t   a s   s u c c e s s
p 
t��
t r  ��
u
v
u [  ��
w
x
w o  ������ 0 successcount successCount
x m  ������ 
v o      ���� 0 successcount successCount��  ` R      ������
�� .ascrerr ****      � ****��  ��  �  ^ m     
y
y�                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��  \ 
z��
z I ����
{��
�� .ascrcmnt****      � ****
{ b  ��
|
}
| m  ��
~
~ �

  s u c c e s s C o u n t :  
} o  ������ 0 successcount successCount��  ��  9 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l      ��
�
���  
� r l 
======================================
// ATTACHMENT SUBROUTINES 
=======================================
   
� �
�
� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   A T T A C H M E N T   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
�   Folder exists?   
� �
�
�    F o l d e r   e x i s t s ?
� 
�
�
� i   � �
�
�
� I      ��
����� 0 f_exists  
� 
���
� o      ���� 0 exportfolder ExportFolder��  ��  
� Q     +
�
�
�
� k    
�
� 
�
�
� r    

�
�
� l   
�����
� I   ��
���
�� .earsffdralis        afdr
� m    ��
�� afdrcusr��  ��  ��  
� o      ���� 0 mypath myPath
� 
�
�
� e    
�
� c    
�
�
� o    ���� 0 exportfolder ExportFolder
� m    ��
�� 
alis
� 
���
� r    
�
�
� o    ���� 0 exportfolder ExportFolder
� o      ���� 0 saveloc SaveLoc��  
� R      ������
�� .ascrerr ****      � ****��  ��  
� O   +
�
�
� I   *����
�
�� .corecrel****      � null��  
� ��
�
�
�� 
kocl
� m     !��
�� 
cfol
� ��
���
�� 
prdt
� K   " &
�
� ��
���
�� 
pnam
� m   # $
�
� �
�
� * T e m p   E x p o r t   F r o m   M a i l��  ��  
� m    
�
��                                                                                  MACS  alis    \  OS X                       ��V�H+     N
Finder.app                                                      �]�\ǒ        ����  	                CoreServices    ��H�      �\�r       N   H   G  .OS X:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  
  O S   X  &System/Library/CoreServices/Finder.app  / ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
�   Attachment processing   
� �
�
� ,   A t t a c h m e n t   p r o c e s s i n g
� 
�
�
� i   � �
�
�
� I      ��
����� 0 attachment_process  
� 
�
�
� o      ���� 0 thismessage thisMessage
� 
���
� o      ���� 0 n  ��  ��  
� O     �
�
�
� k    �
�
� 
�
�
� l   ��������  ��  ��  
� 
�
�
� l   ��
�
���  
� 1 + Make sure text item delimiters are default   
� �
�
� V   M a k e   s u r e   t e x t   i t e m   d e l i m i t e r s   a r e   d e f a u l t
� 
�
�
� r    	
�
�
� m    
�
� �
�
�  
� n     
�
�
� 1    ��
�� 
txdl
� 1    ��
�� 
ascr
� 
�
�
� l  
 
��������  ��  ��  
� 
�
�
� l  
 
��
�
���  
� * $ Temp files processed on the Desktop   
� �
�
� H   T e m p   f i l e s   p r o c e s s e d   o n   t h e   D e s k t o p
� 
�
�
� r   
 
�
�
� c   
 
�
�
� l  
 
�����
� b   
 
�
�
� l  
 
�����
� I  
 ��
���
�� .earsffdralis        afdr
� m   
 ��
�� afdmdesk��  ��  ��  
� m    
�
� �
�
� , T e m p   E x p o r t   F r o m   M a i l :��  ��  
� m    ��
�� 
TEXT
� o      ���� 0 exportfolder ExportFolder
� 
�
�
� r    
�
�
� n   
�
�
� I    ��
����� 0 f_exists  
� 
���
� o    ���� 0 exportfolder ExportFolder��  ��  
�  f    
� o      ���� 0 saveloc SaveLoc
� 
�
�
� l   ��������  ��  ��  
� 
�
�
� l   ��
�
���  
�   Process attachments   
� �
�
� (   P r o c e s s   a t t a c h m e n t s
� 
�
�
� r    $
�
�
� n   "
�
�
� 2    "��
�� 
attc
� o     ���� 0 thismessage thisMessage
� o      ����  0 theattachments theAttachments
� 
� 
� r   % ( m   % &����   o      ���� 0 attcount attCount   X   ) ��� k   9 � 	 r   9 @

 b   9 > o   9 :���� 0 exportfolder ExportFolder n  : = 1   ; =��
�� 
pnam o   : ;���� 0 theattachment theAttachment o      ���� 0 thefilename theFileName	  Q   A W�� I  D N��
�� .coresavenull���     obj  o   D E���� 0 theattachment theAttachment ����
�� 
kfil 4   F J��
�� 
file o   H I���� 0 thefilename theFileName��   R      ������
�� .ascrerr ****      � ****��  ��  ��    O   X p O  ^ o I  b n����
�� .EVRNadtnnull���     EVnn��   ����
�� 
EV21 4   f j�� 
�� 
file  o   h i���� 0 thefilename theFileName��   o   ^ _���� 0 n   m   X [!!�                                                                                  EVRN  alis    >  OS X                       ��V�H+     kEvernote.app                                                    Q���(�_        ����  	                Applications    ��H�      �(�O       k  OS X:Applications: Evernote.app     E v e r n o t e . a p p  
  O S   X  Applications/Evernote.app   / ��   "#" l  q q��������  ��  ��  # $%$ l  q q��&'��  & !  Silent delete of temp file   ' �(( 6   S i l e n t   d e l e t e   o f   t e m p   f i l e% )*) r   q �+,+ I  q ~�-.
� .earsffdralis        afdr- m   q t�~
�~ afdmtrsh. �}/�|
�} 
from/ m   w z�{
�{ fldmfldu�|  , o      �z�z 0 trash_folder trash_Folder* 010 I  � ��y2�x
�y .sysoexecTEXT���     TEXT2 b   � �343 b   � �565 b   � �787 m   � �99 �::  m v  8 n   � �;<; 1   � ��w
�w 
strq< n   � �=>= 1   � ��v
�v 
psxp> o   � ��u�u 0 thefilename theFileName6 1   � ��t
�t 
spac4 n   � �?@? 1   � ��s
�s 
strq@ n   � �ABA 1   � ��r
�r 
psxpB o   � ��q�q 0 trash_folder trash_Folder�x  1 C�pC l  � ��o�n�m�o  �n  �m  �p  �� 0 theattachment theAttachment o   , -�l�l  0 theattachments theAttachments DED l  � ��k�j�i�k  �j  �i  E FGF l  � ��hHI�h  H #  Silent delete of temp folder   I �JJ :   S i l e n t   d e l e t e   o f   t e m p   f o l d e rG KLK r   � �MNM n  � �OPO I   � ��gQ�f�g 0 trashfolder  Q R�eR o   � ��d�d 0 saveloc SaveLoc�e  �f  P  f   � �N o      �c�c 0 success  L S�bS l  � ��a�`�_�a  �`  �_  �b  
� m     TT�                                                                                  emal  alis    .  OS X                       ��V�H+     kMail.app                                                        Z��p��        ����  	                Applications    ��H�      �pzz       k  OS X:Applications: Mail.app     M a i l . a p p  
  O S   X  Applications/Mail.app   / ��  
� UVU l     �^�]�\�^  �]  �\  V WXW l     �[YZ�[  Y #  Silent delete of temp folder   Z �[[ :   S i l e n t   d e l e t e   o f   t e m p   f o l d e rX \]\ i   � �^_^ I      �Z`�Y�Z 0 trashfolder  ` a�Xa o      �W�W 0 saveloc SaveLoc�X  �Y  _ Q     �bcdb k    �ee fgf r    hih l   
j�V�Uj c    
klk l   m�T�Sm I   �Rn�Q
�R .earsffdralis        afdrn m    �P
�P afdrtrsh�Q  �T  �S  l m    	�O
�O 
utxt�V  �U  i o      �N�N 0 trashfolderpath  g opo r    qrq I   �Ms�L
�M .sysonfo4asfe        files l   t�K�Jt c    uvu o    �I�I 0 saveloc SaveLocv m    �H
�H 
alis�K  �J  �L  r o      �G�G 0 srcfolderinfo  p wxw r    yzy n    {|{ 1    �F
�F 
pnam| o    �E�E 0 srcfolderinfo  z o      �D�D 0 srcfoldername  x }~} r    $� n    "��� 1     "�C
�C 
strq� n     ��� 1     �B
�B 
psxp� o    �A�A 0 saveloc SaveLoc� o      �@�@ 0 saveloc SaveLoc~ ��� r   % (��� m   % &�?�?  � o      �>�> 0 counter  � ��� T   ) f�� k   . a�� ��� Z   . I���=�� =  . 1��� o   . /�<�< 0 counter  � m   / 0�;�;  � r   4 ;��� b   4 9��� b   4 7��� o   4 5�:�: 0 trashfolderpath  � o   5 6�9�9 0 srcfoldername  � m   7 8�� ���  :� o      �8�8 0 destfolderpath  �=  � r   > I��� b   > G��� b   > E��� b   > C��� b   > A��� o   > ?�7�7 0 trashfolderpath  � o   ? @�6�6 0 srcfoldername  � m   A B�� ���   � o   C D�5�5 0 counter  � m   E F�� ���  :� o      �4�4 0 destfolderpath  � ��� Q   J [���� r   M R��� c   M P��� o   M N�3�3 0 destfolderpath  � m   N O�2
�2 
alis� o      �1�1 0 destfolderalias  � R      �0�/�.
�0 .ascrerr ****      � ****�/  �.  �  S   Z [� ��-� r   \ a��� [   \ _��� o   \ ]�,�, 0 counter  � m   ] ^�+�+ � o      �*�* 0 counter  �-  � ��� r   g n��� n   g l��� 1   j l�)
�) 
strq� n   g j��� 1   h j�(
�( 
psxp� o   g h�'�' 0 destfolderpath  � o      �&�& 0 destfolderpath  � ��� r   o x��� b   o v��� b   o t��� b   o r��� m   o p�� ���  d i t t o  � o   p q�%�% 0 saveloc SaveLoc� 1   r s�$
�$ 
spac� o   t u�#�# 0 destfolderpath  � o      �"�" 0 command  � ��� I  y ~�!�� 
�! .sysoexecTEXT���     TEXT� o   y z�� 0 command  �   � ��� l   ����  � 9 3 this won't be executed if the ditto command errors   � ��� f   t h i s   w o n ' t   b e   e x e c u t e d   i f   t h e   d i t t o   c o m m a n d   e r r o r s� ��� r    ���� b    ���� m    ��� ���  r m   - r  � o   � ��� 0 saveloc SaveLoc� o      �� 0 command  � ��� I  � ����
� .sysoexecTEXT���     TEXT� o   � ��� 0 command  �  � ��� L   � ��� m   � ��
� boovtrue�  c R      ���
� .ascrerr ****      � ****�  �  d L   � ��� m   � ��
� boovfals] ��� l     ����  �  �  � ��� l      ����  � t n 
======================================
// HTML CLEANUP SUBROUTINES 
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   H T M L   C L E A N U P   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     ����  �  �  � ��� l     ����  �   Header strip   � ���    H e a d e r   s t r i p� ��� i   � ���� I      �
��	�
 0 stripheader stripHeader� ��� o      �� 0 
parasource 
paraSource� ��� o      �� 0 myheaderlines myHeaderlines�  �	  � k     x�� ��� l     ����  �  �  � ��� l     ����  � * $ Find the last non-empty header line   � ��� H   F i n d   t h e   l a s t   n o n - e m p t y   h e a d e r   l i n e�    r      m      �   o      �� 0 lastheaderline    r    	 I   	� 
��
�  .corecnte****       ****
 l   ���� o    ���� 0 myheaderlines myHeaderlines��  ��  ��  	 o      ���� 0 n    V    % k       r     n     4    ��
�� 
cobj o    ���� 0 n   o    ���� 0 myheaderlines myHeaderlines o      ���� 0 lastheaderline   �� r      \     o    ���� 0 n   m    ����  o      ���� 0 n  ��   l   ���� =     o    ���� 0 lastheaderline   m       �!!  ��  ��   "#" l  & &��������  ��  ��  # $%$ l  & &��&'��  &   Compare header to source   ' �(( 2   C o m p a r e   h e a d e r   t o   s o u r c e% )*) r   & -+,+ l  & +-����- I  & +��.��
�� .corecnte****       ****. o   & '���� 0 
parasource 
paraSource��  ��  ��  , o      ���� 0 sourcelength  * /0/ Y   . K1��23��1 Z  8 F45����4 l  8 >6����6 =  8 >787 n   8 <9:9 4   9 <��;
�� 
cobj; o   : ;���� 0 n  : o   8 9���� 0 
parasource 
paraSource8 m   < =<< �==  ��  ��  5  S   A B��  ��  �� 0 n  2 m   1 2���� 3 o   2 3���� 0 sourcelength  ��  0 >?> l  L L��������  ��  ��  ? @A@ l  L L��BC��  B   Strip out headers   C �DD $   S t r i p   o u t   h e a d e r sA EFE r   L [GHG l  L YI����I n   L YJKJ 7  M Y��LM
�� 
cobjL l  Q UN����N [   Q UOPO o   R S���� 0 n  P m   S T���� ��  ��  M o   V X���� 0 sourcelength  K o   L M���� 0 
parasource 
paraSource��  ��  H o      ����  0 cutsourceitems cutSourceItemsF QRQ r   \ aSTS n  \ _UVU 1   ] _��
�� 
txdlV 1   \ ]��
�� 
ascrT o      ���� 0 	olddelims 	oldDelimsR WXW r   b gYZY o   b c��
�� 
ret Z n     [\[ 1   d f��
�� 
txdl\ 1   c d��
�� 
ascrX ]^] r   h m_`_ l  h ka����a c   h kbcb o   h i����  0 cutsourceitems cutSourceItemsc m   i j��
�� 
ctxt��  ��  ` o      ���� 0 	cutsource 	cutSource^ ded r   n sfgf o   n o���� 0 	olddelims 	oldDelimsg n     hih 1   p r��
�� 
txdli 1   o p��
�� 
ascre jkj l  t t��������  ��  ��  k lml L   t vnn o   t u���� 0 	cutsource 	cutSourcem o��o l  w w��������  ��  ��  ��  � pqp l     ��������  ��  ��  q rsr l     ��tu��  t   Base64 check   u �vv    B a s e 6 4   c h e c ks wxw i   � �yzy I      ��{���� 0 base64_check base64_Check{ |��| o      ���� 0 mysource mySource��  ��  z k     L}} ~~ r     ��� m     ��
�� boovfals� o      ���� 0 base64detect base64Detect ��� r    ��� m    �� ��� B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4� o      ���� 0 base64msgstr base64MsgStr� ��� r    ��� m    	�� ��� $ C o n t e n t - T y p e :   t e x t� o      ���� &0 base64contenttype base64ContentType� ��� r    ��� I   �����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o    ���� 0 base64msgstr base64MsgStr� �����
�� 
psin� o    ���� 0 mysource mySource��  � o      ���� "0 base64msgoffset base64MsgOffset� ��� r    #��� I   !�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o    ���� &0 base64contenttype base64ContentType� �����
�� 
psin� o    ���� 0 mysource mySource��  � o      ���� *0 base64contentoffset base64ContentOffset� ��� r   $ +��� c   $ )��� \   $ '��� o   $ %���� "0 base64msgoffset base64MsgOffset� o   % &���� *0 base64contentoffset base64ContentOffset� m   ' (��
�� 
doub� o      ���� 0 base64offset base64Offset� ��� r   , 1��� c   , /��� o   , -���� 0 base64offset base64Offset� m   - .��
�� 
nmbr� o      ���� 0 	theoffset 	theOffset� ��� Z   2 I������� A  2 5��� o   2 3���� 0 	theoffset 	theOffset� m   3 4���� 2� Z  8 E������� ?  8 ;��� o   8 9���� 0 	theoffset 	theOffset� m   9 :������� r   > A��� m   > ?��
�� boovtrue� o      ���� 0 base64detect base64Detect��  ��  ��  ��  � ���� L   J L�� o   J K���� 0 base64detect base64Detect��  x ��� l     ��������  ��  ��  � ��� l     ������  �   Base64 decode   � ���    B a s e 6 4   d e c o d e� ��� i   � ���� I      ������� 0 base64_decode base64_Decode� ���� o      ���� 0 mysource mySource��  ��  � k     ]�� ��� l     ��~�}�  �~  �}  � ��� l     �|���|  � - ' Use TID to quickly isolate Base64 data   � ��� N   U s e   T I D   t o   q u i c k l y   i s o l a t e   B a s e 6 4   d a t a� ��� r     ��� n    ��� 1    �{
�{ 
txdl� 1     �z
�z 
ascr� o      �y�y 0 olddelim oldDelim� ��� r    ��� m    �� ��� . C o n t e n t - T y p e :   t e x t / h t m l� n     ��� 1    
�x
�x 
txdl� 1    �w
�w 
ascr� ��� r    ��� n    ��� 4   �v�
�v 
citm� m    �u�u � o    �t�t 0 mysource mySource� o      �s�s 0 
base64_raw 
base64_Raw� ��� r    ��� b    ��� 1    �r
�r 
lnfd� 1    �q
�q 
lnfd� n     ��� 1    �p
�p 
txdl� 1    �o
�o 
ascr� ��� r    -��� n    '��� 4  $ '�n�
�n 
citm� m   % &�m�m � o    $�l�l 0 
base64_raw 
base64_Raw� o      �k�k 0 
base64_raw 
base64_Raw� ��� r   . 3��� m   . /�� ��� 
 - - - - -� n     ��� 1   0 2�j
�j 
txdl� 1   / 0�i
�i 
ascr� ��� r   4 B��� n   4 <� � 4  9 <�h
�h 
citm m   : ;�g�g   o   4 9�f�f 0 
base64_raw 
base64_Raw� o      �e�e 0 	multihtml 	multiHTML�  r   C H o   C D�d�d 0 olddelim oldDelim n      1   E G�c
�c 
txdl 1   D E�b
�b 
ascr 	 l  I I�a�`�_�a  �`  �_  	 

 l  I I�^�^     Decode Base64    �    D e c o d e   B a s e 6 4  r   I Z I  I X�]�\
�] .sysoexecTEXT���     TEXT b   I T b   I R m   I J � 
 e c h o   l  J Q�[�Z n   J Q 1   O Q�Y
�Y 
strq o   J O�X�X 0 	multihtml 	multiHTML�[  �Z   m   R S � & |   o p e n s s l   b a s e 6 4   - d�\   o      �W�W 0 basehtml baseHTML   l  [ [�V�U�T�V  �U  �T    !�S! L   [ ]"" o   [ \�R�R 0 basehtml baseHTML�S  � #$# l     �Q�P�O�Q  �P  �O  $ %&% l     �N�M�L�N  �M  �L  & '(' l     �K)*�K  )  	 HTML fix   * �++    H T M L   f i x( ,-, i   � �./. I      �J0�I�J 0 htmlfix htmlFix0 121 o      �H�H 0 evhtml evHTML2 343 o      �G�G 0 theboundary theBoundary4 5�F5 o      �E�E 0 	mycontent 	myContent�F  �I  / k    
66 787 l     �D�C�B�D  �C  �B  8 9:9 r     ;<; n    =>= 1    �A
�A 
txdl> 1     �@
�@ 
ascr< o      �?�? 0 	olddelims 	oldDelims: ?@? r    ABA c    	CDC o    �>�> 0 evhtml evHTMLD m    �=
�= 
TEXTB o      �<�< 0 	multihtml 	multiHTML@ EFE l   �;�:�9�;  �:  �9  F GHG l   �8IJ�8  I "  Test for / strip out header   J �KK 8   T e s t   f o r   /   s t r i p   o u t   h e a d e rH LML r    NON n    PQP 2   �7
�7 
cparQ o    �6�6 0 	multihtml 	multiHTMLO o      �5�5 0 
parasource 
paraSourceM RSR Z    ;TU�4�3T E     VWV n    XYX 4    �2Z
�2 
cobjZ m    �1�1 Y o    �0�0 0 
parasource 
paraSourceW m    [[ �\\  R e c e i v e d :U k   # 7]] ^_^ r   # )`a` l  # 'b�/�.b n   # 'cdc 4   $ '�-e
�- 
cobje m   % &�,�, d o   # $�+�+ 0 
parasource 
paraSource�/  �.  a o      �*�* 0 myheaderlines myHeaderlines_ f�)f r   * 7ghg n  * 1iji I   + 1�(k�'�( 0 stripheader stripHeaderk lml o   + ,�&�& 0 
parasource 
paraSourcem n�%n o   , -�$�$ 0 myheaderlines myHeaderlines�%  �'  j  f   * +h o      �#�# 0 	multihtml 	multiHTML�)  �4  �3  S opo l  < <�"�!� �"  �!  �   p qrq l  < <�st�  s   Trim ending   t �uu    T r i m   e n d i n gr vwv Z   < mxy�zx E   < C{|{ o   < A�� 0 	multihtml 	multiHTML| m   A B}} �~~  < / h t m l >y r   F X� n  F R��� I   G R����  0 extractbetween extractBetween� ��� o   G L�� 0 	multihtml 	multiHTML� ��� m   L M�� ��� . C o n t e n t - T y p e :   t e x t / h t m l� ��� m   M N�� ���  < / h t m l >�  �  �  f   F G� o      �� 0 	multihtml 	multiHTML�  z r   [ m��� n  [ g��� I   \ g����  0 extractbetween extractBetween� ��� o   \ a�� 0 	multihtml 	multiHTML� ��� m   a b�� ��� . C o n t e n t - T y p e :   t e x t / h t m l� ��� o   b c�� 0 theboundary theBoundary�  �  �  f   [ \� o      �� 0 	multihtml 	multiHTMLw ��� r   n w��� n   n u��� 2  s u�
� 
cpar� o   n s�� 0 	multihtml 	multiHTML� o      �� 0 
parasource 
paraSource� ��� l  x x����  �  �  � ��� l  x x����  � . ( Test for / strip out leading semi-colon   � ��� P   T e s t   f o r   /   s t r i p   o u t   l e a d i n g   s e m i - c o l o n� ��� Z   x ����
�	� E   x ~��� n   x |��� 4   y |��
� 
cobj� m   z {�� � o   x y�� 0 
parasource 
paraSource� m   | }�� ���  ;� k   � ��� ��� r   � ���� l  � ����� n   � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��� 0 
parasource 
paraSource�  �  � o      � �  0 myheaderlines myHeaderlines� ��� r   � ���� n  � ���� I   � �������� 0 stripheader stripHeader� ��� o   � ����� 0 
parasource 
paraSource� ���� o   � ����� 0 myheaderlines myHeaderlines��  ��  �  f   � �� o      ���� 0 	multihtml 	multiHTML� ���� r   � ���� n   � ���� 2  � ���
�� 
cpar� o   � ����� 0 	multihtml 	multiHTML� o      ���� 0 
parasource 
paraSource��  �
  �	  � ��� l  � ���������  ��  ��  � ��� l  � �������  � I C Test for empty line / clean subsequent encoding info, if necessary   � ��� �   T e s t   f o r   e m p t y   l i n e   /   c l e a n   s u b s e q u e n t   e n c o d i n g   i n f o ,   i f   n e c e s s a r y� ��� Z   �������� =  � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource� m   � ��� ���  � k   ��� ��� l  � ���������  ��  ��  � ��� l  � �������  � 5 / Test for / strip out content-transfer-encoding   � ��� ^   T e s t   f o r   /   s t r i p   o u t   c o n t e n t - t r a n s f e r - e n c o d i n g� ��� Z   � �������� E   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource� m   � ��� ��� 2 C o n t e n t - T r a n s f e r - E n c o d i n g� k   � ��� ��� r   � ���� l  � ������� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource��  ��  � o      ���� 0 myheaderlines myHeaderlines� ��� r   � ���� n  � ���� I   � �������� 0 stripheader stripHeader� ��� o   � ����� 0 
parasource 
paraSource�  ��  o   � ����� 0 myheaderlines myHeaderlines��  ��  �  f   � �� o      ���� 0 	multihtml 	multiHTML� �� r   � � n   � � 2  � ���
�� 
cpar o   � ����� 0 	multihtml 	multiHTML o      ���� 0 
parasource 
paraSource��  ��  ��  �  l  � ���	��   #  Test for / strip out charset   	 �

 :   T e s t   f o r   /   s t r i p   o u t   c h a r s e t �� Z   ����� E   � � n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 
parasource 
paraSource m   � � �  c h a r s e t k   �   r   � � l  � ����� n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 
parasource 
paraSource��  ��   o      ���� 0 myheaderlines myHeaderlines  r   � � !  n  � �"#" I   � ���$���� 0 stripheader stripHeader$ %&% o   � ����� 0 
parasource 
paraSource& '��' o   � ����� 0 myheaderlines myHeaderlines��  ��  #  f   � �! o      ���� 0 	multihtml 	multiHTML (��( r   � )*) n   � �+,+ 2  � ���
�� 
cpar, o   � ����� 0 	multihtml 	multiHTML* o      ���� 0 
parasource 
paraSource��  ��  ��  ��  ��  ��  � -.- l 		��������  ��  ��  . /0/ l 		��12��  1 5 / Test for / strip out content-transfer-encoding   2 �33 ^   T e s t   f o r   /   s t r i p   o u t   c o n t e n t - t r a n s f e r - e n c o d i n g0 454 Z  	667����6 E  	898 n  	:;: 4  
��<
�� 
cobj< m  ���� ; o  	
���� 0 
parasource 
paraSource9 m  == �>> 2 C o n t e n t - T r a n s f e r - E n c o d i n g7 k  2?? @A@ r  BCB l D����D n  EFE 4  ��G
�� 
cobjG m  ���� F o  ���� 0 
parasource 
paraSource��  ��  C o      ���� 0 myheaderlines myHeaderlinesA HIH r  (JKJ n "LML I  "��N���� 0 stripheader stripHeaderN OPO o  ���� 0 
parasource 
paraSourceP Q��Q o  ���� 0 myheaderlines myHeaderlines��  ��  M  f  K o      ���� 0 	multihtml 	multiHTMLI R��R r  )2STS n  )0UVU 2 .0��
�� 
cparV o  ).���� 0 	multihtml 	multiHTMLT o      ���� 0 
parasource 
paraSource��  ��  ��  5 WXW l 77��������  ��  ��  X YZY l 77��[\��  [ #  Test for / strip out charset   \ �]] :   T e s t   f o r   /   s t r i p   o u t   c h a r s e tZ ^_^ Z  7d`a����` E  7?bcb n  7;ded 4  8;��f
�� 
cobjf m  9:���� e o  78���� 0 
parasource 
paraSourcec m  ;>gg �hh  c h a r s e ta k  B`ii jkj r  BHlml l BFn����n n  BFopo 4  CF��q
�� 
cobjq m  DE���� p o  BC���� 0 
parasource 
paraSource��  ��  m o      ���� 0 myheaderlines myHeaderlinesk rsr r  IVtut n IPvwv I  JP��x���� 0 stripheader stripHeaderx yzy o  JK���� 0 
parasource 
paraSourcez {��{ o  KL���� 0 myheaderlines myHeaderlines��  ��  w  f  IJu o      ���� 0 	multihtml 	multiHTMLs |��| r  W`}~} n  W^� 2 \^��
�� 
cpar� o  W\���� 0 	multihtml 	multiHTML~ o      ���� 0 
parasource 
paraSource��  ��  ��  _ ��� l ee��������  ��  ��  � ��� l ee������  �   Clean content   � ���    C l e a n   c o n t e n t� ��� r  ej��� o  ef���� 0 theboundary theBoundary� n     ��� 1  gi��
�� 
txdl� 1  fg��
�� 
ascr� ��� r  kz��� n  kt��� 2 pt��
�� 
citm� o  kp���� 0 	multihtml 	multiHTML� o      ����  0 thesourceitems theSourceItems� ��� r  {���� m  {~�� ���  � n     ��� 1  ���
�� 
txdl� 1  ~�
� 
ascr� ��� r  ����� c  ����� o  ���~�~  0 thesourceitems theSourceItems� m  ���}
�} 
ctxt� o      �|�| 0 
theencoded 
theEncoded� ��� l ���{�z�y�{  �z  �y  � ��� r  ����� m  ���� ���  %� n     ��� 1  ���x
�x 
txdl� 1  ���w
�w 
ascr� ��� r  ����� n  ����� 2 ���v
�v 
citm� o  ���u�u 0 
theencoded 
theEncoded� o      �t�t  0 thesourceitems theSourceItems� ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  3 7 ;� m  ���s
�s 
TEXT� n     ��� 1  ���r
�r 
txdl� 1  ���q
�q 
ascr� ��� r  ����� c  ����� o  ���p�p  0 thesourceitems theSourceItems� m  ���o
�o 
ctxt� o      �n�n 0 
theencoded 
theEncoded� ��� l ���m�l�k�m  �l  �k  � ��� r  ����� m  ���� ���  =� n     ��� 1  ���j
�j 
txdl� 1  ���i
�i 
ascr� ��� r  ����� n  ����� 2 ���h
�h 
citm� o  ���g�g 0 
theencoded 
theEncoded� o      �f�f  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  %� n     ��� 1  ���e
�e 
txdl� 1  ���d
�d 
ascr� ��� r  ����� c  ����� o  ���c�c  0 thesourceitems theSourceItems� m  ���b
�b 
ctxt� o      �a�a 0 
theencoded 
theEncoded� ��� l ���`�_�^�`  �_  �^  � ��� r  ����� m  ���� ���  % "� n     ��� 1  ���]
�] 
txdl� 1  ���\
�\ 
ascr� ��� r  ����� n  ����� 2 ���[
�[ 
citm� o  ���Z�Z 0 
theencoded 
theEncoded� o      �Y�Y  0 thesourceitems theSourceItems� ��� r  � ��� m  ���� ���  = "� n     ��� 1  ���X
�X 
txdl� 1  ���W
�W 
ascr� ��� r  ��� c  
   o  �V�V  0 thesourceitems theSourceItems m  	�U
�U 
ctxt� o      �T�T 0 
theencoded 
theEncoded�  l �S�R�Q�S  �R  �Q    r   b  	 m  

 �  %	 l �P�O I �N�M
�N .sysontocTEXT       shor m  �L�L �M  �P  �O   n      1  �K
�K 
txdl 1  �J
�J 
ascr  r  ( n  " 2 "�I
�I 
citm o  �H�H 0 
theencoded 
theEncoded o      �G�G  0 thesourceitems theSourceItems  r  )0 m  ), �   n      1  -/�F
�F 
txdl 1  ,-�E
�E 
ascr  r  1< !  c  1:"#" o  16�D�D  0 thesourceitems theSourceItems# m  69�C
�C 
ctxt! o      �B�B 0 
theencoded 
theEncoded $%$ l ==�A�@�?�A  �@  �?  % &'& r  =D()( m  =@** �++  % %) n     ,-, 1  AC�>
�> 
txdl- 1  @A�=
�= 
ascr' ./. r  EP010 n  EJ232 2 FJ�<
�< 
citm3 o  EF�;�; 0 
theencoded 
theEncoded1 o      �:�:  0 thesourceitems theSourceItems/ 454 r  QX676 m  QT88 �99  %7 n     :;: 1  UW�9
�9 
txdl; 1  TU�8
�8 
ascr5 <=< r  Yd>?> c  Yb@A@ o  Y^�7�7  0 thesourceitems theSourceItemsA m  ^a�6
�6 
ctxt? o      �5�5 0 
theencoded 
theEncoded= BCB l ee�4�3�2�4  �3  �2  C DED r  etFGF b  epHIH m  ehJJ �KK  %I l hoL�1�0L I ho�/M�.
�/ .sysontocTEXT       shorM m  hk�-�- 
�.  �1  �0  G n     NON 1  qs�,
�, 
txdlO 1  pq�+
�+ 
ascrE PQP r  u�RSR n  uzTUT 2 vz�*
�* 
citmU o  uv�)�) 0 
theencoded 
theEncodedS o      �(�(  0 thesourceitems theSourceItemsQ VWV r  ��XYX m  ��ZZ �[[  Y n     \]\ 1  ���'
�' 
txdl] 1  ���&
�& 
ascrW ^_^ r  ��`a` c  ��bcb o  ���%�%  0 thesourceitems theSourceItemsc m  ���$
�$ 
ctxta o      �#�# 0 
theencoded 
theEncoded_ ded l ���"�!� �"  �!  �   e fgf r  ��hih m  ��jj �kk  % 0 Ai n     lml 1  ���
� 
txdlm 1  ���
� 
ascrg non r  ��pqp n  ��rsr 2 ���
� 
citms o  ���� 0 
theencoded 
theEncodedq o      ��  0 thesourceitems theSourceItemso tut r  ��vwv m  ��xx �yy  w n     z{z 1  ���
� 
txdl{ 1  ���
� 
ascru |}| r  ��~~ c  ����� o  ����  0 thesourceitems theSourceItems� m  ���
� 
ctxt o      �� 0 
theencoded 
theEncoded} ��� l ������  �  �  � ��� r  ����� m  ���� ���  % 0 9� n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� n  ����� 2 ���
� 
citm� o  ���� 0 
theencoded 
theEncoded� o      ��  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� c  ����� o  ����  0 thesourceitems theSourceItems� m  ���

�
 
ctxt� o      �	�	 0 
theencoded 
theEncoded� ��� l ������  �  �  � ��� r  ����� m  ���� ���  % C 2 % A 0� n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� n  ����� 2 ���
� 
citm� o  ���� 0 
theencoded 
theEncoded� o      ��  0 thesourceitems theSourceItems� ��� r  � ��� m  ���� ���  & n b s p ;� n     ��� 1  ��� 
�  
txdl� 1  ����
�� 
ascr� ��� r  ��� c  
��� o  ����  0 thesourceitems theSourceItems� m  	��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ��������  ��  ��  � ��� r  ��� m  �� ���  % 2 0� n     ��� 1  ��
�� 
txdl� 1  ��
�� 
ascr� ��� r   ��� n  ��� 2 ��
�� 
citm� o  ���� 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  !(��� m  !$�� ���   � n     ��� 1  %'��
�� 
txdl� 1  $%��
�� 
ascr� ��� r  )4��� c  )2��� o  ).����  0 thesourceitems theSourceItems� m  .1��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l 55��������  ��  ��  � ��� r  5@��� l 5<������ I 5<�����
�� .sysontocTEXT       shor� m  58���� 
��  ��  ��  � n     ��� 1  =?��
�� 
txdl� 1  <=��
�� 
ascr� ��� r  AL��� n  AF��� 2 BF��
�� 
citm� o  AB���� 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  MT��� m  MP�� ���  � n     ��� 1  QS��
�� 
txdl� 1  PQ��
�� 
ascr� ��� r  U`��� c  U^��� o  UZ����  0 thesourceitems theSourceItems� m  Z]��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l aa��������  ��  ��  � ��� r  ah��� m  ad   �  =� n      1  eg��
�� 
txdl 1  de��
�� 
ascr�  r  it n  in	 2 jn��
�� 
citm	 o  ij���� 0 
theencoded 
theEncoded o      ����  0 thesourceitems theSourceItems 

 r  u� c  u~ b  u| m  ux �  & # m  x{ �  6 1 ; m  |}��
�� 
TEXT n      1  ���
�� 
txdl 1  ~��
�� 
ascr  r  �� c  �� o  ������  0 thesourceitems theSourceItems m  ����
�� 
ctxt o      ���� 0 
theencoded 
theEncoded  l ����������  ��  ��    !  r  ��"#" m  ��$$ �%%  $# n     &'& 1  ����
�� 
txdl' 1  ����
�� 
ascr! ()( r  ��*+* n  ��,-, 2 ����
�� 
citm- o  ������ 0 
theencoded 
theEncoded+ o      ����  0 thesourceitems theSourceItems) ./. r  ��010 c  ��232 b  ��454 m  ��66 �77  & #5 m  ��88 �99  3 6 ;3 m  ����
�� 
TEXT1 n     :;: 1  ����
�� 
txdl; 1  ����
�� 
ascr/ <=< r  ��>?> c  ��@A@ o  ������  0 thesourceitems theSourceItemsA m  ����
�� 
ctxt? o      ���� 0 
theencoded 
theEncoded= BCB l ����������  ��  ��  C DED r  ��FGF m  ��HH �II  'G n     JKJ 1  ����
�� 
txdlK 1  ����
�� 
ascrE LML r  ��NON n  ��PQP 2 ����
�� 
citmQ o  ������ 0 
theencoded 
theEncodedO o      ����  0 thesourceitems theSourceItemsM RSR r  ��TUT m  ��VV �WW  & a p o s ;U n     XYX 1  ����
�� 
txdlY 1  ����
�� 
ascrS Z[Z r  ��\]\ c  ��^_^ o  ������  0 thesourceitems theSourceItems_ m  ����
�� 
ctxt] o      ���� 0 
theencoded 
theEncoded[ `a` l ����������  ��  ��  a bcb r  ��ded m  ��ff �gg  "e n     hih 1  ����
�� 
txdli 1  ����
�� 
ascrc jkj r  ��lml n  ��non 2 ����
�� 
citmo o  ������ 0 
theencoded 
theEncodedm o      ����  0 thesourceitems theSourceItemsk pqp r  � rsr m  ��tt �uu  \ "s n     vwv 1  ����
�� 
txdlw 1  ����
�� 
ascrq xyx r  z{z c  
|}| o  ����  0 thesourceitems theSourceItems} m  	��
�� 
ctxt{ o      ���� 0 
theencoded 
theEncodedy ~~ l ��������  ��  ��   ��� r  ��� o  ���� 0 	olddelims 	oldDelims� n     ��� 1  ��
�� 
txdl� 1  ��
�� 
ascr� ��� l ��������  ��  ��  � ��� r  !��� n ��� I  �������  0 extractbetween extractBetween� ��� o  ���� 0 
theencoded 
theEncoded� ��� m  �� ���  < / h e a d >� ���� m  �� ���  < / h t m l >��  ��  �  f  � o      ���� 0 trimhtml trimHTML� ��� l ""��������  ��  ��  � ��� r  "%��� o  "#���� 0 	mycontent 	myContent� o      ���� 0 thehtml theHTML� ��� l &&��������  ��  ��  � ��� Q  &����� k  )��� ��� r  )0��� m  )*��
�� boovfals� o      ����  0 decode_success decode_Success� ��� l 11��������  ��  ��  � ��� l 11������  �   UTF-8 conversion   � ��� "   U T F - 8   c o n v e r s i o n� ��� r  1D��� I 1B�����
�� .sysoexecTEXT���     TEXT� b  1>��� b  1:��� m  14�� ��� 
 e c h o  � n  49��� 1  59��
�� 
strq� o  45���� 0 trimhtml trimHTML� m  :=�� ��� $   |   i c o n v   - t   U T F - 8  ��  � o      ����  0 newencodedtext NewEncodedText� ��� r  EL��� n  EJ��� 1  FJ��
�� 
strq� o  EF����  0 newencodedtext NewEncodedText� o      ���� 0 the_utf8text the_UTF8Text� ��� l MM�������  ��  �  � ��� l MM�~���~  �   URL decode conversion   � ��� ,   U R L   d e c o d e   c o n v e r s i o n� ��� r  M\��� c  MZ��� b  MV��� b  MR��� m  MP�� ��� . p h p   - r   " e c h o   u r l d e c o d e (� o  PQ�}�} 0 the_utf8text the_UTF8Text� m  RU�� ���  ) ; "� m  VY�|
�| 
ctxt� o      �{�{ "0 thedecodescript theDecodeScript� ��� r  ]d��� I ]b�z��y
�z .sysoexecTEXT���     TEXT� o  ]^�x�x "0 thedecodescript theDecodeScript�y  � o      �w�w 0 
thedecoded 
theDecoded� ��� l ee�v�u�t�v  �u  �t  � ��� l ee�s���s  � 2 , Fix for apostrophe / percent / equal issues   � ��� X   F i x   f o r   a p o s t r o p h e   /   p e r c e n t   /   e q u a l   i s s u e s� ��� r  el��� m  eh�� ���  & a p o s ;� n     ��� 1  ik�r
�r 
txdl� 1  hi�q
�q 
ascr� ��� r  mx��� n  mr��� 2 nr�p
�p 
citm� o  mn�o�o 0 
thedecoded 
theDecoded� o      �n�n  0 thesourceitems theSourceItems� ��� r  y���� m  y|�� ���  '� n     ��� 1  }�m
�m 
txdl� 1  |}�l
�l 
ascr� ��� r  ����� c  ��   o  ���k�k  0 thesourceitems theSourceItems m  ���j
�j 
ctxt� o      �i�i 0 
thedecoded 
theDecoded�  l ���h�g�f�h  �g  �f    r  �� c  ��	 b  ��

 m  �� �  & # m  �� �  3 7 ;	 m  ���e
�e 
TEXT n      1  ���d
�d 
txdl 1  ���c
�c 
ascr  r  �� n  �� 2 ���b
�b 
citm o  ���a�a 0 
thedecoded 
theDecoded o      �`�`  0 thesourceitems theSourceItems  r  �� m  �� �  % n      1  ���_
�_ 
txdl 1  ���^
�^ 
ascr  !  r  ��"#" c  ��$%$ o  ���]�]  0 thesourceitems theSourceItems% m  ���\
�\ 
ctxt# o      �[�[ 0 
thedecoded 
theDecoded! &'& l ���Z�Y�X�Z  �Y  �X  ' ()( r  ��*+* c  ��,-, b  ��./. m  ��00 �11  & #/ m  ��22 �33  6 1 ;- m  ���W
�W 
TEXT+ n     454 1  ���V
�V 
txdl5 1  ���U
�U 
ascr) 676 r  ��898 n  ��:;: 2 ���T
�T 
citm; o  ���S�S 0 
thedecoded 
theDecoded9 o      �R�R  0 thesourceitems theSourceItems7 <=< r  ��>?> m  ��@@ �AA  =? n     BCB 1  ���Q
�Q 
txdlC 1  ���P
�P 
ascr= DED r  ��FGF c  ��HIH o  ���O�O  0 thesourceitems theSourceItemsI m  ���N
�N 
ctxtG o      �M�M 0 
thedecoded 
theDecodedE JKJ l ���L�K�J�L  �K  �J  K LML l ���INO�I  N  RETURN THE VALUE   O �PP   R E T U R N   T H E   V A L U EM QRQ r  ��STS o  ���H�H 0 
thedecoded 
theDecodedT o      �G�G 0 	finalhtml 	finalHTMLR UVU r  ��WXW m  ���F
�F boovtrueX o      �E�E  0 decode_success decode_SuccessV Y�DY L  ��ZZ o  ���C�C 0 	finalhtml 	finalHTML�D  � R      �B�A�@
�B .ascrerr ****      � ****�A  �@  ��  � [�?[ l 		�>�=�<�>  �=  �<  �?  - \]\ l     �;�:�9�;  �:  �9  ] ^_^ l      �8`a�8  ` t n 
======================================
// NOTIFICATIONS SUBROUTINES
=======================================
   a �bb �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   N O T I F I C A T I O N S   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
_ cdc l     �7�6�5�7  �6  �5  d efe l     �4gh�4  g &   Check for Growl and initialize    h �ii @   C h e c k   f o r   G r o w l   a n d   i n i t i a l i z e  f jkj i   � �lml I      �3�2�1�3 0 growl_check Growl_Check�2  �1  m Z     ?no�0�/n I     �.p�-�. 0 appisrunning appIsRunningp q�,q m    rr �ss 
 G r o w l�,  �-  o k   	 ;tt uvu r   	 wxw m   	 
�+
�+ boovtruex o      �*�* 0 growl_running growl_Runningv y�)y O    ;z{z k    :|| }~} r    � J    �� ��� m    �� ��� & I m p o r t   N o t i f i c a t i o n� ��� m    �� ��� ( S u c c e s s   N o t i f i c a t i o n� ��(� m    �� ��� ( F a i l u r e   N o t i f i c a t i o n�(  � o      �'�' .0 allnotificationsfiles allNotificationsFiles~ ��� r    $��� J    "�� ��� m    �� ��� & I m p o r t   N o t i f i c a t i o n� ��� m    �� ��� ( S u c c e s s   N o t i f i c a t i o n� ��&� m     �� ��� ( F a i l u r e   N o t i f i c a t i o n�&  � o      �%�% 60 enablednotificationsfiles enabledNotificationsFiles� ��$� I  % :�#�"�
�# .registernull��� ��� null�"  � �!��
�! 
appl� l 	 ' ,�� �� o   ' ,�� *0 notificationappname notificationAppName�   �  � ���
� 
anot� l 
 - .���� o   - .�� .0 allnotificationsfiles allNotificationsFiles�  �  � ���
� 
dnot� l 
 / 0���� o   / 0�� 60 enablednotificationsfiles enabledNotificationsFiles�  �  � ���
� 
iapp� o   1 6�� $0 notificationicon notificationIcon�  �$  { m    ���                                                                                  GRRR  alis    0  OS X                       ��V�H+     k	Growl.app                                                       X���E�        ����  	                Applications    ��H�      ��7�       k  OS X:Applications: Growl.app   	 G r o w l . a p p  
  O S   X  Applications/Growl.app  / ��  �)  �0  �/  k ��� l     ����  �  �  � ��� l     ����  � 2 , Check for presence of terminal-notifier.app   � ��� X   C h e c k   f o r   p r e s e n c e   o f   t e r m i n a l - n o t i f i e r . a p p� ��� i   � ���� I      ���� 00 osxnotifications_check osxNotifications_Check�  �  � O     +��� Z    *����� I   �
��	
�
 .coredoexnull���     ****� 4    ��
� 
file� o    �� 0 terminal_notifier_path  �	  � k    �� ��� r    ��� m    �
� boovtrue� o      �� 80 osxnotifications_available osxNotifications_Available� ��� L    �� m    �
� boovtrue�  �  � k     *�� ��� r     '��� m     !�
� boovfals� o      �� 80 osxnotifications_available osxNotifications_Available� �� � L   ( *�� m   ( )��
�� boovfals�   � m     ���                                                                                  sevs  alis    z  OS X                       ��V�H+     NSystem Events.app                                               5��^Q�        ����  	                CoreServices    ��H�      �^5�       N   H   G  5OS X:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  O S   X  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 1 + Annouce the count of total items to export   � ��� V   A n n o u c e   t h e   c o u n t   o f   t o t a l   i t e m s   t o   e x p o r t� ��� i   � ���� I      ������� ,0 process_notification process_Notification� ��� o      ���� 0 itemnum itemNum� ���� o      ���� 0 attnum attNum��  ��  � k     }�� ��� r     ��� m     �� ���  � o      ���� 0 	attplural 	attPlural� ��� Z    ������ =    ��� o    ���� 0 attnum attNum� m    ����  � r   
 ��� m   
 �� ���  N o� o      ���� 0 attnum attNum� ��� ?    ��� o    ���� 0 attnum attNum� m    ���� � ���� r    ��� m    �� ���  s� o      ���� 0 	attplural 	attPlural��  ��  � ��� l   ��������  ��  ��  � ��� r    #��� c    !��� l   ������ o    ���� 0 itemnum itemNum��  ��  � m     ��
�� 
nmbr� o      ���� 0 plural_test Plural_Test� ��� Z   $ { ��  ?  $ ' o   $ %���� 0 plural_test Plural_Test m   % &����  k   * O  I   * M������ 0 notification   	
	 m   + , � & I m p o r t   N o t i f i c a t i o n
  m   , - � 4 I m p o r t   T o   E v e r n o t e   S t a r t e d  b   - : b   - 8 b   - 6 b   - 4 b   - 2 b   - 0 m   - . �    N o w   P r o c e s s i n g   o   . /���� 0 itemnum itemNum m   0 1!! �""    I t e m s   w i t h   o   2 3���� 0 attnum attNum m   4 5## �$$    a t t a c h m e n t o   6 7���� 0 	attplural 	attPlural m   8 9%% �&&  . '(' o   : ?���� *0 notificationappname notificationAppName( )*) o   ? D���� (0 notificationaction notificationAction* +��+ o   D I���� $0 notificationicon notificationIcon��  ��   ,��, l  N N��������  ��  ��  ��  ��   k   R {-- ./. I   R y��0���� 0 notification  0 121 m   S T33 �44 & I m p o r t   N o t i f i c a t i o n2 565 m   T U77 �88 4 I m p o r t   T o   E v e r n o t e   S t a r t e d6 9:9 b   U f;<; b   U b=>= b   U `?@? b   U \ABA b   U ZCDC b   U XEFE m   U VGG �HH  N o w   P r o c e s s i n g  F o   V W���� 0 itemnum itemNumD m   X YII �JJ    I t e m   W i t h  B o   Z [���� 0 attnum attNum@ m   \ _KK �LL    A t t a c h m e n t> o   ` a���� 0 	attplural 	attPlural< m   b eMM �NN  .: OPO o   f k���� *0 notificationappname notificationAppNameP QRQ o   k p���� (0 notificationaction notificationActionR S��S o   p u���� $0 notificationicon notificationIcon��  ��  / T��T l  z z��������  ��  ��  ��  � U��U l  | |��������  ��  ��  ��  � VWV l     ��������  ��  ��  W XYX l     ��Z[��  Z   Results notification   [ �\\ *   R e s u l t s   n o t i f i c a t i o nY ]^] i   � _`_ I      ��a���� 00 processed_notification processed_Notificationa bcb o      ���� 0 successcount successCountc d��d o      ���� 0 errnum errNum��  ��  ` k     �ee fgf l     ��������  ��  ��  g hih l     ��jk��  j , & Notification failure : user canceled	   k �ll L   N o t i f i c a t i o n   f a i l u r e   :   u s e r   c a n c e l e d 	i mnm Z     !op����o =    qrq o     ���� 0 errnum errNumr m    ������p I    ��s���� 0 notification  s tut m    vv �ww ( F a i l u r e   N o t i f i c a t i o nu xyx m    	zz �{{  U s e r   C a n c e l l e dy |}| m   	 
~~ � " F a i l e d   t o   e x p o r t !} ��� o   
 ���� *0 notificationappname notificationAppName� ��� o    ���� (0 notificationaction notificationAction� ���� o    ���� $0 notificationicon notificationIcon��  ��  ��  ��  n ��� l  " "��������  ��  ��  � ��� r   " '��� c   " %��� l  " #������ o   " #���� 0 successcount successCount��  ��  � m   # $��
�� 
nmbr� o      ���� 0 plural_test Plural_Test� ��� l  ( (��������  ��  ��  � ��� l  ( (������  � 8 2 Notification failure : no items selected in Mail	   � ��� d   N o t i f i c a t i o n   f a i l u r e   :   n o   i t e m s   s e l e c t e d   i n   M a i l 	� ��� Z   ( ������� =  ( +��� o   ( )���� 0 plural_test Plural_Test� m   ) *������� k   . G�� ��� I   . E������� 0 notification  � ��� m   / 0�� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   0 1�� ���  I m p o r t   F a i l u r e� ��� m   1 2�� ��� @ N o   I t e m s   S e l e c t e d   I n   A p p l e   M a i l !� ��� o   2 7���� *0 notificationappname notificationAppName� ��� o   7 <���� (0 notificationaction notificationAction� ���� o   < A���� $0 notificationicon notificationIcon��  ��  � ��� l  F F��������  ��  ��  � ���� l  F F������  � : 4 Notification failure : no items exported from Mail	   � ��� h   N o t i f i c a t i o n   f a i l u r e   :   n o   i t e m s   e x p o r t e d   f r o m   M a i l 	��  � ��� =  J M��� o   J K���� 0 plural_test Plural_Test� m   K L����  � ��� k   P i�� ��� I   P g������� 0 notification  � ��� m   Q R�� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   R S�� ���  I m p o r t   F a i l u r e� ��� m   S T�� ��� 8 N o   I t e m s   E x p o r t e d   F r o m   M a i l !� ��� o   T Y���� *0 notificationappname notificationAppName� ��� o   Y ^���� (0 notificationaction notificationAction� ���� o   ^ c���� $0 notificationicon notificationIcon��  ��  � ��� l  h h��������  ��  ��  � ���� l  h h������  �   Notification success   � ��� *   N o t i f i c a t i o n   s u c c e s s��  � ��� =  l o��� o   l m���� 0 plural_test Plural_Test� m   m n���� � ��� k   r ��� ��� I   r �������� 0 notification  � ��� m   s t�� ��� ( S u c c e s s   N o t i f i c a t i o n� ��� m   t u�� ���  I m p o r t   S u c c e s s� ��� b   u ���� b   u ���� b   u ���� b   u |��� m   u v�� ��� , S u c c e s s f u l l y   E x p o r t e d  � o   v {���� 0 itemnum itemNum� m   | �� ���    I t e m   t o   t h e  � o   � ����� 0 
evnotebook 
EVnotebook� m   � ��� ��� *   N o t e b o o k   i n   E v e r n o t e� ��� o   � ��� *0 notificationappname notificationAppName� ��� o   � ��~�~ (0 notificationaction notificationAction� ��}� o   � ��|�| $0 notificationicon notificationIcon�}  ��  � � � l  � ��{�z�y�{  �z  �y    �x l  � ��w�w     Notification success    � *   N o t i f i c a t i o n   s u c c e s s�x  �  ?  � � o   � ��v�v 0 plural_test Plural_Test m   � ��u�u  	�t	 I   � ��s
�r�s 0 notification  
  m   � � � ( S u c c e s s   N o t i f i c a t i o n  m   � � �  I m p o r t   S u c c e s s  b   � � b   � � b   � � b   � � m   � � � , S u c c e s s f u l l y   E x p o r t e d   o   � ��q�q 0 itemnum itemNum m   � � �      I t e m s   t o   t h e   o   � ��p�p 0 
evnotebook 
EVnotebook m   � �!! �"" *   N o t e b o o k   i n   E v e r n o t e #$# o   � ��o�o *0 notificationappname notificationAppName$ %&% o   � ��n�n (0 notificationaction notificationAction& '�m' o   � ��l�l $0 notificationicon notificationIcon�m  �r  �t  ��  � ()( r   � �*+* m   � �,, �--  0+ o      �k�k 0 itemnum itemNum) .�j. l  � ��i�h�g�i  �h  �g  �j  ^ /0/ l     �f�e�d�f  �e  �d  0 121 l     �c�b�a�c  �b  �a  2 343 l     �`56�`  5   Trigger OSX notification   6 �77 2   T r i g g e r   O S X   n o t i f i c a t i o n4 898 i  :;: I      �_<�^�_ 0 terminal_notification  < =>= o      �]�] &0 notificationtitle notificationTitle> ?@? o      �\�\ *0 notificationmessage notificationMessage@ A�[A o      �Z�Z (0 notoficationaction notoficationAction�[  �^  ; Z     7BC�Y�XB =    DED I     �W�V�U�W 00 osxnotifications_check osxNotifications_Check�V  �U  E m    �T
�T boovtrueC k   
 3FF GHG Z   
 IJ�SKI >  
 LML o   
 �R�R (0 notoficationaction notoficationActionM m    NN �OO  J r    PQP b    RSR b    TUT m    VV �WW    - a c t i v a t e   'U o    �Q�Q (0 notoficationaction notoficationActionS m    XX �YY  'Q o      �P�P 
0 action  �S  K r    Z[Z m    \\ �]]  [ o      �O�O 
0 action  H ^�N^ I   3�M_�L
�M .sysoexecTEXT���     TEXT_ b    /`a` b    -bcb b    +ded b    )fgf b    'hih b    %jkj o    #�K�K 0 terminal_notifier_path  k m   # $ll �mm    - t i t l e   'i o   % &�J�J &0 notificationtitle notificationTitleg m   ' (nn �oo  '   - m e s s a g e   'e o   ) *�I�I *0 notificationmessage notificationMessagec m   + ,pp �qq  'a o   - .�H�H 
0 action  �L  �N  �Y  �X  9 rsr l     �G�F�E�G  �F  �E  s tut l     �D�C�B�D  �C  �B  u vwv l     �Axy�A  x #  Global notification function   y �zz :   G l o b a l   n o t i f i c a t i o n   f u n c t i o nw {�@{ i  |}| I      �?~�>�? 0 notification  ~ � o      �=�= 0 nname nName� ��� o      �<�< 0 ntitle nTitle� ��� o      �;�; 0 nmessage nMessage� ��� o      �:�: 0 nappname nAppName� ��� o      �9�9 0 naction nAction� ��8� o      �7�7 0 nicon nIcon�8  �>  } k     I�� ��� l     �6�5�4�6  �5  �4  � ��� Z     G����3� =    ��� o     �2�2 0 notifications  � m    �� ��� 
 G R O W L� k   
 .�� ��� Z   
 ,���1�0� =  
 ��� o   
 �/�/ 0 growl_running growl_Running� m    �.
�. boovtrue� O    (��� I   '�-�,�
�- .notifygrnull��� ��� null�,  � �+��
�+ 
name� o    �*�* 0 nname nName� �)��
�) 
titl� o    �(�( 0 ntitle nTitle� �'��
�' 
desc� o    �&�& 0 nmessage nMessage� �%��
�% 
appl� o     !�$�$ 0 nappname nAppName� �#��"
�# 
iapp� o   " #�!�! 0 nicon nIcon�"  � m    ���                                                                                  GRRR  alis    0  OS X                       ��V�H+     k	Growl.app                                                       X���E�        ����  	                Applications    ��H�      ��7�       k  OS X:Applications: Growl.app   	 G r o w l . a p p  
  O S   X  Applications/Growl.app  / ��  �1  �0  � �� � l  - -����  �  �  �   � ��� =  1 8��� o   1 6�� 0 notifications  � m   6 7�� ���  O S X� ��� I   ; C���� 0 terminal_notification  � ��� o   < =�� 0 ntitle nTitle� ��� o   = >�� 0 nmessage nMessage� ��� o   > ?�� 0 naction nAction�  �  �  �3  � ��� l  H H����  �  �  �  �@       <��   ; L X d p� � � �� � � � � �� �� � � � �� � �� � � � �����������������������������  � :����
�	��������� �����������������������������������������������������������������������������������������  0 tagging_switch tagging_Switch� 0 
evnotebook 
EVnotebook� 0 
defaulttag 
defaultTag�
 0 	archiving  �	 0 flagging  � 0 notifications  � 0 successcount successCount� 0 growl_running growl_Running� 80 osxnotifications_available osxNotifications_Available� 0 mytitle myTitle� 0 themessages theMessages� 0 thismessage thisMessage� 0 itemnum itemNum�  0 attnum attNum�� 0 errnum errNum�� 0 usertag userTag�� 0 evtag EVTag�� 0 	multihtml 	multiHTML��  0 thesourceitems theSourceItems�� 0 mysource mySource��  0 decode_success decode_Success�� 0 	finalhtml 	finalHTML�� 0 	myheaders 	myHeaders�� *0 mysource_paragraphs mysource_Paragraphs�� 0 
base64_raw 
base64_Raw�� 0 archive_mailbox_label  �� 0 archive_flag  �� 0 terminal_notifier_path  �� *0 notificationappname notificationAppName�� (0 notificationaction notificationAction�� $0 notificationicon notificationIcon�� 0 appisrunning appIsRunning�� 0 
item_check 
item_Check�� 0 
item_count 
item_Count��  0 tagging_dialog tagging_Dialog�� $0 default_notebook default_Notebook�� 0 tag_list Tag_List�� 0 	tag_check 	Tag_Check�� 0 notebook_list Notebook_List��  0 extractbetween extractBetween�� 0 simple_sort  �� 0 mail_process mail_Process�� &0 mail_post_process mail_post_Process�� 0 make_evernote make_Evernote�� 0 f_exists  �� 0 attachment_process  �� 0 trashfolder  �� 0 stripheader stripHeader�� 0 base64_check base64_Check�� 0 base64_decode base64_Decode�� 0 htmlfix htmlFix�� 0 growl_check Growl_Check�� 00 osxnotifications_check osxNotifications_Check�� ,0 process_notification process_Notification�� 00 processed_notification processed_Notification�� 0 terminal_notification  �� 0 notification  
�� .aevtoappnull  �   � ****�  � ������  ��  � ������  ��  � ������  ��  � ������  ��  � � ��&���������� 0 appisrunning appIsRunning�� ����� �  ���� 0 appname appName��  � ���� 0 appname appName� 0����
�� 
prcs
�� 
pnam�� � 	*�-�,�U� ��;���������� 0 
item_check 
item_Check��  ��  � ���� 0 mypath myPath� ����J������
�� afdrcusr
�� .earsffdralis        afdr
�� 
slct��  ��  �� #�j E�O�  *�,Ec  
W X  hU� ��U���������� 0 
item_count 
item_Count�� ����� �  ���� 0 themessages theMessages��  � ������ 0 themessages theMessages�� 0 
themessage 
theMessage� o��������
�� .corecnte****       ****
�� 
kocl
�� 
cobj
�� 
attc�� B� >�j Ec  OjEc  O '�[��l kh b  ��,j Ec  [OY��U� �������������  0 tagging_dialog tagging_Dialog��  ��  � ������������ 0 dialogresult  �� 0 	userinput 	userInput�� 0 	buttonsel 	ButtonSel�� 0 	thedelims 	theDelims�� 0 thetags theTags�  ��������������������������������������������������
�� 
appr
�� 
dtxt
�� 
btns
�� 
dflt
�� 
cbtn
�� 
disp
�� 
in B
�� .earsffdralis        afdr
�� .sysorpthalis        TEXT�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
bhit��  � ����
�� 
errn����  ������ 0 tag_list Tag_List�� 0 	tag_check 	Tag_Check�� 0 notebook_list Notebook_List�� � L��%���b  ����mv�������a j l a  O_ E�O�a ,E�O�a ,E�Oa kvE�W X  a Ec  O)��l+ E�OjvEc  O)�k+ Ec  O�a   )j+ Ec  Y h� ������� $0 default_notebook default_Notebook�  �  � �� *0 get_defaultnotebook get_defaultNotebook� 4���(���
� 
EVnb�  
� 
EVnd
� 
cobj
� 
pnam
� 
ctxt� 1� -*�-�[�,\Ze81E�Ob  �  ��k/�,�&Ec  Y hU� �?������ 0 tag_list Tag_List� ��� �  �~�}�~ 0 	userinput 	userInput�} 0 	thedelims 	theDelims�  � �|�{�z�y�x�w�v�| 0 	userinput 	userInput�{ 0 	thedelims 	theDelims�z 0 	olddelims 	oldDelims�y 0 thelist theList�x 0 adelim aDelim�w 0 newlist newList�v 0 anitem anItem� �u�t�s�r�q�p
�u 
ascr
�t 
txdl
�s 
kocl
�r 
cobj
�q .corecnte****       ****
�p 
citm� V��,E�O�kvE�O ?�[��l kh ���,FOjvE�O �[��l kh ���-%E�[OY��O�E�[OY��O���,FO�� �o�n�m���l�o 0 	tag_check 	Tag_Check�n �k��k �  �j�j 0 thetags theTags�m  � �i�h�g�f�i 0 thetags theTags�h 0 	finaltags 	finalTags�g 0 thetag theTag�f 0 maketag makeTag� ��e�d�c�b�a�`�_�^�]�\�[
�e 
kocl
�d 
cobj
�c .corecnte****       ****
�b 
EVtg
�a kfrmname
�` .coredoexnull���     ****
�_ 
prdt
�^ 
pnam
�] .corecrel****      � null�\  �[  �l W� PjvE�O H�[��l kh *��0j  " ���ll 	E�O��6FW X 
 hY 	*�/�6F[OY��UO�� �Z��Y�X���W�Z 0 notebook_list Notebook_List�Y  �X  � �V�U�T�S�R�Q�P�V "0 listofnotebooks listOfNotebooks�U 0 evnotebooks EVNotebooks�T "0 currentnotebook currentNotebook�S *0 currentnotebookname currentNotebookName�R  0 folders_sorted Folders_sorted�Q 0 selnotebook SelNotebook�P 0 	userinput 	userInput� ,�O�N�M�L�K�J�I�H��G��F�E�D�C�B!�A�@
�O .miscactvnull��� ��� null
�N 
EVnb
�M 
kocl
�L 
cobj
�K .corecnte****       ****
�J 
pnam�I 0 simple_sort  
�H 
appr
�G 
prmp
�F 
okbt
�E 
cnbt�D 
�C .gtqpchltns    @   @ ns  
�B 
dtxt
�A .sysodlogaskr        TEXT
�@ 
ttxt�W �� |*j OjvE�O*�-E�O �[��l kh ��,E�O��6G[OY��O)�k+ E�O���������a  E�O�f   a a a l a ,E�O�Ec  Y ��k/Ec  U� �?>�>�=���<�?  0 extractbetween extractBetween�> �;��; �  �:�9�8�: 0 
searchtext 
SearchText�9 0 	starttext 	startText�8 0 endtext endText�=  � �7�6�5�4�3�2�7 0 
searchtext 
SearchText�6 0 	starttext 	startText�5 0 endtext endText�4 0 tid  �3 0 enditems endItems�2  0 beginningtoend beginningToEnd� �1�0�/�.
�1 
ascr
�0 
txdl
�/ 
citm
�. 
ctxt�< -��,E�O���,FO��i/�-E�O���,FO��k/�-E�O���,FO�� �-|�,�+���*�- 0 simple_sort  �, �)��) �  �(�( 0 my_list  �+  � �'�&�%�$�#�"�!�' 0 my_list  �& 0 
index_list  �% 0 sorted_list  �$ 0 low_item  �# 0 i  �" 0 	this_item  �! 0 low_item_index  � � ����
�  
cobj
� 
nmbr
� 
ctxt�* vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�� �������� 0 mail_process mail_Process� ��� �  �� 0 themessages theMessages�  � ��������������
�	��������� 0 themessages theMessages� 0 thismessage thisMessage� 0 	mycontent 	myContent� 0 	replyaddr 	ReplyAddr� 0 	emaildate 	EmailDate� 0 allrecipients allRecipients� 0 torecipients toRecipients� 0 allrecipient allRecipient� 0 toname toName� 0 toemail toEmail� 0 
tocombined 
toCombined� 0 therecipient theRecipient� 0 ex  �
 0 msglink MsgLink�	 0 theboundary theBoundary� "0 themessagestart theMessagestart� 0 themessageend theMessageEnd� 0 
parasource 
paraSource� 0 myheaderlines myHeaderlines� 0 myheaderline myHeaderline� 0 	cutsource 	cutSource� 0 evhtml evHTML� 0 the_template the_Template� 7� ���������������������]������~�������������������������������2=@��nprtvx�������  $0 default_notebook default_Notebook��  0 tagging_dialog tagging_Dialog
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
subj
�� 
ctnt
�� 
raso
�� 
rpto
�� 
rdrc
�� 
trcp
�� 
pnam
�� 
radd
�� 
spac
�� 
TEXT
�� 
meid��  0 extractbetween extractBetween��  ��  
�� 
ret 
�� 
cpar
�� 
alhe
�� 
ctxt�� 0 stripheader stripHeader�� �� 0 make_evernote make_Evernote�� &0 mail_post_process mail_post_Process�)j+  O�b   �  
)j+ Y hO��[��l kh o��,Ec  	O��,E�O��,Ec  O��,E�O��,E�O��k/�-E�O�E�O ;�[��l kh ��,E�O��,E�O�_ %a %�%a %E�O��%a &E�[OY��Oa E�Oa E�Oa E�O >a E�O��k/�,E�Oa �a ,%a %E�O�a  )�a a m+ E�Y hW X   hO)b  a !a "m+ E�O_ #a $%�%E�Oa %�%_ #%a &%E^ Ob  a '-E^ O�a (,a )&a '-E^ O 8] [��l kh ] a * )] a +a ,m+ Ec  Y h[OY��O)] ] l+ -E^ O] E^ W X   hOa .�%a /%�%a 0%b  	%a 1%�%a 2%�%a 3%E^ O)b  	b  ���b  ��] b  �] b  ] a 4+ 5O)�k+ 6OP[OY�!W X   hU� ������������� &0 mail_post_process mail_post_Process�� ����� �  ���� 0 themessages theMessages��  � �������������� 0 themessages theMessages�� 0 m  �� 0 mb  �� 0 acc  �� 0 archive_mailbox  �� 0 archive  � ,�������������������������� "������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
long
�� 
fidx
�� 
mbxp
�� 
mact
�� .misccurdldt    ��� null
�� 
year
�� 
TEXT��  ��  
�� .sysodisAaleR        TEXT
�� 
insh
�� .coremovenull���     obj �� �� � ��[��l kh b  �  b  �&��,FY hOb  �  V��,E�O��,E�O*j 
�,�&�%b  %E�O ��/E�W X  a �%a %�%a %j OhO�a �l Y hOP[OY�U� ��;���������� 0 make_evernote make_Evernote�� ����� �  ���������������������� 0 mytitle myTitle�� 0 evtag EVTag�� 0 	emaildate 	EmailDate�� 0 msglink MsgLink�� 0 	mycontent 	myContent�� 0 mysource mySource� 0 theboundary theBoundary� "0 themessagestart theMessagestart� 0 themessageend theMessageEnd� 0 	myheaders 	myHeaders� 0 thismessage thisMessage� 0 evhtml evHTML� 0 
evnotebook 
EVnotebook� 0 the_template the_Template��  � ������������������ 0 mytitle myTitle� 0 evtag EVTag� 0 	emaildate 	EmailDate� 0 msglink MsgLink� 0 	mycontent 	myContent� 0 mysource mySource� 0 theboundary theBoundary� "0 themessagestart theMessagestart� 0 themessageend theMessageEnd� 0 	myheaders 	myHeaders� 0 thismessage thisMessage� 0 evhtml evHTML� 0 
evnotebook 
EVnotebook� 0 the_template the_Template� 0 n  � 0 base64detect base64Detect� 0 basehtml baseHTML� )
yo��������������������������	�

�
l����
~�
� 
Enhl
� 
Entt
� 
Ennb� 
� .EVRNcrntnull��� ��� null
� 
EV13
� .EVRNassnnull���     ****
� 
EV18
� .EVRNadtnnull���     EVnn
� 
EVdd
� 
EVsu� 0 base64_check base64_Check�  0 extractbetween extractBetween
� 
strq
� .sysoexecTEXT���     TEXT
� 
EV19� 0 htmlfix htmlFix� 0 base64_decode base64_Decode
� 
ctxt
� 
attc� 0 attachment_process  �  �  
� .ascrcmnt****      � ****�������� @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPYG��])�k+ E�O�e  �)��m+ Ec  Ob  a  )b  a �m+ Ec  Y hOb  a  )b  a �m+ Ec  Y hOa b  a ,%a %j E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FY �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY�a U�a )�k+ E�O�e  O)�k+ E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FOPY ��f  �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FY hOPY I�a  @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY hOPY �)�k+ E�O�e  )�k+ Ec  Y +)�a a  m+ Ec  O)b  ��m+ a !&Ec  O*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FOPOa " �a #-jv )��l+ $Y hUOb  kEc  W X % &hUOa 'b  %j (� �
������� 0 f_exists  � � �    �� 0 exportfolder ExportFolder�  � ���� 0 exportfolder ExportFolder� 0 mypath myPath� 0 saveloc SaveLoc� �����
����~�}
��|�{
� afdrcusr
� .earsffdralis        afdr
� 
alis�  �  
� 
kocl
� 
cfol
�~ 
prdt
�} 
pnam�| 
�{ .corecrel****      � null� , �j E�O��&O�E�W X  � *�����l� U� �z
��y�x�w�z 0 attachment_process  �y �v�v   �u�t�u 0 thismessage thisMessage�t 0 n  �x   
�s�r�q�p�o�n�m�l�k�j�s 0 thismessage thisMessage�r 0 n  �q 0 exportfolder ExportFolder�p 0 saveloc SaveLoc�o  0 theattachments theAttachments�n 0 attcount attCount�m 0 theattachment theAttachment�l 0 thefilename theFileName�k 0 trash_folder trash_Folder�j 0 success   T
��i�h�g�f
��e�d�c�b�a�`�_�^�]�\�[�Z!�Y�X�W�V�U9�T�S�R�Q�P
�i 
ascr
�h 
txdl
�g afdmdesk
�f .earsffdralis        afdr
�e 
TEXT�d 0 f_exists  
�c 
attc
�b 
kocl
�a 
cobj
�` .corecnte****       ****
�_ 
pnam
�^ 
kfil
�] 
file
�\ .coresavenull���     obj �[  �Z  
�Y 
EV21
�X .EVRNadtnnull���     EVnn
�W afdmtrsh
�V 
from
�U fldmfldu
�T 
psxp
�S 
strq
�R 
spac
�Q .sysoexecTEXT���     TEXT�P 0 trashfolder  �w �� ����,FO�j �%�&E�O)�k+ E�O��-E�OjE�O }�[��l kh ���,%E�O ��*�/l W X  hOa  � *a *�/l UUOa a a l E�Oa �a ,a ,%_ %�a ,a ,%j OP[OY��O)�k+ E�OPU� �O_�N�M�L�O 0 trashfolder  �N �K�K   �J�J 0 saveloc SaveLoc�M   �I�H�G�F�E�D�C�B�I 0 saveloc SaveLoc�H 0 trashfolderpath  �G 0 srcfolderinfo  �F 0 srcfoldername  �E 0 counter  �D 0 destfolderpath  �C 0 destfolderalias  �B 0 command   �A�@�?�>�=�<�;�:����9�8��7�6�
�A afdrtrsh
�@ .earsffdralis        afdr
�? 
utxt
�> 
alis
�= .sysonfo4asfe        file
�< 
pnam
�; 
psxp
�: 
strq�9  �8  
�7 
spac
�6 .sysoexecTEXT���     TEXT�L � ��j �&E�O��&j E�O��,E�O��,�,E�OjE�O <hZ�j  ��%�%E�Y ��%�%�%�%E�O 
��&E�W X  O�kE�[OY��O��,�,E�O��%�%�%E�O�j Oa �%E�O�j OeW 	X  f� �5��4�3�2�5 0 stripheader stripHeader�4 �1	�1 	  �0�/�0 0 
parasource 
paraSource�/ 0 myheaderlines myHeaderlines�3   �.�-�,�+�*�)�(�'�. 0 
parasource 
paraSource�- 0 myheaderlines myHeaderlines�, 0 lastheaderline  �+ 0 n  �* 0 sourcelength  �)  0 cutsourceitems cutSourceItems�( 0 	olddelims 	oldDelims�' 0 	cutsource 	cutSource 	�& �%<�$�#�"�!
�& .corecnte****       ****
�% 
cobj
�$ 
ascr
�# 
txdl
�" 
ret 
�! 
ctxt�2 y�E�O�j E�O h�� ��/E�O�kE�[OY��O�j E�O k�kh ��/�  Y h[OY��O�[�\[Z�k\Z�2E�O��,E�O���,FO��&E�O���,FO�OP� � z��
��  0 base64_check base64_Check� ��   �� 0 mysource mySource�  
 ��������� 0 mysource mySource� 0 base64detect base64Detect� 0 base64msgstr base64MsgStr� &0 base64contenttype base64ContentType� "0 base64msgoffset base64MsgOffset� *0 base64contentoffset base64ContentOffset� 0 base64offset base64Offset� 0 	theoffset 	theOffset 
����������
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
doub
� 
nmbr� 2���� MfE�O�E�O�E�O*��� E�O*��� E�O���&E�O��&E�O�� �� eE�Y hY hO�� �
��	���
 0 base64_decode base64_Decode�	 ��   �� 0 mysource mySource�   ���� 0 mysource mySource� 0 olddelim oldDelim� 0 basehtml baseHTML 
�� ����������
� 
ascr
�  
txdl
�� 
citm
�� 
lnfd
�� 
strq
�� .sysoexecTEXT���     TEXT� ^��,E�O���,FO��l/Ec  O��%��,FOb  �l/Ec  O���,FOb  �k/Ec  O���,FO�b  �,%�%j 	E�O�� ��/�������� 0 htmlfix htmlFix�� ����   �������� 0 evhtml evHTML�� 0 theboundary theBoundary�� 0 	mycontent 	myContent��   ���������������������������� 0 evhtml evHTML�� 0 theboundary theBoundary�� 0 	mycontent 	myContent�� 0 	olddelims 	oldDelims�� 0 
parasource 
paraSource�� 0 myheaderlines myHeaderlines�� 0 
theencoded 
theEncoded�� 0 trimhtml trimHTML�� 0 thehtml theHTML��  0 newencodedtext NewEncodedText�� 0 the_utf8text the_UTF8Text�� "0 thedecodescript theDecodeScript�� 0 
thedecoded 
theDecoded J����������[��}��������=g������������
����*8J��Zjx������� $68HVft������������02@����
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
cpar
�� 
cobj�� 0 stripheader stripHeader��  0 extractbetween extractBetween
�� 
citm
�� 
ctxt�� 
�� .sysontocTEXT       shor�� 

�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  ����,E�O��&Ec  Ob  �-E�O��k/� ��k/E�O)��l+ Ec  Y hOb  � )b  ��m+ 
Ec  Y )b  �m+ 
Ec  Ob  �-E�O��k/� #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/�  \��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hO��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hY hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO���,FOb  a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa a %�&��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa a j %��,FO�a -Ec  Oa ��,FOb  a &E�Oa  ��,FO�a -Ec  Oa !��,FOb  a &E�Oa "a #j %��,FO�a -Ec  Oa $��,FOb  a &E�Oa %��,FO�a -Ec  Oa &��,FOb  a &E�Oa '��,FO�a -Ec  Oa (��,FOb  a &E�Oa )��,FO�a -Ec  Oa *��,FOb  a &E�Oa +��,FO�a -Ec  Oa ,��,FOb  a &E�Oa #j ��,FO�a -Ec  Oa -��,FOb  a &E�Oa .��,FO�a -Ec  Oa /a 0%�&��,FOb  a &E�Oa 1��,FO�a -Ec  Oa 2a 3%�&��,FOb  a &E�Oa 4��,FO�a -Ec  Oa 5��,FOb  a &E�Oa 6��,FO�a -Ec  Oa 7��,FOb  a &E�O���,FO)�a 8a 9m+ 
E�O�E�O �fEc  Oa :�a ;,%a <%j =E�O�a ;,E�Oa >�%a ?%a &E�O�j =E�Oa @��,FO�a -Ec  Oa A��,FOb  a &E�Oa Ba C%�&��,FO�a -Ec  Oa D��,FOb  a &E�Oa Ea F%�&��,FO�a -Ec  Oa G��,FOb  a &E�O�Ec  OeEc  Ob  W X H IhOP� ��m�������� 0 growl_check Growl_Check��  ��   ������ .0 allnotificationsfiles allNotificationsFiles�� 60 enablednotificationsfiles enabledNotificationsFiles r����������������������� 0 appisrunning appIsRunning
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null�� @*�k+  7eEc  O� '���mvE�O���mvE�O*�b  ���b  � UY h� ����������� 00 osxnotifications_check osxNotifications_Check��  ��     �����
�� 
file
�� .coredoexnull���     ****�� ,� (*�b  /j  eEc  OeY fEc  OfU� ����������� ,0 process_notification process_Notification�� ��   ��� 0 itemnum itemNum� 0 attnum attNum��   ����� 0 itemnum itemNum� 0 attnum attNum� 0 	attplural 	attPlural� 0 plural_test Plural_Test ����!#%��37GIKM
� 
nmbr� � 0 notification  �� ~�E�O�j  �E�Y �k �E�Y hO��&E�O�k **���%�%�%�%�%�%b  b  b  �+ OPY +*���%�%�%a %�%a %b  b  b  �+ OPOP� �`���� 00 processed_notification processed_Notification� ��   ��� 0 successcount successCount� 0 errnum errNum�   ���� 0 successcount successCount� 0 errnum errNum� 0 plural_test Plural_Test �vz~��������������!,���� � 0 notification  
� 
nmbr� ��  *���b  b  b  �+ Y hO��&E�O�i  *���b  b  b  �+ OPY ��j  *���b  b  b  �+ OPY s�k  2*���b  %a %b  %a %b  b  b  �+ OPY =�k 6*a a a b  %a %b  %a %b  b  b  �+ Y hOa Ec  OP� �;���� 0 terminal_notification  � ��   ���� &0 notificationtitle notificationTitle� *0 notificationmessage notificationMessage� (0 notoficationaction notoficationAction�   ����� &0 notificationtitle notificationTitle� *0 notificationmessage notificationMessage� (0 notoficationaction notoficationAction� 
0 action   	�NVX\lnp�� 00 osxnotifications_check osxNotifications_Check
� .sysoexecTEXT���     TEXT� 8*j+  e  .�� �%�%E�Y �E�Ob  �%�%�%�%�%�%j Y h� �}�� !�� 0 notification  � �"� "  ������� 0 nname nName� 0 ntitle nTitle� 0 nmessage nMessage� 0 nappname nAppName� 0 naction nAction� 0 nicon nIcon�    ������� 0 nname nName� 0 ntitle nTitle� 0 nmessage nMessage� 0 nappname nAppName� 0 naction nAction� 0 nicon nIcon! �����������
� 
name
� 
titl
� 
desc
� 
appl
� 
iapp� 

� .notifygrnull��� ��� null� 0 terminal_notification  � Jb  �  )b  e  � *������ UY hOPY b  �  *���m+ 
Y hOP� �#��~$%�}
� .aevtoappnull  �   � ****# k    "&& '' (( )) &�|�|  �  �~  $ �{�z�{ 0 errtext errText�z 0 errnum errNum%  �y�x8�w�v�u�t�s�r�q*�p����o�n����m��l�k�j
�y 
ascr
�x 
txdl�w 0 growl_check Growl_Check�v 0 
item_check 
item_Check�u 0 
item_count 
item_Count�t ,0 process_notification process_Notification�s 0 mail_process mail_Process�r 00 processed_notification processed_Notification�q 0 errtext errText* �i�h�g
�i 
errn�h 0 errnum errNum�g  �p���o �n 0 notification  
�m 
ret 
�l 
bool
�k 
disp
�j .sysodlogaskr        TEXT�}#�Ec  O�Ec  O���,FO mb  �  
)j+ Y hO)j+ Ob  
jv ,)b  
k+ O)b  b  l+ 	O)b  
k+ 
OPY 	iEc  O)b  b  l+ OPW �X  b  e  b��  $*�a a b  b  b  a + OPY 5*a a a _ %b  	%a %_ %�%b  b  b  a + OPY 1b  f 	 b  f a & a �%_ %�%a jl Y hascr  ��ޭ