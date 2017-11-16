//
//  ProductVC.swift
//  shoplyft
//
//  Created by MAXIMILLIAN on 11/12/17.
//  Copyright © 2017 MAXIMILLIAN. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var ProductView: UICollectionView!
    
    private(set) public var Product = [product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        ProductView.dataSource = self
        ProductView.delegate = self
    }
    
    func initProducts(Catgory: category) {
        Product = DataService.instance.getProducts(forCategoryTitle: Catgory.title)
        navigationItem.title = Catgory.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let prodcell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell",for: indexPath) as? ProductCell {
            let Produt = Product[indexPath.row]
            prodcell.updateProductViews(Produt: Produt)
            return prodcell
        }
        return ProductCell()
    }
    
    
}
