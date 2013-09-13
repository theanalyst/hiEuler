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
