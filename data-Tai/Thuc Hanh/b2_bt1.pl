%Viet vi tu tinh tong
%Cong thuc chung. tongcong(Ds,Kq).
% tongcong([A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, T, R, S, V, W, X, Y, Z],Kq):-.
tongcong([], 0):-!. %dau cham than de dung cau lenh
tongcong([D|C],Kq):-tongcong(C, Kq1), Kq is Kq1+D, !.

%dem
dem([], 0):-!.
dem([_|C], Kq):-dem(C, Kq1), Kq is Kq1+1, !.

% viet mot ham tinh tong cong cac so cac so chan trong danh sach
tongchan([],0):-!.
tongchan([D|C],Kq):- D mod 2 =:=0, tongchan(C,Kq1), Kq is Kq1+D,!.
tongchan([_|C],Kq):- tongchan(C,Kq).

%viet mot ham dem cac so cac so le trong danh sach
demle([],0):-!.
demle([D|C],K):- D mod 2 =\=0, demle(C,K1), K is K1+1,!.
demle([_|C],K):- demle(C,K).

%viet mot vi tu loai bo phan tu dau tien trong danh sach
remove([],[]):-!.
remove([_|C],C):-!.
