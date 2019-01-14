//
//  testCell.swift
//  testColl
//
//  Created by kiran on 1/13/19.
//  Copyright © 2019 kiran. All rights reserved.
//

import UIKit

class testCell: UITableViewCell {
    @IBOutlet  weak var testCollectionView: UICollectionView!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
//       self.testCollectionView.dataSource = self
//        self.testCollectionView.delegate = self
//        self.testCollectionView.reloadData()
    }
    
//    func setCollectionViewDataSourceDelegate(dataSourceDelegate: UICollectionViewDataSource & UICollectionViewDelegate, forRow row: Int) {
//        testCollectionView.delegate = dataSourceDelegate
//        testCollectionView.dataSource = dataSourceDelegate
//        testCollectionView.tag = row
//        testCollectionView.reloadData()
//    }
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionviewCell", for: indexPath) as?  MyCollectionviewCell
//        cell?.mycollectionviewce.text = "demo"
//        return cell!
//    }
//
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
//        let size = CGSize(width: 150, height: 300)
//        return size
//    }
//
    
    

}
