timdautien([Dau|_],Dau).
timhai([_,Y|_],Y).

timcuoi([X],X).
timcuoi([_|Duoi],Kq):-timcuoi(Duoi,Kq).

layphantudau([],_,[]).
layphantudau([X|Duoi],X,Duoi):-!.
layphantudau([Dau|Duoi],X,[Dau|Kq]):-layphantudau(Duoi,X,Kq).

layratatcaphantu([],_,[]).
layratatcaphantu([X|Duoi],X,Kq):-layratatcaphantu(Duoi,X,Kq),!.
layratatcaphantu([Dau|Duoi],X,[Dau|Kq]):-layratatcaphantu(Duoi,X,Kq).

xuatcacphantuketiepnhau([]).
xuatcacphantuketiepnhau([_]):-!.
xuatcacphantuketiepnhau([X,Y|Duoi]):-write(X), write('--'), write(Y), nl,
                                    xuatcacphantuketiepnhau([Y|Duoi]).
phantuovitrichan([],[]).
phantuovitrichan([_],[]).
phantuovitrichan([_,Chan|Duoi],[Chan|KQ]):-phantuovitrichan(Duoi,KQ).

danhsachcanbachai([],[]).
danhsachcanbachai([Dau|Duoi],[SoCanBacHai|Kq]):-SoCanBacHai is sqrt(Dau),
                                               danhsachcanbachai(Duoi,Kq).
tronxenke([],[X],[X]).
tronxenke([X],[],[X]).
tronxenke([], [], []).
tronxenke([Dau1|Duoi1],DS2,[Dau1|Kq]):-tronxenke(DS2,Duoi1,Kq).


ucln(X,X,X):-!.
ucln(X,Y,KQ):-X>0,Y>0,X>Y,X1=X-Y,!,ucln(X1,Y,KQ).
ucln(X,Y,KQ):-X>0,Y>0,Y1=Y-X,ucln(X,Y1,KQ).

ucln1(X, X, X):-!.
ucln1(X,Y,KQ):-Y=:=0,KQ=X.
ucln1(X,Y,KQ):-ucln(Y, X mod Y, KQ1), KQ is KQ1.