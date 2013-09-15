(import [itertools [count]]
	[prime [factors]])

(defn gen-Δ []
  (foreach [n (xrange 1 1000000)]
    (yield (-> (+ n 1) (* n) (/ 2)))))

(defn highest-Δ-num [n-factors]
  "Returns highest Δ number having more than `n-factors`"
  (foreach [num (gen-Δ)] (when (> (len (factors num)) n-factors)
			   (do (print num) (break)))))

(highest-Δ-num 500)

