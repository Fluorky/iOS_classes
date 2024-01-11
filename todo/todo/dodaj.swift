//
//  dodaj.swift
//  todo
//
//  Created by student on 11/01/2024.
//

import Foundation


import UIKit

class dodaj: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textFieldTermin: UITextField!
    
    @IBAction func button(_ sender: Any) {
        listaZadan.append(textField.text!)
               textField.text = ""
               
               UserDefaults.standard.set(listaZadan, forKey: "listazadan")
        
        listaDat.append(textFieldTermin.text!)
               textFieldTermin.text = ""
               
               UserDefaults.standard.set(listaDat, forKey: "listadat")
        
    }
    


        
       // zamkniecie klawiatury
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
        func zamkniecieklawiatury(_ textField : UITextField! ) -> Bool
        {
            textField.resignFirstResponder()
            return true
            
        }
}


