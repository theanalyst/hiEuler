(defn is-multiple? [num base]
  (not (% num base)))

(defn sum-multiples [limit]
  (sum
   (list-comp
    num
    (num (range limit))
    (or (is-multiple? num 5) (is-multiple? num 3)))
   ))

(print "Sum is" (sum-multiples 1000))
