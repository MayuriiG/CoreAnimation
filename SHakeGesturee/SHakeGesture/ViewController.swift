//
//  ViewController.swift
//  SHakeGesture
//
//  Created by Mayurii Gajbhiye on 01/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //note make class first
    @IBOutlet weak var imgeDisplay: UIImageView!
    
   var imgesCollection:[ImagesViw] = []
   var currentImage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        let imge1 = ImagesViw()
            imge1.key = "wallp_food1"
            imgesCollection.append(imge1)
        
        let imge2 = ImagesViw()
            imge2.key = "wallp_food2"
            imgesCollection.append(imge2)
  
        let imge3 = ImagesViw()
            imge3.key = "wallp_food4"
            imgesCollection.append(imge3)
    
        let imge4 = ImagesViw()
            imge4.key = "wallp_food8"
            imgesCollection.append(imge4)
           
        let imge5 = ImagesViw()
            imge5.key = "wallp_food10"
            imgesCollection.append(imge5)
       
        let imge6 = ImagesViw()
            imge6.key = "wallp_food12"
            imgesCollection.append(imge6)
     
        
    }

    class ImagesViw{
        
        var key:String = ""
    }
  
    
    
   override func motionEnded(_ motion:UIEvent.EventSubtype,with event : UIEvent?)
    {
        if event?.subtype == UIEvent.EventSubtype.motionShake{
            
        imgeDisplay.image = UIImage(named: imgesCollection[currentImage].key + ".jpg")
            
        
            if (currentImage == imgesCollection.count-1)
            {
                
                currentImage = 0
                
            }else{
                
                currentImage += 1
            }
        }
    }
    

}

