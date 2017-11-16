//
//  ViewController.swift
//  shoplyft
//
//  Created by MAXIMILLIAN on 11/11/17.
//  Copyright © 2017 MAXIMILLIAN. All rights reserved.
//

import UIKit

//create protocols and delegates for the table view. add UITableViewDataSource and UITableViewDelegate
class CategoryVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    //create an outlet for the whole table view controller
    @IBOutlet weak var CategoryView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        CategoryView.dataSource = self
        CategoryView.delegate = self
    }
   
    //tells the data source to returns the number of rows in a given section of table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategory().count
    }
    
    //asks the data source for a cell to insert in a particular location of table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        //returns a reusable table-view cell object located by its identifier
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let Catgory = DataService.instance.getCategory()[indexPath.row]
            cell.updateviews(Catgory: Catgory)
            return cell
        }else{
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Catgory = DataService.instance.getCategory()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: Catgory)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? category != nil)
            productsVC.initProducts(Catgory: sender as! category)
        }
    }

}

