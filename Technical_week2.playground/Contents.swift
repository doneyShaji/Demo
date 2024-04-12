import Foundation

////Struct vs Classes
//class example_ref{
//    var count = 0
//}
//let obj1 = example_ref()
//let obj2 = obj1
//obj2.count = 5
//print(obj2.count)
//print(obj1.count)
//
//struct example_val{
//    var inc1 = 0
//}
//var obj3 = example_val()
//var obj4 = obj3
//obj4.inc1 = 5
//print(obj4.inc1)
//print(obj3.inc1)


//SWIFT CONCEPTS

////OPTIONALS
//var name: String? = "JOAN"
//var red: Int? = 5
//
////OPTIONAL BINDING
//if let op = name{
//    print("name is \(op)")
//}
//else{
//    print("nothing")
//}
//
////FORCED UNWRAPPING
//print(red!)
//
////Nil-Coalescing Operator
//func f1() -> Int?{
//    return nil
//}
//let f2 = f1() ?? 5
//print(f2)

//OOPS CONCEPT
//class Calculator {
//
//  // non-static method
//  func multiply(num1: Int, num2: Int) -> Int {
//    return num1 * num2
//  }
//
//  // static method
//  static func add(num1: Int, num2: Int) -> Int { //Static Method
//    return num1 + num2
//   }
//}
//var obj = Calculator()
//
//var result2 =  Calculator.add(num1: 2, num2: 3) // call static method
//print("2 + 3 =", result2)
//
//var result1 = obj.multiply(num1:2,num2:2) // call non-static method
//print("2 * 2 =", result1)

////ABSTRACTION
//protocol Car{
//    var name: String {get} // Since a protocol variable declaration must contain a get
//
//    func Type()
//}
//struct FourWheeler: Car{
//    var name: String
//    func Type(){
//        print("\(name) is a Four Wheel Driver.")
//    }
//}
//struct NotFourWheeler: Car{
//    var name: String
//    func Type(){
//        print("\(name) is not a Four Wheel Driver")
//    }
//}
//
//let obj1 = NotFourWheeler(name: "Camry")
//let obj2 = FourWheeler(name: "Land Cruiser")
//
//obj1.Type()
//obj2.Type()

////POLYMORPHISM
//class Shape{
//    var length: Double
//    var breadth: Double
//
//    init(length: Double, breadth: Double) {
//        self.length = length
//        self.breadth = breadth
//    }
//
//    func area(){
//        var result =  (length * breadth)
//        print("Area : \(result)")
//    }
//}
//class Triangle: Shape{
//    override func area(){
//        var result = (length * breadth)/2
//        print("Area : \(result)")
//    }
//}
//let obj1 = Shape(length: 3.0, breadth: 4.5)
//let obj2 = Triangle(length: 4, breadth: 8)
//obj1.area()
//obj2.area()

////ENCAPSULATION
//class MyClass {
//    private var myPrivateVariable: Int = 10
//
//    private func myPrivateMethod() {
//        print("private")
//    }
//}


////method overriding
//class Base{
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func prop(){
//        print("\(name) is from base class")
//    }
//}
//class child: Base{
//
//    override func prop(){
//        print("\(name) is from child class")
//    }
//}
//
//let obj1 = Base(name: "john")
//let obj2 = child(name: "jewel")
//obj1.prop()
//obj2.prop()

////method overloading
//class parent{
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//    func char(age: Int){
//        print("\(name) is \(age) years old")
//    }
//    func char(age: Int, gender: String){
//        print("\(name) is a \(age) year old \(gender).")
//    }
//}
//let person = parent(name: "Joel")
//person.char(age: 34)
//person.char(age: 34, gender: "Male")


////typealias
//typealias StudentName = String
//let name:StudentName = "Jack"


////ERROR HANDLING
//enum divisionByZero: Error{
//    case dividedByZero
//}
//func div(numerator: Int, denominator:Int) throws{
//    if denominator == 0{
//        throw divisionByZero.dividedByZero
//    }
//    else{
//        print(numerator/denominator)
//    }
//}
//do{
//    try div(numerator: 4, denominator: 2)
//    print("Valid Division")
//}catch divisionByZero.dividedByZero{
//    print("Error: cant divide by zero")
//}


////TUPLES
//
//var person = ("Joshua",22) //Basic Tuple
//print(person.0) // access it with the help of index
//print(person.1)
//
//var person1 = (name: "Axel", age: 25, gender: "male") //Named Tuple
//print(person1.0) // Can be accessed with the index and also the name
//print(person1.age)
//
//var person2 = (name:"Johnny",(grade: "A", number: 787)) //Compound Tuples
//print(person2.name) // Access - index, name
//print(person2.1.number)


//OPERATORS
//Arithmetic Operators
//var a = 5
//var b = 2
//var c = a+b
//var d = a-b
//var e = a*b
//var f = e/a
//var g = a%b
//print("ADD = \(c) \n Sub = \(d) \n Mul = \(e) \n Div = \(f) \n Mod = \(g)")

//Logical Operators
//var value1 = true
//var value2 = true
//if (value1 && !value2){
//    print("AND")
//} else if (value1 || value2){
//    print("OR")
//} else {
//    print ("EXIT")
//}

//Range Operators
//for i in 3...7{ //closed range
//    print(i)
//}
//let arr = [1,4,5,7,8]
//for i in (0..<3){ //Half Open range
//    print(arr[i])
//}
//var arr1 = [2,4,6,8,10]
//for x in arr1[2...]{ // One sided range (till the end)
//    print(x)
//}


//STRING
// Using String literal
//var str1 = "Hello"
//var str2 : String = "Hello"
//
//// Using String class (instance of a string)
//var str3 = String("Hello")
//
////isEmpty (to check if a string is empty)
//var stringA = ""
//
//if stringA.isEmpty {
//   print( "stringA is empty" )
//} else {
//   print( "stringA is not empty" )
//}

//MUTABLE STRING - var
//IMMUTABLE STRING - let

//String Interpolation
//var varA   = 20
//let constA = 100
//var varC : Float = 20.0
//
//print("\(varA) times \(constA) is equal to \(varC * 100)")

//Concatenation
//let strA = "Hello,"
//let strB = "World"
//
//print(strA + strB)


//STRING LENGTH
//let myStr = "YELLOW SUNSHINE"
//
//print("String length: \(myStr.count)")


//Comparison
//var varA   = "YELLOW"
//var varB   = "SUNSHINE"
//
//// Checking whether the given string is equal or not
//if varA == varB {
//   print( "\(varA) = \(varB)" )
//} else {
//   print( "\(varA) != \(varB) " )
//}


//ARRAY
// Defining an array by specifying the type
//var arr1:[Int] = [2, 3 ,4 ,5]
////print("arr1 :", arr1)
////
//////WITHOUT SPECIFYING TYPE
//var arr2 = [12, 3 ,4 ,5]
////print("arr2 :", arr2)
////
//
//
////Modifying
//arr2[3] = 1
//print(arr2)
//
////INSERTION
////append method
//arr2.append(13)
//print(arr2)
//
////+=
//arr2 += [15]
//print(arr2)
//
////ITERATING OVER AN ARRAY
////for loop
//for x in arr2{
//    print(x)
//}
//
//
////forEach()
//var someArr:[String] = ["j", "y", "i", "e"]
//
//someArr.forEach { x in
//   print(x)
//}
//
////Adding two arrays
//arr2 += arr2
//print(arr2)
//
////isEmpty
//print(arr2.isEmpty)
//
//
////DELETE
//arr2.remove(at: 2) //remove()
//print(arr2)
//
//var numbers = [1, 2, 3, 4, 5]
//numbers.removeAll() //removeAll()
//print(numbers)
//
//var numbers1 = [1, 2, 3, 4, 5]
//numbers1.removeAll { $0 % 2 == 0 } // removeAll(where:)
//print(numbers1)
//
//var numbers2 = [1, 2, 3, 4, 5]
//let removed_Element = numbers2.popLast() // popLast()
//print(numbers2)



////DICTIONARIES
//var dict1 = [3:"a", 4:"b"]
//print(dict1)
//
////adding key:values
//dict1[2] = "c" //change the existing value also
//print(dict1)
//
////Access
//print(dict1.keys) //keys only
//print(dict1.values) // values only
//
////DELETE
//var removed_value = dict1.removeValue(forKey: 2) //removeValue(forAt:)
//print(dict1)
//
////Iterate Over a Dictionary
//
//var dict2 = ["Fruit": "Apple", "Vegetable": "Broccoli"]
//
//print("Keys: Values")
//
//for (key,value) in dict2 {
//  print("\(key): \(value)")
//}
//
//print(dict2.count)//length


//SETS
// create
//var studentID : Set = [112, 114, 116, 118, 115]
//print("Student ID: \(studentID)")

//Add elements
//var numbers: Set = [21, 34, 54, 12]
//numbers.insert(32) //insert()
//print(numbers)
////DELETE
//numbers.remove(21) //remove(), removeFirst(), removeAll()
//print(numbers)
//
////Iterate over a set
//for i in numbers{
//    print(i)
//}
//length - count


//SET - OPERATIONS
//let setA: Set = [1, 3, 5]
//let setB: Set = [0, 2, 4]
//print("Union: ", setA.union(setB))
//print("Intersection: ", setA.intersection(setB))
//print("Difference:", setA.subtracting(setB))
//print("Symmetric Difference", setA.symmetricDifference(setB))
//print("Is setA a subclass of setB: ", setA.isSubset(of: setB))
//let set1: Set = [1, 3, 5]
//let set2: Set = [3, 5, 1]
//
//if set1 == set2 {
//  print("Set 1 and Set 2 are equal")
//}
//else {
//  print("Set 1 and Set 2 are different")
//}




////Control flow in swift

////FORLOOP
//var i = 0
//for i in 1...5
//{
//    if (i % 2 == 0)
//    {
//        print("\(i) is a EVEN number")
//    }
//}

////WHILE LOOP
//// FACTORIAL
//var a = 5, fact = 1, j = 1 // Creating and initializing variables
//
//while (j <= a)
//{
//    fact *= j
//    j += 1
//}
//print("Factorial of given number is", fact)

////REPEAT WHILE LOOP
//var a = 10
//var i = 1
//
//repeat //do-while in C
//{
//    print(i)
//    i = i + 1
//}while(i > a)

////SWITCH
//// program to find the day of the week
//
//let DAY = 4
//
//switch DAY {
//  case 1:
//    print("Sunday")
//
//  case 2:
//    print("Monday")
//
//  case 3:
//    print("Tuesday")
//
//  case 4:
//    print("Wednesday")
//    fallthrough // makes the compiler execute the case below this one
//
//  case 5:
//    print("Thursday")
//
//  case 6:
//    print("Friday")
//
//  case 7:
//    print("Saturday")
//
//  default:
//    print("Invalid day")
//}

////switch statement with range
//let number = 567
//
//switch number{
//    case 0...9:
//        print("Single Digit")
//    case 11...99:
//        print("Double Digit")
//    case 100...999:
//        print("Triple Digit")
//    default:
//        print("Not within the range")
//}

////tuple in switch
//let info = ("john", 45)
//switch info{
//case ("joshua", 42):
//    print("joshua is 42 years old.")
//case ("john", 45):
//    print("john is 45 years old")
//    fallthrough
//default:
//    print("Person not in system")
//}

////forEach
//let numbers = [1, 2, 3, 4, 5]
//
//numbers.forEach { number in
//    print(number)
//}

////FUNCTIONS IN SWIFT
///
//// declare a function
//func YELLOW() {
//  print("YELLOW SUNSHINE")
//}
//YELLOW()// call the function
////FUNC PARAMETERS
//func para1(a: Int, b: Int) -> Int{
//    return a+b
//}
//print(para1(a: 4, b: 5))

////IN OUT PARAMETERS
//func doubleInPlace(number: inout Int){
//    number *= 2
//    print(number)
//}
//var n = 4
//doubleInPlace(number: &n)




////ENUMERATION
//enum Season{
//    case summer, spring, autumn, winter
//}
//let val = Season.summer
//print(val)

////iterating over
//enum Season: CaseIterable{
//    case summer, spring, autumn, winter
//}
//for i in Season.allCases{
//    print(i)
//}

////rawVlue
//enum Slice: Int{ // ALWAYS SPECIFY TYPE OF THE RAW VALUES ALONG WITH THE DECLARATION
//    case small = 10, medium = 20
//}
//print(Slice.small.rawValue)


//PROPERTIES IN SWIFT (class, struct, enumeration)
//Stored Properties - values directly assigned to constants and variables.

//struct Number{
//    var digits: Int // stored property without default value
//    let pi = 3.14 //stored property with default values
//}
//var n = Number(digits: 67) // if the instance is var then we change values but if it is let then it gives out an error
//print(n)



////COMPUTED PROPERTIES
//struct Temperature {
//    var celsius: Double
//    // Computed property to convert Celsius to Fahrenheit
//    var fahrenheit: Double {
//        get {
//            return celsius * 9 / 5 + 32
//        }
//        set(newFahrenheit) {
//            celsius = (newFahrenheit - 32) * 5 / 9
//        }
//    }
//}
//
//var temperature = Temperature(celsius: 25.0)
//// getter
//print("Temperature in Fahrenheit: \(temperature.fahrenheit)") // Output: Temperature in Fahrenheit: 77.0
//
//// Setter
//temperature.fahrenheit = 68.0
//
//// Access the 'celsius' property to see the updated value after conversion
//print("Temperature in Celsius: \(temperature.celsius)") // Output: Temperature in Celsius: 20.0

////Property Observers - willSet: does something before the value is assigned  - didSet:does something after the value is assigned
//// Define class
//class Sample2 {
//   var counter: Int = 0{
//
//      // WillSwt property observer
//      willSet(newTotal){
//         print("Total Counter is: \(newTotal)")
//      }
//
//      // didSet property observer
//      didSet{
//         if counter > oldValue {
//            print("Newly Added Counter \(counter - oldValue)")
//         }
//      }
//   }
//}
//
//let NewCounter = Sample2()
//
//NewCounter.counter = 100
//NewCounter.counter = 800


////Methods
//class Person {
//  func greet() {
//    print("Hey!")
//  }
//}
//var noel = Person()
//noel.greet()

////static methods - helps us to access the methods without creating an instance
//class Person1{
//    static func greet1(){ //use 'static' keyword
//        print("hi")
//    }
//}
//Person1.greet1()

////self property
//class example{
//    var obj = 0
//    func check(obj: Int){
//        if (self.obj<obj){
//            print("\(self.obj) - self.obj")
//            print("\(obj) - obj")
//        }
//    }
//}
//let next = example()
//next.check(obj: 24)

////Mutating Methods - struct & enum - able to change salary inside the method also
//struct Employee {
//  var salary = 0
//
//  mutating func salaryIncrement(increase: Int) {//mutating keyword
//
//  salary = salary + increase
//  print("Increased Salary:",salary)
//  }
//}
//var employee1 = Employee()
//employee1.salary = 20000
//employee1.salaryIncrement(increase: 5000)



////SUBSCRIPTS -  shortcut for accessing
//struct yellow{
//    var obj: Double
//    subscript(index: Double) -> Double{
//        return index/obj
//    }
//}
//let div = yellow(obj: 6)
//print("dividion: \(div[12])")


//HIGHER ORDER FUNCTIONS - ARRAYS
////filter() - returns filtered values
//var n = [2,3,4,5]
//let j = n.filter( {$0 % 2 == 0} )
//print(j)

////reduce() -  used to take a sequence to return a single value
//var val = [4, 5, 6, 7]
//let result = val.reduce(0, {x, y in x + y})
//print(result)
//
////map() - used to transform elements in a collection
//let arr = [5,7,9,2]
//let res = arr.map({$0 * 2})
//print(res)

////compactMap() - all optionals get unwrapped and the once that are nil are ignored
//
//let example = [2, 5, nil, 3]
//let res1 = example.compactMap( {$0} )
//print(res1)
//
//
////flatMap() - similar to map but it flattens the resulting array
//
//let numbers = [[1,2,3,4],[4,5,6]]
//let con = numbers.flatMap({$0})
//print(con)

////sorted()
//var arr2 = [3,4,5,6]
//let res = arr2.sorted()
//print(res)


////CLOSURES
//var clos = {(num: Int)-> Int in  // (parameter: Type) -> returnType
//    var square =  num * num
//    return square
//}
//let res = clos(5)
//print(res)


////CLOSURES
//var clos = {(num: Int)-> Int in  // (parameter: Type) -> returnType
//    var square =  num * num
//    return square
//}
//let res = clos(5)
//print(res)

//// CLOSURE AS A PARAMETER TO THE FUNCTION
//func grabLunch(search: ()->()) {
//  print("Let's go out for lunch")
//
//  // closure call
//  search()
//}
//
//// pass closure as a parameter
//grabLunch(search: {
//   print("Alfredo's Pizza: 2 miles away")
//})

//
////TRAILING CLOSURE
//func grabLunch(message: String, search: ()->()) {
//   print(message)
//   search()
//}
//
//// use of trailing closure
//grabLunch(message:"Let's go out for lunch")  {
//  print("Alfredo's Pizza: 2 miles away")
//}
//
////AUTO CLOSURE - wraps expression into a closure
//func printIfTrue(_ condition: @autoclosure () -> Bool) {
//    if condition() {
//        print("Condition is true")
//    } else {
//        print("Condition is false")
//    }
//}
//
//// Calling the function with an autoclosure
//printIfTrue(5 > 3)

