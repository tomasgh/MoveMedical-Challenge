//
//  Addingmodels.swift
//  MoveMedical Challenge
//
//  Created by Tomas Galvan-Huerta on 4/22/20.
//  Copyright © 2020 Tomas Galvan-Huerta. All rights reserved.
//

import Foundation


extension ViewController{
    
    func addAllTimes(){
        addPhones()
        addCars()
        addBooks()
        tableView.reloadData()
    }
    func addPhones(){
        let pixel = Phone(Brand: "Google", name: "Pixel 1", description: "This phone is made by google", model: "g-2pw4100", CanText: true)
        let iphone4s = Phone(Brand: "Apple", name: "Iphone 4s", description: "Sleek design", model: "ejf-34efd", CanText: true)
        let flipPhone = Phone(Brand: "Nokia", name: "Nokia 34", description: "Legend says, this phone can survive a punching Gorilla", model: "lc-342xde", CanText: false)
        AllItems.append(contentsOf: [flipPhone, iphone4s, pixel])
    }
    func addCars() {
        let leaf = Car(Brand: "Nissan", name: "Leaf", description: "80 mile range EE", Has4Doors: true, Hybrid: false)
        let jeep = Car(Brand: "Jeep", name: "Wrangler", description: "Go out doors or indoors. Or both, you have a jeep.", Has4Doors: false, Hybrid: false)
        let civic = Car(Brand: "Honda", name: "Civic", description: "Car for the whole family", Has4Doors: true, Hybrid: true)
        AllItems.append(contentsOf: [leaf, jeep, civic])
    }
    func addBooks(){
        let milesMorales = Book(name: "Spiderman: Issue 32", description: "Who is Miles' uncle working for?", author: "Sara Pichelli", comicBook: true, publisher: "Marvel")
        let HitchHikersGuide = Book(name: "Hitch Hikers Guide to the Galaxy", description: "Where is he going? Find out for yourself.", author: " Douglas Adams", comicBook: false, publisher: "Pan Books")
        let kidsStory = Book(name: "Coding for toddlers", description: "Want your baby to begin a start-up at age 6?", author: "Tomas G Huerta", comicBook: false, publisher: "Somat Books")
        AllItems.append(contentsOf: [milesMorales, HitchHikersGuide, kidsStory])
        
    }

}
