package main

import (
  "fmt"
)

func main() {
  var sum int
  n := 1000
  for i := 0; i < n; i++ {
    if i%3 == 0 || i%5 == 0 {
      sum += i
    }
  }
  fmt.Print(sum)
}
