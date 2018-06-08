package main

import (
  "fmt"
)

func main() {
  sum := 0
  n0, n1 := 1, 2
  for {
    if n1%2 == 0 {
      sum += n1
    }
    if n0 + n1 > 4000000 {
      break
    }
    n0, n1 = n1, n0 + n1
  }
  fmt.Println(sum)
}
