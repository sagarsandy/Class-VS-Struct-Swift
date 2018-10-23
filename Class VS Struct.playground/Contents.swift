import UIKit


// Class
class Human {
    var city : String
    init(city : String) {
        self.city = city
    }
}

let puneHuman = Human(city: "Pune")
print(puneHuman.city)   // Pune

let banerHuman = puneHuman
banerHuman.city = "Baner"
print(banerHuman.city)  // Baner

print(puneHuman.city)   // Baner

// So basically if u create a new object using another class object, it will just take the reference that object. Still the memory location is same for both objects. So changing value at one place will change the values at other place also.


// Struct
struct Robot {
    var city : String
    init(city : String) {
        self.city = city
    }
}

let puneRobot = Robot(city: "Pune")
print(puneRobot.city)   // Pune

var banerRobot = puneRobot
banerRobot.city = "Baner"
print(banerRobot.city)  // Baner

print(puneRobot.city)   // Pune

// Coming to structs, if u create a new object using another struct object, it will create a new object. So the memory location for both objects is different. Changing value for one object will not effect another object value.



// Mutable class

class Book {
    var name : String = "Social"
}

let socialBook = Book()
socialBook.name = "New Social"

/*
 Though socialBook is assigned as constant, we are changing it's value.
 Because as we discussed earlier, we are not changing the newly created object value, we are changing it's value in the shared memory location.
 */

print(socialBook.name)  // New Social

struct Boook {
    var name : String = "Fiction"
}

//let fictionBook = Boook()
//fictionBook.name = "New Fiction" // Not allowed to change, becuase fictionBook is a let constant.

/*
 Whereas in the case of struct, there is no shared memory location. We are directly changing the object property, so let is not allowed here.
 */

var fictionBook = Boook()
fictionBook.name = "New Fiction"   // New Fiction



/*  Final Notes:
 
 1. Structs does nor provide inheritence, as the newly created objects are independent of other objects. Whereas classes provide inheritance. So using structs will execute the code more faster than classes.
 2. No mutability in the structs as there is no relationship between struct objects
 3. Struct is a non-nested flow(Because this is a flat flow, objects are independent of each other)
 4. Most of the swift objects are structs
 
 */


