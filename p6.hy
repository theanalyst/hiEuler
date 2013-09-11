(defn square-sum (seq) (* (sum seq) (sum seq)))

(defn sum-of-squares (seq) (sum (map (lambda [x] (* x x)) seq)))

(def *seq* (range 1 101))

(print "difference is" (- (square-sum *seq*) (sum-of-squares *seq*)))
