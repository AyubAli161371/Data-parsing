//
//  API Manager.swift
//  Mar Dy Kum
//
//  Created by - on 17/11/2021.
//

import Foundation

class APIManager{
    
    
    
    func getData(url:String, completion: @escaping ([ListOfVegetable]) -> () ){
        URLSession.shared.dataTask(with: URL(string: url)!) { data, responce, error in
            if error == nil{
                
                do{
                    
                    let vegetableArray = try JSONDecoder().decode([ListOfVegetable].self, from: data!)
                    
                    DispatchQueue.main.async {
                        
                        completion(vegetableArray)
                    }
                    
                } catch{
                    
                    print("Pars Error")
                    
                }
                
            }else{
                
                print("No data returned from call" + "\(String(describing: error))")
                
            }
        }.resume()
        
    }
    
}
