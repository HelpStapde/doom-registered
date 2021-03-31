program doomreg;

{
	Name:     "DooM 1993 Registered Simulator"
	Author:   Diicorp95
	Date:     02/12/2020 in format MM/DD/YYYY
	Time:     Evening in offset GMT+00:00
	Compiler: Turbo Pascal 7.0
	Description:
	The simulator of DooM 1993 legal notice. You
	could see it when you  finished playing  the
	game, exiting to DOS.   The program has been
	developed  for MS-DOS, version is greater or
	equals to 3.30.   Thanks to < id Software >!
}

uses
	CRT;
	
const
	{ Colors }
	BG_Box = 4;
	BG_Logo = 1;
	FG_Box = 14;

begin
	NormVideo;
	clrscr;
	gotoxy(8,1);
	textbackground(BG_Box);
	textcolor(FG_Box);
	gotoxy(8,1);
	for i:=1 to 12 do
		write(' ');
	textcolor(15);
	write(' DOOM');
	textcolor(FG_Box);
	write(', a hellish 3-D game by ');
	textbackground(BG_Logo);
	write('id');
	textbackground(BG_Box);
	write(' Software.');
	for i:=1 to 13 do
		write(' ');
	gotoxy(8,2);
	write(' ');
	for i:=1 to 64 do
		write('Д');
	write(' ');
	gotoxy(8,3);
	for i:=1 to 10 do
		write(' ');
	write('YOU ARE PLAYING THE REGISTERED VERSION OF');
	textcolor(15);
	write(' DOOM');
	textcolor(FG_Box);
	write('.');
	for i:=1 to 9 do
		write(' ');
	gotoxy(8,4);
	write('  If you haven''t paid for');
	textcolor(15);
	write(' DOOM');
	textcolor(FG_Box);
	write(', you are playing illegally. That   ');
	gotoxy(8,5);
	write(' means you owe us money. Of course, a guy like you probably owes  ');
	gotoxy(8,6);
	write('  a lot of people money--your friends, maybe even your parents.   ');
	gotoxy(8,7);
	write('   Stop being a freeloader and register');
	textcolor(15);
	write(' DOOM');
	textcolor(FG_Box);
	write('. Call us now at');
	for i:=1 to 6 do
		write(' ');
	gotoxy(8,8);
	textcolor(15);
	for i:=1 to 19 do
		write(' ');
	write('1-800-IDGAMES');
	textcolor(FG_Box);
	write('. We can help!');
	for i:=1 to 20 do
		write(' ');
	gotoxy(8,9);
	for i:=1 to 66 do
		write(' ');
	gotoxy(8,10);
	write(' If you have registered');
	textcolor(15);
	write(' DOOM');
	textcolor(FG_Box);
	write(', feel confident that you have done   ');
	gotoxy(8,11);
	write('    the right thing--not only for yourself, but for the World.    ');
	gotoxy(8,12);
	write('   We hope you enjoy playing');
	textcolor(15);
	write(' DOOM');
	textcolor(FG_Box);
	write('. We enjoyed making it for you.  ');
	gotoxy(8,13);
	for i:=1 to 66 do
		write(' ');
	gotoxy(8,14);
	write('      If you have any problems playing');
	textcolor(15);
	write(' DOOM');
	textcolor(FG_Box);
	write(', please call our      ');
	gotoxy(8,15);
	write('             technical support line at (214) 613-0132.            ');
	gotoxy(8,16);
	write('                                                                  ');
	gotoxy(8,17);
	write('            ');
	textcolor(15);
	write('     DOOM');
	textcolor(FG_Box);
	write(' WAS CREATED BY ');
	textbackground(BG_Logo);
	write('id');
	textbackground(BG_Box);
	write(' SOFTWARE:');
	for i:=1 to 17 do
		write(' ');
	gotoxy(8,18);
	for i:=1 to 7 do
		write(' ');
	textcolor(11);
	write('Programming');
	textcolor(FG_Box);
	write(': John Carmack, John Romero, Dave Taylor');
	for i:=1 to 8 do
		write(' ');
	gotoxy(8,19);
	for i:=1 to 18 do
		write(' ');
	textcolor(11);
	write('Art');
	textcolor(FG_Box);
	write(': Adrian Carmack, Kevin Cloud');
	for i:=1 to 16 do
		write(' ');
	gotoxy(8,20);
	for i:=1 to 12 do
		write(' ');
	textcolor(11);
	write('Design');
	textcolor(FG_Box);
	write(': Sandy Petersen      ');
	textcolor(11);
	write('BIZ');
	textcolor(FG_Box);
	write(': Jay Wilbur           ');
	gotoxy(8,21);
	write('             ');
	textcolor(11);
	write('Tech Support');
	textcolor(FG_Box);
	write(': Shawn Green, American McGee            ');
	gotoxy(8,22);
	write('                                                                  ');
	textcolor(7);
	textbackground(0);
	for i:=1 to 66 do
		write(' ');
	gotoxy(8,23);
	for i:=1 to 66 do
		write(' ');
	asm
		mov		ax,$4C00
		int		$21
	end;
	exit;
end.