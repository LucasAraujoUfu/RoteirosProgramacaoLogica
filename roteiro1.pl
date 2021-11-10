% 3 Relacionamentos familiares

pai(carlos,ana).
pai(carlos,juliana).

% Ex. 1
mae(maria,ana).
mae(maria,juliana).

homem(carlos).
mulher(ana).
mulher(juliana).

/* Ex. 2

?-pai(X,ana).
?-pai(X,Y).

*/

% Ex. 3
/*

?-pai(joao,X),pai(X,Y).
?-pai(X,juliana),pai(X,ana).

*/
avo(X,Y) :- pai(X,Z),pai(Z,Y).
avo(X,Y) :- pai(X,Z),mae(Z,Y).

% Ex. 4
parent(X,Y) :- pai(X,Y).
parent(X,Y) :- mae(X,Y).
parent(X,Y) :- child(Y,X).

child(X,Y) :- parent(Y,X).
child(X,Y) :- filho(X,Y).
child(X,Y) :- filha(X,Y).

filha(X,Y) :- child(X,Y), mulher(X).
filho(X,Y) :- child(X,Y), homem(X).

siblings(X,Y) :- pai(Z,X),pai(Z,Y).
siblings(X,Y) :- mae(Z,X),mae(Z,Y).
siblings(X,Y) :- irmao(X,Y);irma(X,Y).

irmao(X,Y) :- homem(X),siblings(X,Y).
irma(X,Y) :- mulher(X),siblings(X,Y).

ti(X,Y) :- parent(Z,Y),sibling(Z,X).
tio(X,Y) :- homem(X),ti(X,Y).
tia(X,Y) :- mulher(X),ti(X,Y).

prim(X,Y) :- parent(Z,X),ti(Z,Y).
prim(X,Y) :- parent(Z,Y),ti(Z,X).
primo(X,Y) :- homem(X),prim(X,Y).
prima(X,Y) :- mulher(X),prim(X,Y).

grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
avô(X,Y) :- homem(X),grandparent(X,Y).
avó(X,Y) :- mulher(X),grandparent(X,Y).


%4 Mundo do Harry Potter

elfo_domestico(dobby).

bruxo(hermione).
bruxo(`McGonagall`).
bruxo(rita_skeeter).

magico(X):- elfo_domestico(X).
magico(X):- feiticeiro(X).
magico(X):- bruxo(X).

/* Ex. 5
?- magico(elfo_domestico).
ERROR: Undefined procedure: feiticeiro/1
ERROR: In:
ERROR:    [9] feiticeiro(elfo_domestico)
ERROR:    [8] magico(elfo_domestico) at /home/lucas/Documentos/Prolog/teste.pl:73
ERROR:    [7] <user>
   Exception: (9) feiticeiro(elfo_domestico) ? creep
   Exception: (8) magico(elfo_domestico) ? creep

*/

/* Ex. 6
?- feiticeiro(harry).
ERROR: Undefined procedure: feiticeiro/1 (DWIM could not correct goal)

*/

/* Ex. 7
?- magico(feiticeiro).
ERROR: Undefined procedure: feiticeiro/1
ERROR: In:
ERROR:    [9] feiticeiro(feiticeiro)
ERROR:    [8] magico(feiticeiro) at /home/lucas/Documentos/Prolog/teste.pl:73
ERROR:    [7] <user>
   Exception: (9) feiticeiro(feiticeiro) ? creep
   Exception: (8) magico(feiticeiro) ? creep
*/

/* Ex. 8
?- magico(`McGonagall`).
ERROR: Undefined procedure: feiticeiro/1
ERROR: In:
ERROR:    [9] feiticeiro([77,99|...])
ERROR:    [8] magico([77,99|...]) at /home/lucas/Documentos/Prolog/teste.pl:73
ERROR:    [7] <user>
   Exception: (9) feiticeiro([77, 99, 71, 111, 110, 97, 103, 97|...]) ? creep
   Exception: (8) magico([77, 99, 71, 111, 110, 97, 103, 97|...]) ? creep

*/

/* Ex. 9
?- magico(Hermione).
Hermione = dobby ;
ERROR: Undefined procedure: feiticeiro/1
ERROR: In:
ERROR:    [9] feiticeiro(_22226)
ERROR:    [8] magico(_22250) at /home/lucas/Documentos/Prolog/teste.pl:73
ERROR:    [7] <user>
   Exception: (9) feiticeiro(_21638) ? creep
   Exception: (8) magico(_21638) ? creep

*/

% 5 - Rastreando prdicados

f(a).
f(b).

g(a).
g(b).

h(b).

k(X) :- f(X),g(X),h(X).

%6 minigramatica 

palavra(artigo,um).
palavra(artigo,qualquer).
palavra(nome,criminoso).
palavra(nome,'mac lanche feliz').
palavra(verbo,come).
palavra(verbo,adora).

sentenca(Palavra1,Palavra2,Palavra3,Palavra4,Palavra5) :-  
  palavra(artigo,Palavra1),
  palavra(nome,Palavra2),
  palavra(verbo,Palavra3),
  palavra(artigo,Palavra4),
  palavra(nome,Palavra5).

% Ex. 10 ?-sentenca(X,Y,Z,A,B).

/* Ex. 11
X = A, A = um,
Y = B, B = criminoso,
Z = come ;
X = A, A = um,
Y = criminoso,
Z = come,
B = 'mac lanche feliz' ;
X = um,
Y = B, B = criminoso,
Z = come,
A = qualquer ;
X = um,
Y = criminoso,
Z = come,
A = qualquer,
B = 'mac lanche feliz' ;
X = A, A = um,
Y = B, B = criminoso,
Z = adora ;
X = A, A = um,
Y = criminoso,
Z = adora,
B = 'mac lanche feliz' ;
X = um,
Y = B, B = criminoso,
Z = adora,
A = qualquer ;
X = um,
Y = criminoso,
Z = adora,
A = qualquer,
B = 'mac lanche feliz' ;
X = A, A = um,
Y = 'mac lanche feliz',
Z = come,
B = criminoso ;
X = A, A = um,
Y = B, B = 'mac lanche feliz',
Z = come ;
X = um,
Y = 'mac lanche feliz',
Z = come,
A = qualquer,
B = criminoso ;
X = um,
Y = B, B = 'mac lanche feliz',
Z = come,
A = qualquer ;
X = A, A = um,
Y = 'mac lanche feliz',
Z = adora,
B = criminoso ;
X = A, A = um,
Y = B, B = 'mac lanche feliz',
Z = adora ;
X = um,
Y = 'mac lanche feliz',
Z = adora,
A = qualquer,
B = criminoso ;
X = um,
Y = B, B = 'mac lanche feliz',
Z = adora,
A = qualquer ;
X = qualquer,
Y = B, B = criminoso,
Z = come,
A = um ;
X = qualquer,
Y = criminoso,
Z = come,
A = um,
B = 'mac lanche feliz' ;
X = A, A = qualquer,
Y = B, B = criminoso,
Z = come ;
X = A, A = qualquer,
Y = criminoso,
Z = come,
B = 'mac lanche feliz' ;
X = qualquer,
Y = B, B = criminoso,
Z = adora,
A = um ;
X = qualquer,
Y = criminoso,
Z = adora,
A = um,
B = 'mac lanche feliz' ;
X = A, A = qualquer,
Y = B, B = criminoso,
Z = adora ;
X = A, A = qualquer,
Y = criminoso,
Z = adora,
B = 'mac lanche feliz' ;
X = qualquer,
Y = 'mac lanche feliz',
Z = come,
A = um,
B = criminoso ;
X = qualquer,
Y = B, B = 'mac lanche feliz',
Z = come,
A = um ;
X = A, A = qualquer,
Y = 'mac lanche feliz',
Z = come,
B = criminoso ;
X = A, A = qualquer,
Y = B, B = 'mac lanche feliz',
Z = come ;
X = qualquer,
Y = 'mac lanche feliz',
Z = adora,
A = um,
B = criminoso ;
X = qualquer,
Y = B, B = 'mac lanche feliz',
Z = adora,
A = um ;
X = A, A = qualquer,
Y = 'mac lanche feliz',
Z = adora,
B = criminoso ;
X = A, A = qualquer,
Y = B, B = 'mac lanche feliz',
Z = adora.

*/ 


% 7 Alunos

aluno(joao,poo).
aluno(pedro,poo).
aluno(maria,pl).
aluno(rui,pl).
aluno(manuel,pl).
aluno(pedro,pl).
aluno(rui,ed1).

/* Ex. 12
?- listing.

:- dynamic exception/3.
:- multifile exception/3.


:- dynamic file_search_path/2.
:- multifile file_search_path/2.

file_search_path(library, A) :-
	library_directory(A).
file_search_path(swi, A) :-
	system:current_prolog_flag(home, A).
file_search_path(foreign, swi(B)) :-
    system:
    (   current_prolog_flag(arch, A),
	atom_concat('lib/', A, B)
    ).
file_search_path(foreign, swi(A)) :-
    system:
    (   (   current_prolog_flag(windows, true)
	->  A=bin
	;   A=lib
	)
    ).
file_search_path(path, C) :-
    system:
    (   getenv('PATH', A),
	(   current_prolog_flag(windows, true)
	->  atomic_list_concat(B, ;, A)
	;   atomic_list_concat(B, :, A)
	),
	'$member'(C, B),
	'$no-null-bytes'(C)
    ).
file_search_path(user_profile, app_preferences('.')).
file_search_path(app_data, A) :-
	'$toplevel':catch(expand_file_name('~/lib/swipl', [A]), _, fail).
file_search_path(app_preferences, A) :-
	'$toplevel':catch(expand_file_name(~, [A]), _, fail).
file_search_path(autoload, library('.')).
file_search_path(pack, app_data(pack)).
file_search_path(pack, swi(pack)).
file_search_path(library, A) :-
	'$pack':pack_dir(_, prolog, A).
file_search_path(foreign, A) :-
	'$pack':pack_dir(_, foreign, A).
file_search_path(pce, A) :-
	link_xpce:pcehome_(A).
file_search_path(library, pce('prolog/lib')).
file_search_path(foreign, pce(B)) :-
    link_xpce:
    (   current_prolog_flag(arch, A),
	atom_concat('lib/', A, B)
    ).

:- dynamic prolog_file_type/2.
:- multifile prolog_file_type/2.

prolog_file_type(pl, prolog).
prolog_file_type(prolog, prolog).
prolog_file_type(qlf, prolog).
prolog_file_type(qlf, qlf).
prolog_file_type(A, executable) :-
	system:current_prolog_flag(shared_object_extension, A).

:- multifile prolog_predicate_name/2.


:- dynamic resource/3.
:- multifile resource/3.


:- dynamic expand_query/4.
:- multifile expand_query/4.


:- dynamic expand_answer/2.
:- multifile expand_answer/2.


:- thread_local thread_message_hook/3.
:- dynamic thread_message_hook/3.
:- volatile thread_message_hook/3.


:- dynamic message_hook/3.
:- multifile message_hook/3.


:- dynamic portray/1.
:- multifile portray/1.


:- dynamic prolog_exception_hook/4.
:- multifile prolog_exception_hook/4.

prolog_exception_hook(error(A, context(D, B)), error(A, context(prolog_stack(J), B)), G, C) :-
    prolog_stack:
    (   current_prolog_flag(backtrace, true),
	(   atom(C)
	->  debug(backtrace,
		  'Got uncaught (guard = ~q) exception ~p (Ctx0=~p)',
		  [C, A, D]),
	    stack_guard(C)
	;   prolog_frame_attribute(C, predicate_indicator, E),
	    debug(backtrace,
		  'Got exception ~p (Ctx0=~p, Catcher=~p)',
		  [A, D, E]),
	    stack_guard(E)
	),
	(   current_prolog_flag(backtrace_depth, F)
	->  F>0
	;   F=20
	),
	get_prolog_backtrace(G, F, H),
	debug(backtrace, 'Stack = ~p', [H]),
	clean_stack(H, I),
	join_stacks(D, I, J)
    ).

:- multifile prolog_clause_name/2.


:- multifile message_property/2.


:- multifile prolog_list_goal/1.


:- dynamic prolog_event_hook/1.
:- multifile prolog_event_hook/1.


:- dynamic library_directory/1.
:- multifile library_directory/1.

library_directory(B) :-
    '$parms':
    (   cached_library_directory(local, A=lib, A),
	B=A
    ).
library_directory(B) :-
    '$parms':
    (   cached_library_directory(user,
				 expand_file_name('~/lib/prolog', [A]),
				 A),
	B=A
    ).
library_directory(B) :-
    '$parms':
    (   cached_library_directory(system,
				 absolute_file_name(swi(library), A),
				 A),
	B=A
    ).
library_directory(B) :-
    '$parms':
    (   cached_library_directory(clp,
				 absolute_file_name(swi('library/clp'), A),
				 A),
	B=A
    ).

aluno(joao, poo).
aluno(pedro, poo).
aluno(maria, pl).
aluno(rui, pl).
aluno(manuel, pl).
aluno(pedro, pl).
aluno(rui, ed1).

:- dynamic prolog_load_file/2.
:- multifile prolog_load_file/2.

true.
*/

% Ex. 13 ?-aluno(joao,pl).
% Ex. 14 ?-aluno(rui,poo).
% Ex. 15 ?-aluno(joao,ed1),aluno(maria,ed1).
% Ex. 16 ?-anulo(X,pl).
% Ex. 17 ?-aluno(rui,X).

estuda(joao).
estuda(maria).
estuda(manuel).

% Ex. 18 ?-aluno(maria,pl),estuda(maria).
/* Ex. 19
?- aluno(X,pl),estuda(X).
X = maria ;
X = manuel ;
false.
*/
% Ex. 20
fazpl(X):-aluno(X,pl),estuda(X).



