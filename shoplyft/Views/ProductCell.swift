//
//  ProductCell.swift
//  shoplyft
//
//  Created by MAXIMILLIAN on 11/12/17.
//  Copyright © 2017 MAXIMILLIAN. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    //create an outlet for the collection view cell
    @IBOutlet weak var ProductImage: UIImageView!
    @IBOutlet weak var ProductTitle: UILabel!
     @IBOutlet weak var ProductPrice: UILabel!
    
    func updateProductViews(Produt: product){
        ProductImage.image = UIImage(named: Produt.imagename)
        ProductTitle.text = Produt.title
        ProductPrice.text = Produt.price
    }
}
