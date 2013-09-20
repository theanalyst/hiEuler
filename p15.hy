(import [utils [factorial]])

(print "routes" (-> (factorial 40) (/ (factorial 20)) (/ (factorial 20))) )
