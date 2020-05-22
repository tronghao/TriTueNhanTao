timdautien([Dau|_],Dau).
timhai([_,Y|_],Y).

timcuoi([X],X).
timcuoi([_|Duoi],Kq):-timcuoi(Duoi,Kq).

