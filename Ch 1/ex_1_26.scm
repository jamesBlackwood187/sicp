#lang sicp

;; For each call to expmod, we generate two calls to expmod,
;; thus we have a tree recursive process. Thus, computation
;; gets twice as large for each level of depth in the tree.
;; Growth is O(2^(log N)) = O(N), since the tree depth is size log n.
