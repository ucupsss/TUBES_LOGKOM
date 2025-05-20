% ==== main.pl ====
:- include('pokemon.pl').
:- include('map.pl').
:- include('tas.pl').

% Entry point
startGame :-
    write('--------Selamat datang di game POKEMONNNN---------'),nl,
    spawnPlayer,
    initBag,
    write('Masukkan username anda : '),
    read(Username),
    write('Halo '),write(Username), write(', Selamat bermain game'),nl,
    tampilkanPokemonCommon,
    write('Pilih 2 pokemon di atas : '),nl,
    write('Pokemon 1 : '),
    read(Pokemon1),nl,
    write('Pokemon 2 : '),
    read(Pokemon2),


tampilkanPokemonCommon :-
    write('Daftar Pokemon yang tersedia (common) :'), nl,
    forall(pokemon(Nama, common, _, _, _, _, _, _, _, _),
           (write('- '), write(Nama), nl)).