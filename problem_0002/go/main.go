package main

import (
  "fmt"
)

func main() {
  max := 4000000
  sum := 0
  n0, n1 := 1, 2
  for {
    if n1%2 == 0 {
      sum += n1
    }
    if n0 + n1 > max {
      break
    }
    n0, n1 = n1, n0 + n1
  }
  fmt.Print(sum)
}
