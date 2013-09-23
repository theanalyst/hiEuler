;; One of those problems that can be solved using a calculator or repl 
;; (+ (* 36 190) (* 7 900) (* 10 70) (* 100 46) (* 3 891) 11)
;; 

(def *num-dict*
  {    "1"  : "one"
       "2"  : "two"
       "3"  : "three"
       "4"  : "four"
       "5"  : "five"
       "6"  : "six"
       "7"  : "seven"
       "8"  : "eight"
       "9"  : "nine"
       "10" : "ten"    
       "11" : "eleven"
       "12" : "twelve"
       "13" : "thirteen"
       "14" : "fourteen"
       "15" : "fifteen"
       "16" : "sixteen"
       "17" : "seventeen"
       "18" : "eighteen"
       "19" : "nineteen"
       "20" : "twenty"
       "30" : "thirty"
       "40" : "forty"
       "50" : "fifty"
       "60" : "sixty"
       "70" : "seventy"
       "80" : "eighty"
       "90" : "ninety"
       "100": "hundred"
       "1000": "thousand"
       "00": ""
       })

(defn num-word [num] (get *num-dict* (str num)))

(defn num-range? [num start end] (and (> num start) (< num end)))
