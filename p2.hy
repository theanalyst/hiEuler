(defn fibs [a b]
  (while true
    (yield a)
    (setv (, a b) (, b (+ a b)))))

(print "sum is" (sum (filter even? (take-while (lambda [x] (< x 4000000)) (fibs 0 1))))) 
