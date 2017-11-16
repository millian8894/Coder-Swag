//
//  DataService.swift
//  shoplyft
//
//  Created by MAXIMILLIAN on 11/12/17.
//  Copyright © 2017 MAXIMILLIAN. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categorylist = [
        category(title: "SHIRTS", imagename: "shirts.png"),
        category(title: "HOODIES", imagename: "hoodies.png"),
        category(title: "HATS", imagename: "hats.png"),
        category(title: "DIGITAL", imagename: "digital.png")
    ]
    
    func getCategory() -> [category] {
        return categorylist
    }
    
    private let shirts = [
        product(title: "Devslope1", imagename: "shirt01.jpg", price: "$18"),
        product(title: "Devslope2", imagename: "shirt02.jpg", price: "$18"),
        product(title: "Devslope3", imagename: "shirt03.jpg", price: "$18"),
        product(title: "Devslope4", imagename: "shirt04.jpg", price: "$18"),
        product(title: "Devslope5", imagename: "shirt05.jpg", price: "$18")
    ]
    
    private let hoodies = [
        product(title: "Devslope1", imagename: "hoodie01.jpg", price: "$24.99"),
        product(title: "Devslope2", imagename: "hoodie02.jpg", price: "$24.99"),
        product(title: "Devslope3", imagename: "hoodie03.jpg", price: "$24.99"),
        product(title: "Devslope4", imagename: "hoodie04.jpg", price: "$24.99")
        ]
    
    private let hats = [
        product(title: "Devslope1", imagename: "hat01.jpg", price: "$14.99"),
        product(title: "Devslope2", imagename: "hat02.jpg", price: "$14.99"),
        product(title: "Devslope3", imagename: "hat03.jpg", price: "$14.99"),
        product(title: "Devslope4", imagename: "hat04.jpg", price: "$14.99")
    ]
    
    private let digital = [product]()
    
    func getShirts() -> [product]{
        return shirts
    }
    
    func getHoodies() -> [product]{
        return hoodies
    }
    
    func getHats() -> [product]{
        return hats
    }
    
    func getDigital() -> [product]{
        return digital
    }
    
    func getProducts(forCategoryTitle title: String) -> [product] {
        switch title{
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigital()
        default:
            return getDigital()
        }
    }
}
