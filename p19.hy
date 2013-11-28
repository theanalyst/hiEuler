(import [datetime])
(require utils)

(defn count-sundays [start end]
  (let [[sundays 0]]
    (for [year (xrange start end) month (xrange 1 13)]
      (when (= 6 (-> (datetime.date year month 1) (.weekday)))
	(inc! sundays)))
    sundays))

(print (count-sundays 1901 2001))
