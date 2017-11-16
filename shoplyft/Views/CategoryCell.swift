//
//  CategoryCell.swift
//  shoplyft
//
//  Created by MAXIMILLIAN on 11/12/17.
//  Copyright © 2017 MAXIMILLIAN. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    //create an outlet for the table view cell
    @IBOutlet weak var CategoryImage: UIImageView!
    @IBOutlet weak var CategoryTitle: UILabel!
    
    func updateviews(Catgory: category){
        CategoryImage.image = UIImage(named: Catgory.imagename)
        CategoryTitle.text = Catgory.title
    }

}
