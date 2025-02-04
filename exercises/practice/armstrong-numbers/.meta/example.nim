import std/[math, strutils]

func isArmstrongNumber*(input: int): bool =
  let stringNumber = $input
  let numberLength = len(stringNumber).toFloat

  var sum = 0
  for i in stringNumber:
    sum = sum + pow(parseFloat($i), numberLength).toInt
  sum == input
