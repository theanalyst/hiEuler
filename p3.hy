(import [math [sqrt]])

(def *num* 600851475143.0)

(defn fermat [n]
  (let ((a 2))
    (-> (pow a n) (% n) (= a))))

(defn is-factor? [num factor]
  (= 0 (% num factor)))

(defn prime-factors [n]
  "Yields prime-factors from highest to lowest uses fermat test
   for primality and hence obviously fails for CarlMichael numbers"
  (foreach [divisor (xrange (int (sqrt n)) 2 -1)]
    (when (and (is-factor? n divisor) (fermat divisor)) 
      (yield divisor))))

(print "highest prime factor of" *num*  "is" (.next (prime-factors *num*)))
