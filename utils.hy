;; some common utils
(defn product [seq]
  "Product of all nums in a seq"
  (let [[prod 1]]
    (for [iter seq]
      (setv prod (* iter prod))) ;;FIXME make this return 0 if 0 found
    prod))

(defn product-epoch [seq start end]
  "product of an epoch from `start` to `end`"
  (product (slice seq start end)))

(defn factorial [n]
  (fact-iter 1 1 n))

(defn fact-iter [product counter num]
  (if (> counter num)
    product
    (fact-iter (* counter product) (inc counter) num)))

(defn fibs [a b]
  (while true
    (yield a)
    (setv (, a b) (, b (+ a b)))))
