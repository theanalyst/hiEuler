(defn gcd [a b]
  (if (= b 0) a (gcd b (% a b))))

(defn lcm [a b]
  (-> (* a b) (/ (gcd a b))))

(defn greatest-even-divisor [num]
  "return greatest number evenly dividing factorial of `num`"
  (do (let ((t (range 1 (+ num 1))))
	(for [i (xrange 1 num)]
	  (setv (car t) (lcm i (car t))))
	(car t))))

(print "greatest number evenly dividing 20! "(greatest-even-divisor 20))
