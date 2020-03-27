//
//  ViewController.swift
//  CoreAnimation-1
//
//  Created by Mayurii Gajbhiye on 27/03/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var descLbl: UILabel!
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        bgImage.alpha = 0
        descLbl.alpha = 0
        titleLbl.alpha = 0
        btn.alpha = 0
    

    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        UIView.animate(withDuration: 1, animations: {
            self.bgImage.alpha = 0.6
        }) { (true) in
         
            self.showTitle()
        }
    }
    
            
    func showTitle(){
            
            UIView.animate(withDuration: 1, animations: {
                self.titleLbl.alpha = 1
            }) { (true) in
                self.showDesc()
            }
        }
    
    
    func showDesc(){
        
        UIView.animate(withDuration: 1, animations: {
                   self.descLbl.alpha = 1
               }) { (true) in
                   self.showBtn()
           }
           
    }
    func showBtn(){
        
        UIView.animate(withDuration: 1, animations: {
                   self.btn.alpha = 1
               })
           }
        
        
        
    }


