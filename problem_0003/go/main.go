package main

import (
  "fmt"
)

func main() {
  n := 600851475143
  m := 3
  for {
    for {
      if n % m != 0 {
        break
      }
      n /= m
    }
    if n == 1 {
      break
    }
    m += 2
  }
  fmt.Println(m)
}
