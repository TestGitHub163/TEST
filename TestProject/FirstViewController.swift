//
//  FirstViewController.swift
//  TestProject
//
//  Created by User on 31.01.2022.
//

import UIKit

enum Cover: String {
    case avengers = "Avengers Endgame cover"
    case badBoys = "Bad boys 2 cover"
    case onePlusOne = "1+1 cover"
    case mirror = "Black mirror cover"
    
    static let arrCover = [avengers, badBoys, onePlusOne, mirror]
}

let arrCover = ["Avengers Endgame cover", "Bad boys 2 cover", "1+1 cover", "Black mirror cover"]


class FirstViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}

extension FirstViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.coverImage.image = UIImage(named: Cover.arrCover[indexPath.row].rawValue
        )
        return cell
    }
    
    
}
