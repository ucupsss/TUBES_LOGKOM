:- include('pokemon.pl').
:- dynamic(infoPetak/4).
% inisialisasi posisi spawn player

% fakta
% baris 1

infoPetak(0, 0,'#', articuno).
infoPetak(0, 1,'C', pidgey).
infoPetak(0, 2,'#', none).
infoPetak(0, 3,' ', none).
infoPetak(0, 4,' ', none).
infoPetak(0, 5,'#', snorlax).
infoPetak(0, 6,'#', none).
infoPetak(0, 7,'C', charmander).

% baris 2
infoPetak(1, 0,'#', none).
infoPetak(1, 1,'#', none).
infoPetak(1, 2,' ', none).
infoPetak(1, 3,'C', squirtle).
infoPetak(1, 4,'#', none).
infoPetak(1, 5,' ', none).
infoPetak(1, 6,' ', none).
infoPetak(1, 7,'#', none).

% baris 3
infoPetak(2,0,'#',pikachu).
infoPetak(2,1,' ',none).
infoPetak(2,2,' ',none).
infoPetak(2,3,' ',none).
infoPetak(2,4,'#',none).
infoPetak(2,5,' ',none).
infoPetak(2,6,'#',wartortle).
infoPetak(2,7,' ',none).

% baris 4
infoPetak(3,0,'#',geodude).
infoPetak(3,1,' ',none).
infoPetak(3,2,'#',none).
infoPetak(3,3,'#',snorlax).
infoPetak(3,4,' ',none).
infoPetak(3,5,' ',none).
infoPetak(3,6,' ',none).
infoPetak(3,7,'C',charmeleon).

% baris 5
infoPetak(4,0,' ',none).
infoPetak(4,1,'C',squirtle).
infoPetak(4,2,' ',none).
infoPetak(4,3,'#',none).
infoPetak(4,4,'#',none).
infoPetak(4,5,' ',none).
infoPetak(4,6,'#',pikachu).
infoPetak(4,7,' ',none).

% baris 6
infoPetak(5,0,'#',charmander).
infoPetak(5,1,' ',none).
infoPetak(5,2,' ',none).
infoPetak(5,3,'#',geodude).
infoPetak(5,4,' ',none).
infoPetak(5,5,' ',none).
infoPetak(5,6,'#',wartortle).
infoPetak(5,7,' ',none).

% baris 7
infoPetak(6,0,' ',none).
infoPetak(6,1,' ',none).
infoPetak(6,2,' ',none).
infoPetak(6,3,' ',none).
infoPetak(6,4,' ',none).
infoPetak(6,5,' ',none).
infoPetak(6,6,' ',none).
infoPetak(6,7,' ',none).

% baris 8
infoPetak(7,0,'C',charmeleon).
infoPetak(7,1,' ',none).
infoPetak(7,2,'#',pikachu).
infoPetak(7,3,'#',none).
infoPetak(7,4,' ',none).
infoPetak(7,5,'#',snorlax).
infoPetak(7,6,' ',none).
infoPetak(7,7,'C',pidgey).


% rule
spawnPlayer :-
    repeat,
    random(0, 8, Baris),
    random(0,8,Kolom),
    infoPetak(Baris,Kolom,Simbol,Pokemon),
    Simbol \= '#', % tidak bisa spawn di dinding
    retract(infoPetak(Baris,Kolom,_,Pokemon)), % hapus fakta lama
    assertz(infoPetak(Baris,Kolom,'P',Pokemon)), % tambah fakta baru
    !.

showMap :-
    writeLine(8),nl,
    printBaris(0).

% loop untuk baris
printBaris(8) :- !.
printBaris(Baris) :-
    printKolom(Baris,0),write('|'),nl,
    writeLine(8),nl,
    NewBaris is Baris + 1,
    printBaris(NewBaris).

% loop untuk kolom 
printKolom(_,8) :- !.
printKolom(Baris,Kolom) :-
    infoPetak(Baris, Kolom, Simbol,_),
    format('| ~w ', [Simbol]),
    NextKolom is Kolom + 1,
    printKolom(Baris, NextKolom).


writeLine(0) :- !.
writeLine(N) :-
    N > 0,
    write(' ---'),
    N1 is N - 1,
    writeLine(N1).
