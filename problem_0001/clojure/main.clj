(let [n 1000]
  (println
    (reduce +
      (filter
        #(or (= (rem % 3) 0) (= (rem % 5) 0))
        (range 1 n)
      )
    )
  )
)
