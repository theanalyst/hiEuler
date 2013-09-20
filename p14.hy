(defn memoized [f]
  (setv cache {})
  (defn memoized_f [*args]
    (if (in *args cache)
      (get cache *args)
      (.setdefault cache *args (f *args))))
  memoized_f)


(with-decorator memoized
 (defn collatz [n]
   (cond ((= n 1) 1)
	 ((even? n) (+ (collatz (/ n 2)) 1))
	 ((odd? n) (+ (collatz (+ (* 3 n) 1)) 1)))))

(defn collatz-nterm [n]		    
  (let [[max-n 0]		  
	[num 0]]		  
    (foreach [i (xrange 1 n)]	  
      (do (setv c (collatz i))
       (when (> c max-n) 
	 (setv (, max-n num) (, c i)))))			  
    num))			  

(print (collatz-nterm 1000000))
