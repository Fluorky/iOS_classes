//
//  ViewController.swift
//  tableviews2
//
//  Created by student on 14/12/2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 
    
 
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellvar = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! cell
        let liczby = Int(Slider2.value*20)
        //cell.textLabel?.text = String(liczby * indexPath.row + 1)

        cellvar.label1?.text = String(liczby * indexPath.row + 2)
        cellvar.label2?.text = String(liczby * indexPath.row + 4)
        //cell.textLabel?.text= arr[indexPath.row]
        return cellvar
    }


    
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var Slider2: UISlider!
    
    @IBAction func Slider(_ sender: Any) {
        Table.reloadData()
        
    }
    @IBOutlet weak var Table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
        //return arr.count
    }
    

    
    
    
    
}

class cell : UITableViewCell{
    
   
   
    @IBOutlet weak var label1: UILabel!
    
  
    
    @IBOutlet weak var label2: UILabel!
}
