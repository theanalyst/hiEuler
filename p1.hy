(defn is-multiple? [num base]
  (not (% num base)))

(defn sum-muliples [limit]
  (sum
   (list-comp
    num
    (num (range limit))
    (or (is-multiple? num 5) (is-multiple? num 3)))
   ))

(print "Sum is" (sum-muliples 1000))
