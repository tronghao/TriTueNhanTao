s(s(NP,VP))-->np(NP),vp(VP).

np(np(NNP))-->nnp(NNP).
np(np(CD, N_UNIT, NN))-->cd(CD),n_unit(N_UNIT),nn(NN).
np(np(N_UNIT, NN, ADJP))-->n_unit(N_UNIT), nn(NN), adjp(ADJP).
np(np(NN))-->nn(NN).
np(np(PRP))-->prp(PRP).
np(np(CD, NP))-->cd(CD), np(NP).

adjp(adjp(JJ))-->jj(JJ).
adjp(adjp(RB,JJ))-->rb(RB), jj(JJ).

jj(jj(do))-->[do].
jj(jj(rong))-->[rong].

rb(rb(rat))-->[rat].
rb(rb(thuong))-->[thuong].
rb(rb(hay))-->[hay].

vp(vp(VB, NP))-->vb(VB),np(NP).
vp(vp(RB, VB, PP))-->rb(RB), vb(VB), pp(PP).
vp(vp(RB, VB, NP))-->rb(RB), vb(VB), np(NP).
vb(vb(mua))-->[mua].
vb(vb(o))-->[o].
vb(vb(co))-->[co].
vb(vb(ngoi))-->[ngoi].
vb(vb(doc))-->[doc].

pp(pp(IN, NP))-->in(IN), np(NP).

in(in(ngoai))-->[ngoai].

cd(cd(mot))-->[mot].

n_unit(n_unit(can))-->[can].
n_unit(n_unit(cai))-->[cai].

nn(nn(nha))-->[nha].
nn(nn(ngoai, o))--> [ngoai, o].
nn(nn(san))-->[san].
nn(nn(truyen))-->[truyen].

nnp(nnp('Nam'))-->['Nam'].

prp(prp(no))-->[no].
