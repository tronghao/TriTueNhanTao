%ten ham viet thuong, ten bien viet hoa chu cai dau

%Bai 1: tim phan tu thu nhat
timphantuthunhat([],[]).
timphantuthunhat([Dau|_],Dau).

%Bai 2: tim phan tu thu 2
timphantuthuhai([],[]).
timphantuthuhai([_],[]):-!.
timphantuthuhai([_,Y|_],Y).

%Bai 3: tim phan tu cuoi cung
timphantucuoi([],[]).
timphantucuoi([Cuoi],Cuoi):-!.
timphantucuoi([_|Cuoi],Kq):-timphantucuoi(Cuoi,Kq).

%bai 4: xoa phan tu dau tien
remove([],_,[]).
remove([Dau|Cuoi],Dau,Cuoi):-!.
remove([Dau|Cuoi],Phantucanxoa,[Dau|Kq]):-remove(Cuoi,Phantucanxoa,Kq).

%bai 5: xoa tat ca phan tu trung trong danh sach
removeall([],_,[]).
removeall([Dau|Cuoi],Dau,Kq):-removeall(Cuoi,Dau,Kq),!.
removeall([Dau|Cuoi],Phantucanxoa,[Dau|Kq]):-removeall(Cuoi,Phantucanxoa,Kq).




