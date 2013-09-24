;; One of those problems that can be solved using a calculator or repl
;; (+ (* 36 190) (* 7 900) (* 10 70) (* 100 46) (* 3 891) 11)
;;

(def *num-dict*
  {    "1"   "one"
       "2"   "two"
       "3"   "three"
       "4"   "four"
       "5"   "five"
       "6"   "six"
       "7"   "seven"
       "8"   "eight"
       "9"   "nine"
       "10"  "ten"
       "11"  "eleven"
       "12"  "twelve"
       "13"  "thirteen"
       "14"  "fourteen"
       "15"  "fifteen"
       "16"  "sixteen"
       "17"  "seventeen"
       "18"  "eighteen"
       "19"  "nineteen"
       "20"  "twenty"
       "30"  "thirty"
       "40"  "forty"
       "50"  "fifty"
       "60"  "sixty"
       "70"  "seventy"
       "80"  "eighty"
       "90"  "ninety"
       "1000" "onethousand"
       "00" ""
       })

(defn num-word [num] (get *num-dict* (str num)))

(defn num-range? [num start end] (and (> num start) (< num end)))

(defn str-list (l) (.join "" l))

(defn to-word [num]
  (let [[digits (len (str num))]]
    (if (in (str num) (.keys *num-dict*))
      (num-word num)
      (cond ((= digits 2) (str-list [(num-word (* 10 (int (/ num 10)))) (num-word (% num 10)) ]))
	    ((= digits 3) (str-list [(num-word (int (/ num 100))) "hundred"
				     (if (zero? (% num 100)) ""
				       (str-list ["and" (to-word (% num 100))])
				       )]))))))


(print (sum  (map len (map to-word (range 1 1001)))))
