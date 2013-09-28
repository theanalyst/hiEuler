(import [utils [fibs]])
;; find some way not to construct this as a list??
(print (+ (len (list (take-while (lambda [x] (< (len (str x)) 1000)) (fibs 1 1)))) 1))
