(defn sieve []
  "Sieve of Erasthothanes...infinitely"
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

(print "10001st prime " (nth (list (take 10001 (sieve))) 10000))
