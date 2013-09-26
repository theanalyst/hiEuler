(import [prime [factors]]
	[functools [partial]]
	[operator [add]])

(def Σfactors (dict (list-comp (, num (sum (slice (factors num) None -1)))
			       [num (xrange 1 10001)])))

(defn amicable? [collection num]
  "returns if number is amicable, given collection mapping nums and Σfactors"
  (let [[s (.get collection num 1)]]
    (and (= num (.get collection s)) (not (= num (.get collection num))))))

(print (reduce add (filter (partial amicable? Σfactors) (range 1 10001))))
