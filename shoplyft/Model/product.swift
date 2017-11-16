//
//  product.swift
//  shoplyft
//
//  Created by MAXIMILLIAN on 11/12/17.
//  Copyright © 2017 MAXIMILLIAN. All rights reserved.
//

import Foundation

struct product{
    private(set) public var title: String
    private(set) public var imagename: String
    private(set) public var price: String
    
    init(title: String, imagename: String, price: String) {
        self.title = title
        self.imagename = imagename
        self.price = price
    }
}
