//
//  ViewController.swift
//  SHakeGesture_n
//
//  Created by Mayurii Gajbhiye on 02/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    var labelArry = ["LOVE", "THE", "WAY", "YOU", "LOOKat" ,"ME"]
    
    var i = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype ==  UIEvent.EventSubtype.motionShake{
            
            lbl.text = labelArry[i]
            
            if i >= 5{
                
                i = 0
            }
            else{
                i += 1
            }
        }
    }


}
