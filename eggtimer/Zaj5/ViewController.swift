//
//  ViewController.swift
//  Zaj5
//
//  Created by MACIEJ on 23/11/2023.
//

import UIKit

class ViewController: UIViewController {

    
    //var time = Timer()
    
    //var count = 0
    var time_count = 0;
    var timer:Optional<Timer> = nil;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func start(_ sender: Any) {
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self,  selector: #selector(fireTimer), userInfo: nil,  repeats: true)
        time_count = get_time();
        
    }
    @objc func fireTimer(timer: Timer) {
        time_count-=1;
        time_count = max(time_count,0)
        set_timer(value: time_count);
    }
    
    @IBAction func pauseStoper(_ sender: Any) {
        timer!.invalidate()
    }
    
    @IBOutlet weak var Hours: UITextField!
    
    @IBOutlet weak var Minutes: UITextField!
    
    @IBOutlet weak var Seconds: UITextField!
    
    @IBAction func stopStoper(_ sender: Any) {
        timer!.invalidate()
        set_timer(value: 0)
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   /* @objc func updateTime()
    {
        count += 1
        label.text = "\(count)"
    }*/
    
    func set_timer(value:Int){
        var time_in_secons = value;

        
        let hours = time_in_secons/3600
        time_in_secons -= 3600*hours
        let mins = time_in_secons/60
        time_in_secons -= mins*60
        let seconds = time_in_secons
        if(seconds>9)
        {
            
            Seconds.text=String(seconds);
        }
        else
        {
            Seconds.text="0"+String(seconds);
        }
        if(mins>9)
        {
            Minutes.text=String(mins);
        }
        else{
            Minutes.text="0"+String(mins);
            }
        Hours.text=String(hours);
    }
    
    func get_time()->Int{
        let h = Int(Hours.text!) ?? 0
        let m = Int(Minutes.text!) ?? 0
        let s = Int(Seconds.text!) ?? 0
        return  h*3600+m*60+s
    }
}

