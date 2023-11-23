//
//  ViewController.swift
//  Zaj5
//
//  Created by MACIEJ on 23/11/2023.
//

import UIKit

class ViewController: UIViewController {

    
    var time = Timer()
    
    var count = 0
    @IBOutlet weak var label: UILabel!
    
    @IBAction func start(_ sender: Any) {
        time = Timer.scheduledTimer(timeInterval: 1.0, target: self,  selector: #selector(updateTime), userInfo: nil,  repeats: true)
        
    }
    
    @IBAction func pauseStoper(_ sender: Any) {
        time.invalidate()
    }
    
    
    @IBAction func stopStoper(_ sender: Any) {
        time.invalidate()
        count = 0
        label.text = "\(count)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @objc func updateTime()
    {
        count += 1
        label.text = "\(count)"
    }


}

