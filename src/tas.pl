% Fakta dinamis
:- dynamic(bag/1).

% Inisialisasi tas
initBag :-
    generateItems(pokeball_empty, 20, Items),
    retractall(bag(_)),
    asserta(bag(Items)).

% Membuat list item sebanyak N
generateItems(_, 0, []) :- !.
generateItems(Item, N, [Item | Rest]) :-
    N > 0,
    N1 is N - 1,
    generateItems(Item, N1, Rest).

% Menambahkan item ke tas
addItem(Item) :-
    ( bag(Bag) ->
        length(Bag, Len),
        ( Len >= 40 ->
            write('Tas sudah penuh! Tidak bisa menambahkan item.'), nl
        ;
            append(Bag, [Item], NewBag),
            retractall(bag(_)),
            assertz(bag(NewBag)),
            write('Item berhasil ditambahkan: '), write(Item), nl
        )
    ;
        write('Tas belum diinisialisasi.'), nl
    ).

% Menghapus item berdasarkan indeks slot (1-based)
removeItemAt(Index) :-
    ( bag(Bag) ->
        length(Bag, Len),
        ( Index < 1 ; Index > Len ->
            write('Indeks di luar jangkauan!'), nl
        ;
            nth1(Index, Bag, _, NewBag),
            retractall(bag(_)),
            assertz(bag(NewBag)),
            write('Item pada slot '), write(Index), write(' dihapus.'), nl
        )
    ;
        write('Tas belum diinisialisasi.'), nl
    ).

% Mengambil item tertentu (hanya bisa 1)
takeItem(Item) :-
    ( bag(Bag) ->
        ( select(Item, Bag, NewBag) ->
            retractall(bag(_)),
            assertz(bag(NewBag)),
            write('Item diambil dari tas: '), write(Item), nl
        ;
            write('Item tidak ditemukan di tas: '), write(Item), nl
        )
    ;
        write('Tas belum diinisialisasi.'), nl
    ).

% Cek apakah tas penuh
bagIsFull :-
    bag(B), length(B, L), L >= 40.

bagIsNotFull :-
    bag(B), length(B, L), L < 40.

% Perintah menampilkan isi tas
showBag :-
    ( bag(Items) ->
        write('========================================== INVENTORY (TAS) ==================================================='), nl,
        printBagGrid(Items, 0), nl,write('=======================================================================================================')
    ;
        write('Tas belum diinisialisasi.'), nl
    ).

printBagGrid(_, Index) :- Index >= 40, !.
printBagGrid(Items, Index) :-
    printHorizontalLine(8),
    printBagRow(Items, Index, 8),
    NewIndex is Index + 8,
    printBagGrid(Items, NewIndex).

printHorizontalLine(0) :- write('+'), nl, !.
printHorizontalLine(N) :-
    write('+-------------'),
    N1 is N - 1,
    printHorizontalLine(N1).

printBagRow(_, I, 0) :- write('|'), nl, !.
printBagRow(Items, I, N) :-
    Index is I + 1,
    ( nth1(Index, Items, Item) ->
        shortItemName(Item, Name)
    ; Name = '             '
    ),
    write('|'), write(Name),
    I1 is I + 1,
    N1 is N - 1,
    printBagRow(Items, I1, N1).

% Nama item yang ditampilkan
shortItemName(pokeball_empty, 'Pokeball     ').
shortItemName(pokeball_full(_), 'Pokemon      ').
shortItemName(potion, 'Potion       ').
shortItemName(super_potion, 'SuperPtn     ').
shortItemName(hyper_potion, 'HyperPtn     ').
shortItemName(_, '???          ').
