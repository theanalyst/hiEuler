(import [itertools [islice permutations]])

(print (.join "" (next (islice (permutations (map str (range 10))) 999999 None))))
