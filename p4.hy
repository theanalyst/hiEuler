(defn palindrome? [x] (= (str x) (slice (str x) None None -1)))

(defn 3-digit-palindrome []
  (progn (let ((n 0))
     (for [x (xrange 999 100 -1) y (xrange x 100 -1)]
       (when (and (palindrome? (* x y)) (-> (* x y) (> n)))
	 (setv n (* x y))))
     n)))

(print "largest 3 digit palindrome is"(3-digit-palindrome))
