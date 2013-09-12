(import [prime [sieve]])

(print "10001st prime " (nth (list (take 10001 (sieve))) 10000))
