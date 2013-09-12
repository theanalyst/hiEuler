(import [math [sqrt]])

(defn square? [x]
  (-> (int (sqrt x)) (pow 2) (= x)))

(defn gen-triples [m n]
  (, (- (pow m 2) (pow n 2))
     (* 2 m n)
     (+ (pow m 2) (pow n 2))))
;; do something better here?
(for [i (xrange 25) j (xrange (- i 1))]
  (let [[t (gen-triples i j)]]
    (when (= 1000 (sum t))
      (print "triplet is " t))))
