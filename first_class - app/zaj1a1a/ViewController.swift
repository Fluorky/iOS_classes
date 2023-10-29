//
//  ViewController.swift
//  zaj1a1a
//
//  Created by MACIEJ on 19/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var tfield: UITextField!
    @IBAction func button(_ sender: Any) {
        label.text = tfield.text
        label.textColor = UIColor.blue
        button.setTitle(tfield.text, for: UIControl.State.normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

