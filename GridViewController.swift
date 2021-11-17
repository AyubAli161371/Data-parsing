//
//  GridViewController.swift
//  Mar Dy Kum
//
//  Created by - on 17/11/2021.
//

import UIKit

class GridViewController: UIViewController {
    
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var apiManager = APIManager()
    var vegetableList = [ListOfVegetable]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        apiManager.getData(url: "http://haritibhakti.com/jsondata/vegetables.json", completion: { ListOfVegetable in

                    self.vegetableList = ListOfVegetable
                    self.myCollectionView.reloadData()

                })
        
    }
    

}



extension GridViewController: UICollectionViewDelegate,UICollectionViewDataSource
{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return vegetableList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GridCollectionViewCell

        cell.myLabel.text = vegetableList[indexPath.row].name
        let compelteLink = vegetableList[indexPath.row].imagename
        cell.myImage.downloaded(from: compelteLink)

         return cell
    }
}
