//
//  ListViewController.swift
//  Mar Dy Kum
//
//  Created by - on 17/11/2021.
//

import UIKit

class ListViewController: UIViewController {
    
    var apiManager = APIManager()
    var vegetableList = [ListOfVegetable]()
    
    @IBOutlet weak var myTabelView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiManager.getData(url: "http://haritibhakti.com/jsondata/vegetables.json", completion: { vegetableArray in

                    self.vegetableList = vegetableArray
                    self.myTabelView.reloadData()

                })
    }

}


extension ListViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(vegetableList.count)
        return vegetableList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTabelView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
               cell.myLabel.text = vegetableList[indexPath.row].name
                let compelteLink = vegetableList[indexPath.row].imagename
                cell.myImage.downloaded(from: compelteLink)

                return cell
            }
    }
    
    

  
