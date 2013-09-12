(defn sieve []
  "sieve of erasthothanes infinitely"
  (let [[table {}]
	[iter 2]]
    (while True
      (progn (if (not (in iter table))
	       (progn (assoc table (* iter iter) [iter])
		(yield iter))
	 (progn (foreach [factor (get table iter)]
		  (-> (.setdefault table (+ iter factor) []) (.append factor)))
		(.pop table iter)))
	     (setv iter (inc iter))))))
