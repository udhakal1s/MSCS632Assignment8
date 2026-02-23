% Umesh Dhakal
% MSCS632A8 - Prolog Family Tree

% Facts
male('Umakant').
female('Durga').

male('Mahesh').
female('Sita').

female('Gita').
male('Rajesh').

male('Ashok').
female('Anita').
male('Prakash').

% parent('Parent', 'Child')
parent('Umakant', 'Mahesh').
parent('Durga', 'Mahesh').

parent('Umakant', 'Sita').
parent('Durga', 'Sita').

parent('Mahesh', 'Rajesh').
parent('Gita', 'Rajesh').

parent('Sita', 'Anita').
parent('Ashok', 'Anita').

parent('Sita', 'Prakash').
parent('Ashok', 'Prakash').

% Rules
grandparent(GP, GC) :-
    parent(GP, P),
    parent(P, GC).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2),
    X \= Y.

% Recursion
descendant(A, D) :-
    parent(A, D).

descendant(A, D) :-
    parent(A, X),
    descendant(X, D).

% Query helpers
children_of(P, Children) :-
    findall(C, parent(P, C), L),
    sort(L, Children).

siblings_of(P, Siblings) :-
    findall(S, sibling(P, S), L),
    sort(L, Siblings).

cousins_of(P, Cousins) :-
    findall(C, cousin(P, C), L),
    sort(L, Cousins).

descendants_of(P, Descendants) :-
    findall(D, descendant(P, D), L),
    sort(L, Descendants).
