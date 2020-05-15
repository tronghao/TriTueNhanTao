%viet vi tu tinh tong
%cong thuc chung. tongcong(Ds,Kq).
tongcong([],0):-!.
tongcong([D|C],Kq):-tongcong(C,Kq1), Kq is Kq1+D,!.

%Dem
dem([],0):-!.
dem([_|C],Kq):-dem(C,Kq1), Kq is Kq1 + 1,!.


%Tong Chan.
tongchan([],0):-!.
tongchan([D|C],Kq):-D mod 2 =:=0, tongchan(C,Kq1), Kq is Kq1+D,!.
tongchan([_|C],Kq):-tongchan(C,Kq).


%Dem le
demle([],0):-!.
demle([D|C],Kq):-D mod 2  =\= 0, demle(C,Kq1), Kq is Kq1 + 1,!.
demle([_|C],Kq):-demle(C,Kq),!.

%viet vi tu loai bo phan tu dau tien trong danh sach
loaibo([],[]):-!.
loaibo([_|C],C):-!.
