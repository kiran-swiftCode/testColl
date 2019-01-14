//
//  ViewController.swift
//  testColl
//
//  Created by kiran on 1/13/19.
//  Copyright © 2019 kiran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testTVC: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testTVC.delegate = self
        testTVC.dataSource = self
       // testTVC.reloadData()

        // Do any additional setup after loading the view.
    }
    

}

extension ViewController : UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 567
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = testTVC.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? testCell
        return cell!
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            guard let tableViewCell = cell as? testCell else { return }
            
            tableViewCell.testCollectionView.dataSource = self
            tableViewCell.testCollectionView.delegate = self 
            tableViewCell.testCollectionView.reloadData()
        }
    
        
    
    }
    
            func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                return 5
            }
    
            func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionviewCell", for: indexPath) as?  MyCollectionviewCell
                cell?.mycollectionviewce.text = "demo"
                return cell!
            }
    
    
//            func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
//                let size = CGSize(width: 150, height: 300)
//                return size
//            }
//
    

    
    
    
    
    
    
    
}
