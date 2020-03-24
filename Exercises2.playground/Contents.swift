import UIKit

//exercise 1.1
var a: Int = 10
var b: Int = 5
var summationAB = a+b
print("\(summationAB)")


//exercise 1.2
let secondsInMinute = 60
let minutesInHour = 60
let hoursInDay = 24
let daysInYear = 365
var secondsInAYear = secondsInMinute * minutesInHour * hoursInDay * daysInYear
  
//exercise 1.3
var width: Int = 5
var height: Int = 10
var numberOfPixels: Int = width * height

//exercise 1.4
class MyInt {
  var value: Int
  
  init() {
    value = 0
  }
}

//exercise 1.5
func swap(_ item1: inout MyInt, _ item2: inout MyInt) {
  let temp: Int = item1.value
  item1.value = item2.value
  item2.value = temp
}

//exercise 1.6
print("\(a%10)")

//exercise 1.7
let dogYearPerHumanYear: Int = 7
var rockyAge: Int = 5
print("\(rockyAge*dogYearPerHumanYear)")

//exercise 1.8
let bobYears = 12

func aliceAge(_ x: Int, _ y: Int) -> Int {
  var aliceYears: Int
  
  aliceYears = (bobYears * y) - x
  return aliceYears
}

//exercise 1.9
var numberOfBoys: Int = 50
var numberOfGirls: Int = 55
var totalPeople: Int = (numberOfBoys + numberOfGirls)
var percentBoys: Int = numberOfBoys * 100 / totalPeople
var percentGirls: Int = numberOfGirls * 100 / totalPeople
print("\(percentBoys), \(percentGirls)" )

//exercise 2.1
func largest(_ a: Int, _ b: Int) {
  if a>b {
    print("\(a)")
  } else {
    print("\(b)")
  }
}

//exercise 2.2
func evenOrOdd(_ a: Int) {
  if (a % 2 == 0) {
    print("even")
  } else {
    print("odd")
  }
}

//exercise 2.3
func divisible(_ a: Int, _ b: Int) {
  if (b % a == 0) {
    print("divisible")
  } else {
    print("not divisible")
  }
}

//exercise 2.4
func atLeastTwoSame(_ a: Int, _ b: Int, _ c: Int) {
  if (a == b) || (b == c) || (a == c) {
    print("At least two variables have the same value")
  } else {
    print("All the values are different")
  }
}

//exercise 2.5
func myLeapYear(_ year: Int) {
  if (year % 100 == 0) && (year % 400 != 0) {
    print("Not a leap year!")
  } else if (year % 4 == 0) {
    print("Leap year!")
  } else {
    print("Not a leap year!")
  }
}

//exercise 2.6
func coinToss() {
  let tossValue = arc4random()
  
  if (tossValue % 2 == 0) {
    print("heads")
  } else {
    print("tails")
  }
}

//exercise 2.7
func smallestOfFour(_ a: Int, _ b: Int, _ c: Int, _ d: Int) {
  var smallest: Int = a
  if (b < smallest) {
    smallest = b
  }
  if (c < smallest) {
    smallest = c
  }
  if (d < smallest) {
    smallest = d
  }
  print("\(smallest)")
}

//exercise 2.8
func divisibleThreeFiveSeven(_ a: Int) {
  if (a % 3 == 0) && (a & 5 == 0) && (a % 7 == 0) {
    print("is divisible by 3, 5, and 7")
  } else {
    print("is not divisible by 3, 5, and 7")
  }
}

//exercise 2.9
//assuming that being on the boundary counts as inside
func inside(_ x: Int, _ y: Int, _ lowX: Int, _ lowY: Int, _ highX: Int, _ highY: Int) {
  if (x <= highX) && (x >= lowX) && (y <= highY) && (y >= highY) {
    print("inside")
  } else {
    print("not inside")
  }
}

//exercise 3.1
func average(_ a: Double, _ b: Double) {
  print("\((a+b)/2)")
}

//exercise 3.2
func weightedAverage(_ finalsGrade: Double, _ midtermGrade: Double, _ projectGrade: Double) {
  let finalWeight = 0.5
  let midtermWeight = 0.2
  let projectWeight = 0.3
  
  print("\(finalsGrade*finalWeight + midtermGrade*midtermWeight + projectGrade*projectWeight)")
}

//exercise 3.3
var myDouble: Double = 5.32314
var roundedNumber: Double = (myDouble*10).rounded()/10
print("\(roundedNumber)")

//exercise 3.4
func aboveAverage(_ grade1: Double, _ grade2: Double, _ grade3: Double, _ myGrade: Double) {
  if (myGrade > ((grade1 + grade2 + grade3)/3)) {
    print("above average")
  } else if (myGrade == ((grade1 + grade2 + grade3)/3)) {
    print("exactly average")
  } else {
    print("below average")
  }
}

//exercise 4.1
func chalkboard(_ numTimes: Int) {
  if (numTimes <= 0) {
    return
  }
  for _ in 1...numTimes {
    print("I will not skip the fundamentals!")
  }
}

//exercise 4.2
func firstNSquareNums(_ numElements: Int) {
  for i in 1...numElements {
    print("\(i*i)")
  }
}

//exercise 4.3
func powersOfTwoLessThanEqualN(_ max: Int) {
  var curr=1
  while curr < max {
    print("\(curr)")
    curr *= 2
  }
}

//exercise 4.4
func drawSquare(_ size: Int) {
  var nextRow: String = ""
  for _ in 1...size {
    nextRow.append("*")
  }
  for _ in 1...size {
    print(nextRow)
  }
}

//exercise 4.5
func drawRectangle(_ rows: Int, _ cols: Int) {
  if (rows <= 0) || (cols <= 0) { return }
  var nextRow: String = ""
  for _ in 1...rows {
    for _ in 1...cols {
      nextRow.append("*")
    }
    print(nextRow)
    nextRow = ""
  }
}

//exercise 4.6
func drawTriangle(_ height: Int) {
  if (height <= 0) { return }
  
  var currHeight: Int = 1
  var nextRow: String = ""
  while currHeight <= height {
    for _ in 1...currHeight {
      nextRow.append("*")
    }
    print(nextRow)
    nextRow = ""
    currHeight += 1
  }
}

//exercise 4.7
func drawPyramid(_ height: Int) {
  if (height <= 0) { return }
  
  var nextRow: String = ""
  var currHeight: Int = 1
  var spacesPerSide: Int = height - currHeight
  var starsInRow: Int = 2 * currHeight - 1
  
  while currHeight < height {
    spacesPerSide = height - currHeight
    starsInRow = 2 * currHeight - 1
    for _ in 1...spacesPerSide {
      nextRow.append(" ")
    }
    for _ in 1...starsInRow {
      nextRow.append("*")
    }
    for _ in 1...spacesPerSide {
      nextRow.append(" ")
    }
    print(nextRow)
    nextRow = ""
    currHeight += 1
  }
  
  //at this point, currHeight == height
  for _ in 1...starsInRow {
    nextRow.append("*")
  }
  print(nextRow)
}

func isLeapYear(_ year: Int) -> Bool {
  if (year % 100 == 0) && (year % 400 != 0) {
    return false
  } else if (year % 4 == 0) {
    return true
  } else {
    return false
  }
}

//exercise 4.8
func nextNLeapYears(from leapYear: Int, _ n: Int) {
  var printedVals = 0
  var currYear = leapYear + 1
  while (printedVals < n) {
    let currYearBool = isLeapYear(currYear)
    if currYearBool {
      print("\(currYear)")
      printedVals += 1
    }
    currYear += 1
  }

}

//exercise 4.9
func gcd(_ val1: Int, _ val2: Int) {
  var euclid1: Int = val1
  var euclid2: Int = val2
  var temp: Int
  
  // force euclid1 to have a value larger than or equal to euclid2
  if (euclid1 < euclid2) {
    euclid1 = val2
    euclid2 = val1
  }
  
  // perform euclidean algorithm
  while (euclid2 != 0) {
    temp = euclid2
    euclid2 = euclid1 % euclid2
    euclid1 = temp
  }
  print(euclid1)
}

//exercise 4.10
func primeFactorization(_ val: Int) {
  var retString: String = ""
  retString += "\(val) = "
  var currVal = val
  var firstPrime: Bool = true
  var possibleFactor = 2
  //brute force zzzzzz
  while possibleFactor <= currVal {
    if currVal % possibleFactor == 0 {
      if firstPrime {
        retString += "\(possibleFactor)"
        firstPrime = false
      } else {
        retString += " * \(possibleFactor)"
      }
      currVal = currVal / possibleFactor
      possibleFactor = 2
    } else {
      possibleFactor += 1
    }
  }
  print(retString)
}

primeFactorization(1024)

//exercise 5.1
var firstName: String = "John"
var lastName: String = "Wittnebel"
var fullName: String = firstName + " " + lastName

//exercise 5.2
func formattedSum(_ a: Int, _ b: Int) {
  print("\(a) + \(b) = \(a+b)")
}

//exercise 5.3
func replaceString(_ aString: String) {
  var retString = ""
  for char in aString {
    if char == "e" {
      retString.append("*")
    } else {
      retString.append(char)
    }
  }
  print(retString)
}

//exercise 5.4
func reverse(_ aString: String) {
  var retString = ""
  
  if (aString.count == 0) { print(""); return }
  
  for index in stride(from: aString.count - 1, through: 0, by: -1) {
    let i = aString.index(aString.startIndex, offsetBy: index)
    retString.append(aString[i])
  }
  print(retString)
}

//exercise 5.5
func isPalindrome(_ aString: String) {
  if (aString.count <= 1) {
    print("true")
    return
  }
  
  for index in 0...aString.count/2 - 1 {
    let leftIndex = aString.index(aString.startIndex, offsetBy: index)
    let rightIndex = aString.index(aString.startIndex, offsetBy: aString.count-1-index)
    if aString[leftIndex] != aString[rightIndex] {
      print("false")
      return
    }
  }
  print("true")
}

//exercise 5.6
func splitStringBySpaces(_ sentence: String) {
  var nextLine = ""
  for char in sentence {
    if (char == " ") {
      print(nextLine)
      nextLine = ""
    } else {
      nextLine.append(char)
    }
  }
  //printing the last line, which ended with \n instead of " "
  print(nextLine)
}

//exercise 5.7
func longestWord(_ sentence: String) {
  var currString: String = ""
  var longestString: String = ""

  for char in sentence {
    if char == " " {
      if currString.count > longestString.count {
        longestString = currString
      }
      currString = ""
    } else {
      currString.append(char)
    }
  }
  
  //check for final word, which ended with \n instead of " "
  if (currString.count > longestString.count) {
    longestString = currString
  }
  
  print(longestString)
}

//exercise 6.1
func maxIntInArray(_ arr: [Int]) {
  if (arr.count == 0) { return }
  var max: Int = arr[0]
  
  for index in 0...arr.count - 1 {
    if arr[index] > max {
      max = arr[index]
    }
  }
  print(max)
}

//exercise 6.2
func printOdds(_ arr: [Int]) {
  for index in 0...arr.count - 1 {
    if arr[index] % 2 == 1 {
      print(arr[index])
    }
  }
}

//exercise 6.3
func sumOfInts(_ arr: [Int]) {
  var summation: Int = 0
  for index in 0...arr.count - 1 {
    summation += arr[index]
  }
  print(summation)
}

//exercise 6.4
func printOddIndices(_ arr: [Int]) {
  for index in 0...arr.count - 1 {
    if index % 2 == 1 {
      print(arr[index])
    }
  }
}

//exercise 6.5
func printReverse(_ arr: [Int]) {
  for index in stride(from: arr.count - 1, through: 0, by: -1) {
    print(arr[index])
  }
}

//exercise 6.7
//implementing quicksort with first index as the pivot
func myQSort(_ arr: [Int]) {
  // handling base cases
  if (arr.count == 0) { return }
  if (arr.count == 1) {
    print(arr[0])
    return
  }
  
  // separate into left and right sections
  let pivot: Int = arr[0]
  var left: [Int] = []
  var right: [Int] = []
  
  for index in 1...arr.count - 1 {
    if arr[index] < pivot {
      left.append(arr[index])
    } else {
      right.append(arr[index])
    }
  }
  
  // recursion
  myQSort(left)
  print(pivot)
  myQSort(right)
}

//exercise 6.8
func search(for x: Int, in listOfNumbers: [Int]) {
  for i in 0...listOfNumbers.count - 1 {
    if x == listOfNumbers[i] {
      print("yes")
      return
    }
  }
  print("no")
}

//exercise 6.9

// Note: this function has undefined behaviour if the lists have duplicate elements.
// eg. if listOfNumbers = [3,3,3], then the number of times that 3 will be printed is unknown
//     if otherNumbers also has a 3
func intersection(of listOfNumbers: [Int], and otherNumbers: [Int]) {
  var myList1: [Int] = listOfNumbers
  var myList2: [Int] = otherNumbers
  
  //sorting lists to find in O(nlogn) instead of O(n^2)
  myList1.sort()
  myList2.sort()
  
  var indexList1: Int = 0
  var indexList2: Int = 0
  
  while (indexList1 < myList1.count) && (indexList2 < myList2.count) {
    if (myList1[indexList1] == myList2[indexList2]) {
      print(myList2[indexList2])
      indexList1 += 1
      indexList2 += 1
    } else if (myList1[indexList1] > myList2[indexList2]) {
      indexList2 += 1
    } else {
      indexList1 += 1
    }
  }
}

// exercise 6.10
func firstNFibo(_ n: Int) {
  var fibonacci: [Int] = []
  var curr: Int = 0
  
  while curr < n {
    if (curr == 0) || (curr == 1) {
      fibonacci.append(1)
    } else {
      fibonacci.append(fibonacci[curr-1] + fibonacci[curr-2])
    }
    print(fibonacci[curr])
    curr += 1
  }
}

//exercise 7.1
func min2(_ a: Int, _ b: Int) -> Int {
  if (a < b) {
    return a
  } else {
    return b
  }
}

//exercise 7.2
func lastDigit(_ a: Int) -> Int {
  return a % 10
}

//exercise 7.3
func divides(_ a: Int, _ b: Int) -> Bool {
  return (b % a == 0)
}

func countDivisors(_ n: Int) -> Int {
  var currValue: Int = n
  var currDivisor: Int = 2
  
  //since 1 is always a divisor, start at 1
  var numDivisors: Int = 1
  
  while currDivisor <= currValue {
    if (currValue % currDivisor == 0) {
      numDivisors += 1
      currValue = currValue / currDivisor
      currDivisor = 2
    }
    currDivisor += 1
  }
  
  return numDivisors
}

//exercise 7.3
func isPrime(_ val: Int) -> Bool {
  if (val <= 1) {
    return false
  }
  return countDivisors(val) == 2
}

//exercise 7.4
func reverse(_ arr: [Int]) -> [Int] {
  var reversedArray: [Int] = []
  for index in stride(from: arr.count - 1, through: 0, by: -1) {
    reversedArray.append(arr[index])
  }
  return reversedArray
}

//exercise 7.5
func sum(_ arr: [Int]) -> Int {
  var summation: Int = 0
  for index in 0..<arr.count {
    summation += arr[index]
  }
  return summation
}

//exercise 7.6
// requires that
func parse(_ digit: String) -> Int {
  switch digit {
  case "0":
    return 0
  case "1":
    return 1
  case "2":
    return 2
  case "3":
    return 3
  case "4":
    return 4
  case "5":
    return 5
  case "6":
    return 6
  case "7":
    return 7
  case "8":
    return 8
  case "9":
    return 9
  default:
   return -1
  }
}

//exercise 7.7
//Queue functions
//Queue implemented as an unordered array

class myQueue {
  var arr: [Int]
  var len: Int
  
  init() {
    arr = []
    len = 0
  }
  
  func push(_ item: Int) {
    arr.append(item)
    len += 1
  }
  
  func pop(_ item: Int) -> Int? {
    if len == 0 {
      print("The queue is empty")
      return nil
    }
    let retVal: Int = arr[0]
    for index in 1..<len {
      arr[index-1] = arr[index]
    }
    len -= 1
    return retVal
  }
}


//exercise 7.15
//Stack functions
//stack implemented as an unordered array

class myStack {
  var arr: [Int]
  var len: Int
  
  init() {
    arr = []
    len = 0
  }
  
  func push(_ item: Int) {
    arr.append(item)
    len += 1
  }
  
  func pop(_ item: Int) -> Int? {
    if len == 0 {
      print("the stack is empty")
      return nil
    }
    
    let retval: Int = arr[len-1]
    len -= 1
    return retval
  }
  
  func top() -> Int? {
    if len == 0 {
      print("the stack is empty")
      return nil
    } else {
      return arr[len-1]
    }
  }
}

//exercise 10.1
enum HandShape {
  case rock
  case paper
  case scissors
}

enum MatchResult {
  case win
  case lose
  case draw
}

func match(_ player1action: HandShape, _ player2action: HandShape) -> MatchResult {
  if player1action == player2action {
    return .draw
  } else if (player1action == .rock && player2action == .scissors) {
    return .win
  } else if (player1action == .scissors && player2action == .paper) {
    return .win
  } else if (player1action == .paper && player2action == .rock) {
    return .win
  } else {
    return .lose
  }
}

//exercise 10.2
func minmax(_ item1: Int, _ item2: Int) -> (Int, Int) {
  if item1 < item2 {
    return (item1, item2)
  } else {
    return (item2, item1)
  }
}

//exercise 10.3
func fracSum(_ frac1: (Int, Int), _ frac2: (Int, Int)) -> (Int, Int) {
  let retDenom: Int = frac1.1 * frac2.1
  let retNum: Int = frac1.0 * frac2.1 + frac2.0 * frac1.1

  let myGcd = gcdRet(retNum, retDenom)
  return (retNum/myGcd, retDenom/myGcd)
}

func gcdRet(_ val1: Int, _ val2: Int) -> Int {
  var euclid1: Int = val1
  var euclid2: Int = val2
  var temp: Int
  
  // force euclid1 to have a value larger than or equal to euclid2
  if (euclid1 < euclid2) {
    euclid1 = val2
    euclid2 = val1
  }
  
  // perform euclidean algorithm
  while (euclid2 != 0) {
    temp = euclid2
    euclid2 = euclid1 % euclid2
    euclid1 = temp
  }
  return euclid1
}

//exercise 10.4

enum CoinType {
  case penny
  case nickle
  case dime
  case quarter
}

func countCoins(_ arr: [(Int, CoinType)]) -> Int {
  var total: Int = 0
  var currCoinValue = 0
  for i in 0..<arr.count {
    switch arr[i].1 {
    case .penny:
      currCoinValue = 1
    case .nickle:
      currCoinValue = 5
    case .dime:
      currCoinValue = 10
    case .quarter:
      currCoinValue = 25
    }
    
    total += currCoinValue * arr[i].0
  }
  return total
}

var moneyArray:[(Int,CoinType)] = [
    (2,.penny),
    (3,.quarter),
    (3,.penny)
]
print(countCoins(moneyArray))


//exercise 11.1
var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

func encode(_ inputString: String) -> String {
  var encodedString: String = ""
  for char in inputString {
    if code[String(char)] != nil {
      encodedString.append(code[String(char)]!)
    } else {
      encodedString.append(" ")
    }
  }
  return encodedString
}

//exercise 11.2
func decode(_ inputString: String) -> String {
  var decodedString: String = ""
  for char in inputString {
    if char == " " {
      decodedString.append(" ")
      continue
    }
    for index in code {
      if index.value == String(char) {
        decodedString.append(index.key)
      }
    }
  }
  return decodedString
}

//exercise 11.3
func firstNames(_ names: [[String:String]]) -> [String] {
  var firstNames: [String] = []
  for dict in names {
    for item in dict {
      if (item.key == "firstName") {
        firstNames.append(item.value)
      }
    }
  }
  return firstNames
}

//exercise 11.5
/*
func nameBestPlayer(_ profiles: [[String:Any]]) -> String {
  if profiles.count == 0 {
    return "there are no scores"
  }
  
  //var maxScore: Any? = profiles[0]["score"]
  //var maxScorerName: String = profiles[0]["firstName"] + " " + profiles[0]["lastName"]
  
  for dict in profiles {
    for item in dict {
      if (item.key == "score") {
        if (item.value > 0) {
          return ""
        }
      }
    }
  }
}
*/

//exercise 11.6
func frequency(_ arr: [Int]) {
  var maleable: [Int] = arr
  maleable.sort()
  
  if (maleable.count == 0) { return }
  var currValue = maleable[0]
  var currCount = 0
  for index in 0..<maleable.count {
    if currValue == maleable[index] {
      currCount += 1
    } else {
      print("\(currValue)" + " " + "\(currCount)")
      currValue = maleable[index]
      currCount = 1
    }
  }
  print("\(currValue)" + " " + "\(currCount)")
}

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]

frequency(numbers)
