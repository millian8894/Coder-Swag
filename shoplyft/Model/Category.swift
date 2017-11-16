//
//  Category.swift
//  shoplyft
//
//  Created by MAXIMILLIAN on 11/12/17.
//  Copyright © 2017 MAXIMILLIAN. All rights reserved.
//

import Foundation

// create a re-usable struct for the table view controller. its advisable to make your struct private so it can't be modified anywhere in the code.

struct category{
    private(set) public var title: String
    private(set) public var imagename: String
    
    init(title: String, imagename: String) {
        self.title = title
        self.imagename = imagename
    }
}
