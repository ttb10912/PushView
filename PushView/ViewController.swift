//
//  ViewController.swift
//  zingLayout
//
//  Created by TTB10912 on 27/08/2016.
//  Copyright © 2016 TTB10912. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var logo: UIButton!
    @IBOutlet weak var text: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        logo!.alpha = 0
        
        text!.alpha = 0
        
        name!.alpha = 0
        
    }
    
    @IBAction func act_Change(sender: AnyObject) {
        let v2 = self.storyboard?.instantiateViewControllerWithIdentifier("V2") as! LoginController
        
        self.navigationController?.pushViewController(v2, animated: true)
    }
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        UIView.animateWithDuration(4, animations: { self.logo!.alpha = 1 })
            
            
        { (finished) in
            
            UIView.animateWithDuration(3, animations: {
                
                self.text!.center = CGPointMake(self.logo!.center.x, 100)
                
                self.text!.alpha = 1
                
            }) { (finished) in
            
            UIView.animateWithDuration(3, animations: {
            
            self.name!.center = CGPointMake(self.logo!.center.x, 500)
            
            self.name!.alpha = 1
            
            })
                
                
            }
            
        }
        
    }
    
}

