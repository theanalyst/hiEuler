(import [prime [sieve]])

(print "sum is " (sum (take-while (lambda [x] (< x 2000000)) (sieve))))
