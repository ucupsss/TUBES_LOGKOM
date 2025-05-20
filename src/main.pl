% ==== main.pl ====
:- include('pokemon.pl').
:- include('map.pl').
:- include('tas.pl').

% Entry point
startGame :-
    write('--------Selamat datang di game POKEMONNNN---------'),nl,
    spawnPlayer,
    write('Masukkan username anda : '),
    read(Username),
    write('Halo '),write(Username), write(', Selamat bermain game'),nl,
    tampilkanPokemonCommon.

tampilkanPokemonCommon :-
    write('Daftar Pokemon yang tersedia (common) :'), nl,
    forall(pokemon(Nama, common, _, _, _, _, _, _, _, _),
           (write('- '), write(Nama), nl)).