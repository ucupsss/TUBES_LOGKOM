% ==== main.pl ====
:- consult('pokemon_game.pl').
:- consult('pokemon.pl').
:- consult('map.pl').
:- consult('player.pl').
:- consult('battle.pl').
:- consult('utils.pl').

% Entry point
:- initialization(startGame).