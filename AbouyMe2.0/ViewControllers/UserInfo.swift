//
//  Person.swift
//  AbouyMe2.0
//
//  Created by Aleksey Konchyts on 13.02.24.
//

struct User {
    let userName: String
    let password: String
    let person: Person

    
    static func getUser() -> User {
        return User(
            userName: "User",
            password: "Password",
            person: Person(
                personName: "Aleksey",
                personSurname: "Konchyts",
                personHobby: "Пивоварение",
                personBio: "Родился, рос, учился, работал, пиво варил и счастливо жил. В 37 лет решил сменить профессию и пошел на курсы свифтбука и тут-то свободное время и закончилось. Но верит, что дальше все будет еще лучше, чем было!"
            )
        )
    }
}

struct Person {
    let personName: String
    let personSurname: String
    let personHobby: String
    let personBio: String
}
