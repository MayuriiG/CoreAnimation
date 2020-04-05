//
//  ViewController.swift
//  SplashScreen
//
//  Created by Mayurii Gajbhiye on 31/03/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let arryImage = UIImageView(image: UIImage(named: "icon@13")!)
 
    
    let splshView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        splshView.backgroundColor = UIColor(red: 55/255, green: 53/255, blue: 79/255, alpha: 1.0)
        view.addSubview(splshView)
    
        splshView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
   
        arryImage.contentMode = .scaleAspectFit
        splshView.addSubview(arryImage)
        arryImage.frame = CGRect(x: splshView.frame.maxX-50, y: splshView.frame.maxY-50, width: 100, height: 100)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.default
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
 
      //  DispatchQueue.main.asyncAfter(deadline: <#T##DispatchTime#>, execute: <#T##() -> Void#>)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
            self.scaleDownAnimation()
        }
    
    
    
    }

    func scaleDownAnimation(){
        
        
        UIView.animate(withDuration: 0.5,animations: {
            self.arryImage.transform = CGAffineTransform(scaleX: 0.5
                , y: 0.5)
        
        })    { ( success ) in
            self.scaleDownAnimation()
        }


    }

    
    func scaleUpAnimation(){
        UIView.animate(withDuration: 0.35, delay: 0.1, options: .curveEaseIn, animations: {
            self.arryImage.transform = CGAffineTransform(scaleX: 5, y: 5)
        }) { (success) in
            self.removeSplashScreen()
        }
    }

        
        
    func removeSplashScreen(){
    
        splshView.removeFromSuperview()
    
    }
        
}

