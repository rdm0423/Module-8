//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Person {
    
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

let james = Person(firstName: "James", lastName: "Pacheo", age: 26)
let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
let rebecca = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
let caleb = Person(firstName: "Caleb", lastName: "Hicks", age: 36)
let ryan = Person(firstName: "Ryan", lastName: "Watt", age: 24)
let clubMembers: [Person] = [james, andrea, rebecca, caleb]

func areYouAMemberOfTheClub(person: Person) -> Bool {
    var isMember: Bool = true
    
    if 
}


