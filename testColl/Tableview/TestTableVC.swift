//
//  TestTableVC.swift
//  testColl
//
//  Created by kiran on 1/14/19.
//  Copyright © 2019 kiran. All rights reserved.
//

import UIKit

class TestTableVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
   override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return 360
        } else {
            return 300
    }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell1", for: indexPath) as? TestCell1
            return cell!
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell2", for: indexPath) as? TestCell2
            return cell!
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell3", for: indexPath) as? TestCell3
            return cell!
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            guard let cell = cell as? TestCell2 else {return}
            cell.TestCVC.delegate = self
            cell.TestCVC.dataSource = self
            cell.TestCVC.reloadData()
        }
    }
    
   
}

extension TestTableVC: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TestCollectionCell", for: indexPath) as? TestCollectionCell
        cell?.titleLabel.text = "this is demo text"
        return cell!
    }
    
    
    
}
