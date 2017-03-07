//
//  MainVC.swift
//  TacoPOP
//
//  Created by Sean Perez on 3/6/17.
//  Copyright © 2017 SeanPerez. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    var ds = DataService.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.addDropShadow()
    }
    
    func deliciousTacoDataLoaded() {
        print("Delicious Taco Data Loaded!")
    }

}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as! TacoCell
        let taco = ds.tacoArray[indexPath.row]
        cell.configureCell(taco)
        return cell
    }
    
}

