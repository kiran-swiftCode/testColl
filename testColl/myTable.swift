//
//  myTable.swift
//  testColl
//
//  Created by kiran on 1/13/19.
//  Copyright © 2019 kiran. All rights reserved.
//

import UIKit

class myTable: UITableViewController {
    @IBOutlet weak var mycollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mycollection.dataSource = self
        mycollection.delegate = self
        
       
    }

   
    @IBAction func reloadDAA(_ sender: Any) {
       // tableView.reloadData()
        mycollection.reloadData()
    }
}

extension myTable: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125, height: 230)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mycollection.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? MyCollectionviewCell
        cell?.mycollectionviewce.text = "demo"
        return cell!
    }
    
    
    
    
    
}
