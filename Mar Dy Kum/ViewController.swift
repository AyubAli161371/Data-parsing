//
//  ViewController.swift
//  Mar Dy Kum
//
//  Created by - on 17/11/2021.
//

import UIKit

var isSelected: Bool = true

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var tableView: UIView!
    @IBOutlet weak var collectionView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnClicked(_ sender: Any) {
        isSelected = !isSelected

                            if isSelected {

                                tableView.isHidden = true

                                collectionView.isHidden = false

                                myButton.setImage(UIImage(named: "list.png"), for: .normal)

                                myLabel.text = "Collection View"

                            } else {

                                collectionView.isHidden = true

                                tableView.isHidden = false

                                myButton.setImage(UIImage(named: "menu.png"), for: .normal)

                                myLabel.text = "Table View"

            

                                

                

                            }

            }
        
        
    }


