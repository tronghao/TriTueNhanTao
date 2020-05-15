amtiet(amtiet(Dau,Giua,Cuoi)) --> dau(X, Dau), giua(X, Y, Giua), cuoi(Y, Cuoi).
%amtiet(Giua,Cuoi) --> giua(Giua), cuoi(Cuoi).
%amtiet(Giua) --> giua(Giua).
%amtiet(Dau,Giua) --> dau(Dau), giua(Giua).

% ------------------------------------------------------------------------

dau(X, dau(P1)) --> p1(X, P1).

giua(X, Y, giua(N1)) --> n1(X, Y, N1).

cuoi(Y, cuoi(P4)) --> p4(Y, P4).
cuoi(Y, cuoi(P4,P5)) --> p4(Y, Z, P4), p5(Z, P5).

% ------------------------------------------------------------------------

p1(n, p1(n)) --> [n].
p1(m, p1(m)) --> [m].

n1(X, Y, n1(a)) --> [a], {(X = n, Y = m); (X = n, Y = n)}.
n1(X, Y, n1(i)) --> [i], {X = m, Y = n}.

p4(m, p4(m)) --> [m].
p4(n, Z, p4(n)) --> [n], {Z = g; Z = h}.

p5(g, p5(g)) --> [g].
p5(h ,p5(h)) --> [h].








