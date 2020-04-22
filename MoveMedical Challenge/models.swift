//
//  models.swift
//  MoveMedical Challenge
//
//  Created by Tomas Galvan-Huerta on 4/22/20.
//  Copyright © 2020 Tomas Galvan-Huerta. All rights reserved.
//

import Foundation

protocol Descriptionf {
    var name: String { get set }
    var description: String {get set}
}
protocol Brand: Descriptionf {
    var Brand: String { get set }
}



struct Phone: Brand {
    var Brand: String
    
    var name: String
    var description: String
    var model: String
    var CanText: Bool
}
struct Car: Brand{
    var Brand: String
    
    var name: String
    var description: String
    
    var Has4Doors: Bool
    var Hybrid: Bool
    
}
struct Book: Descriptionf {
    var name: String
    var description: String
    
    var author: String
    var comicBook: Bool
    var publisher: String
    
    
}
