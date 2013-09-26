(def *names*
  (with [f (open "names.txt")]
	(-> (.read f) (.strip) (.replace "\"" "") (.split ",") (sorted))))

(defn weight [word]
  (sum (list-comp (- (ord c) 64) [c word])))

(print (sum (list-comp (* (weight w) (+ i 1)) [(, i w) (enumerate *names*)])))
