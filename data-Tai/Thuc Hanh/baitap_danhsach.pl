% bai1: tìm phần tử thứ nhất
timptthunhat([],[]).
timptthunhat([Dau|_], Dau).

%Bài 2: Tìm phần tử thứ 2.
timptthuhai([],[]).
timptthuhai([_],[]):-!.
timptthuhai([_,Y|_], Y).

%Bài 3: Tìm phần tử cuối
timptcuoi([],[]).
timptcuoi([Dau],Dau):-!.
timptcuoi([_|C], Kq):-timptcuoi(C,Kq).

%Bài 4: Xóa phần tử đầu tiên trùng vs pt X
xoaptdau([],_,[]).
xoaptdau([X|Cuoi],X,Cuoi):-!.
xoaptdau([Dau|Cuoi],X,[Dau|Kq]):-xoaptdau(Cuoi,X,Kq).

%Bài 5: Xóa tất cả phần tử trùng vs pt X
xoapt([],_,[]).
xoapt([X|Cuoi],X,Kq):-xoapt(Cuoi,X,Kq),!.
xoapt([Dau|Cuoi],X,[Dau|Kq]):-xoapt(Cuoi,X,Kq).


