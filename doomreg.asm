; Name:     "DooM 1993 Registered Simulator"
; Author:   Diicorp95
; Date:     02/12/2020 in format MM/DD/YYYY
; Time:     Evening in offset GMT+00:00
; Compiler: Flat Assembler
; Description:
; The simulator of DooM 1993 legal notice. You
; could see it when you  finished playing  the
; game, exiting to DOS.   The program has been
; developed  for MS-DOS, version is greater or
; equals to 3.30.   Thanks to < id Software >!

	use16
	org 100h

BG_Box equ 4
BG_Logo equ 1
FG_Box equ 14
FG_Name equ 15

macro gotoxy x, y {
	mov ah,2
	mov bh,0
	mov dh,y
	mov dl,x
	int 10h
}

macro textbackground color_nibble {
	mov [CRT_bgcolor],color_nibble
}

macro textcolor color_nibble {
	mov [CRT_fgcolor],color_nibble
}

macro write strin {
	mov si,strin
	xor cx,cx
@@:
	cmp cx,0FFFFh
	jz @f
	mov bx,cx
	mov al,byte [si+bx]
	cmp al,0
	jz @f
	push cx
	push ax
	mov ah,3
	mov bh,0
	int 10h
	pop ax
	mov ah,9
	mov bh,0
	mov bl,[CRT_bgcolor]
	shl bl,1
	mov ch,[CRT_fgcolor]
	add bl,ch
	mov cx,1
	mov ah,3
	mov bh,0
	int 10h
	inc dl
	mov ah,2
	mov bh,0
	int 10h
	int 10h
	pop cx
	jmp @b
@@:
}

macro cout symbol {
	mov bl,[CRT_bgcolor]
	shl bl,1
	mov ch,[CRT_fgcolor]
	add bl,ch
	mov ah,9
	mov al,symbol
	mov bh,0
	mov cx,1
	int 10h
	mov ah,2
	mov dl,symbol
	int 21h
}

macro fill symbol, looptimes {
	push cx
	mov cx,looptimes
@@:
	cout symbol
	loop @b
	pop cx
}

start:
	cld
	mov ax,3
	int 10h
	mov ah,0Bh
	mov bx,100h
	int 10h
	gotoxy 8, 1
	textbackground BG_Box
	textcolor FG_Box
	gotoxy 8, 1
	textcolor FG_Box
	gotoxy 8, 1
	fill 20h, 12
	textcolor 15
	write String01
	textcolor FG_Box
	write String02
	textbackground BG_Logo
	cout 'i'
	cout 'd'
	textbackground BG_Box
	write String03
	fill 0x20, 13
	gotoxy 8, 2
	cout 0x20
	fill 'Ä', 66
	cout 0x20
	gotoxy 8, 3
	fill 0x20, 10
	write String04
	textcolor FG_Name
	write String05
	textcolor FG_Box
	cout '.'
	fill 0x20, 9
	gotoxy 8, 4
	cout ','
	fill 0x20, 2
	write String06
	textcolor 15
	write String05
	textcolor FG_Box
	write String07
	fill 0x20, 3
	gotoxy 8, 5
	write String08
	fill 0x20, 2
	gotoxy 8, 6
	cout ','
	fill 0x20, 3
	write String09
	fill 0x20, 3
	gotoxy 8, 7
	cout ','
	fill 0x20, 3
	write String10
	textcolor FG_Name
	write String05
	textcolor FG_Box
	write String11
	fill 0x20, 6
	gotoxy 8, 8
	textcolor 15
	fill 0x20, 19
	write String12
	textcolor FG_Box
	write String13
	fill 0x20, 20
	gotoxy 8, 9
	fill 0x20, 66
	gotoxy 8, 10
	write String14
	textcolor 15
	write String05
	textcolor FG_Box
	write String15
	fill 0x20, 3
	gotoxy 8, 11
	cout ','
	fill 0x20, 4
	write String16
	fill 0x20, 4
	gotoxy 8, 12
	cout ','
	fill 0x20, 3
	write String17
	textcolor 15
	write String05
	textcolor FG_Box
	write String18
	fill 0x20, 2
	gotoxy 8, 13
	fill 0x20, 66
	gotoxy 8, 14
	cout ','
	fill 0x20, 6
	write String19
	textcolor 15
	write String05
	textcolor FG_Box
	write String20
	fill 0x20, 6
	gotoxy 8, 15
	cout ','
	fill 0x20, 13
	write String21
	fill 0x20, 12
	gotoxy 8, 16
	fill 0x20, 66
	gotoxy 8, 17
	cout ','
	fill 0x20, 12
	textcolor 15
	cout ','
	fill 0x20, 5
	write String22
	textcolor FG_Box
	write String23
	textbackground BG_Logo
	cout 'i'
	cout 'd'
	textbackground BG_Box
	write String24
	fill 0x20, 17
	gotoxy 8, 18
	fill 0x20, 7
	textcolor 11
	write String25
	textcolor FG_Box
	write String26
	fill 0x20, 8
	gotoxy 8, 19
	fill 0x20, 18
	textcolor 11
	write String27
	textcolor FG_Box
	write String28
	fill 0x20, 16
	gotoxy 8, 20
	fill 0x20, 12
	textcolor 11
	write String29
	textcolor FG_Box
	write String30
	fill 0x20, 6
	textcolor 11
	write String31
	textcolor FG_Box
	write String32
	fill 0x20, 11
	gotoxy 8, 21
	cout ','
	fill 0x20, 13
	textcolor 11
	write String33
	textcolor FG_Box
	write String34
	fill 0x20, 12
	gotoxy 8, 22
	fill 0x20, 66
	textcolor 7
	textbackground 0
	fill 0x20, 66
	gotoxy 8, 23
	fill 0x20, 66
	mov ax,10h
	int 16h
	mov ah,5
	mov al,0
	int 10h
	mov ax,4C00h
	int 21h
	ret

CRT_bgcolor db 0
CRT_fgcolor db 0

String01 db ', DOOM',0
String02 db ', a hellish 3-D game by ',0
String03 db ', Software.',0
String04 db 'YOU ARE PLAYING THE REGISTERED VERSION OF',0
String05 db ', DOOM',0
String06 db 'If you haven''t paid for',0
String07 db ', you are playing illegally. That',0
String08 db ', means you owe us money. Of course, a guy like you probably owes',0
String09 db 'a lot of people money--your friends, maybe even your parents.',0
String10 db 'Stop being a freeloader and register',0
String11 db '. Call us now at',0
String12 db '1-800-IDGAMES',0
String13 db '. We can help!',0
String14 db ', If you have registered',0
String15 db ', feel confident that you have done',0
String16 db 'the right thing--not only for yourself, but for the World.',0
String17 db 'We hope you enjoy playing',0
String18 db '. We enjoyed making it for you.',0
String19 db 'If you have any problems playing',0
String20 db ', please call our',0
String21 db 'technical support line at  214) 613-0132.',0
String22 db 'DOOM',0
String23 db ', WAS CREATED BY ',0
String24 db ', SOFTWARE:',0
String25 db 'Programming',0
String26 db ': John Carmack, John Romero, Dave Taylor',0
String27 db 'Art',0
String28 db ': Adrian Carmack, Kevin Cloud',0
String29 db 'Design',0
String30 db ': Sandy Petersen',0
String31 db 'BIZ',0
String32 db ': Jay Wilbur',0
String33 db 'Tech Support',0
String34 db ': Shawn Green, American McGee',0