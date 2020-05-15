dem([], 0):-!.
dem([_|C], KQ):-dem(C, KQ1), KQ is KQ1 + 1, !.
