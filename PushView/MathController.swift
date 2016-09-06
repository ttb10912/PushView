//
//  ViewController.swift
//  MyMath
//
//  Created by TTB10912 on 8/26/16.
//  Copyright © 2016 TTB10912. All rights reserved.
//

import UIKit

class MathController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(timeOut), userInfo: nil, repeats: true)
        setRandom()
    }
    @IBOutlet weak var lbl_num1: UILabel!
    
    @IBOutlet weak var lbl_num2: UILabel!
    
    @IBOutlet weak var btn_b3: UIButton!
    
    @IBOutlet weak var btn_b2: UIButton!
    
    @IBOutlet weak var btn_b1: UIButton!
    
    @IBOutlet weak var lbl_right: UILabel!
    
    @IBOutlet weak var lbl_wrong: UILabel!
    
    @IBOutlet weak var lbl_time: UILabel!
    
    var dung:Int = 0
    var sai:Int = 0
    var ketQua:Int = 0
    var time:Int = 20
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
            
            
            

    }
    func timeOut(){
    time = time - 1
    lbl_time.text = "Time : \(time)"
       
    }
    @IBAction func btn_action(sender: UIButton) {
        
        
        print(ketQua)
        if ketQua == Int((sender.titleLabel?.text!)!) {
            dung=dung+1
            lbl_right.text = "Right : \(dung)"
            
        } else {
            sai = sai+1
            lbl_wrong.text = "Wrong : \(sai)"
        }
        setRandom()
        time=20
    }
    
    
    func setRandom(){
        
        let random1 = Int(arc4random_uniform(4)) + 1;// random 1 -> 4
        let random2 = Int(arc4random_uniform(4)) + 1;// random 1 -> 4
        
        //hiển thị 2 số vào label
        
        lbl_num1.text = String(random1)
        lbl_num2.text = String(random2)
        ketQua = Int(random1) + Int(random2)
        setResult(random1, randomB: random2)
        

    }
    
    //hiển thị đáp án
    func setResult(randomA:Int, randomB:Int) {
        
        let randomS = Int(arc4random_uniform(2))
        
        if(randomS == 0){
            
            btn_b3.setTitle(String(randomA), forState: .Normal)
            
            btn_b2.setTitle(String(randomB), forState: .Normal)
            
            btn_b1.setTitle(String(sum(randomA, p2: randomB)), forState: .Normal)
        }
        if(randomS == 1){
            
            btn_b1.setTitle(String(randomA), forState: .Normal)
            
            btn_b3.setTitle(String(randomB), forState: .Normal)
            
            btn_b2.setTitle(String(sum(randomA, p2: randomB)), forState: .Normal)
        }
        if(randomS == 2){
            
            btn_b1.setTitle(String(randomA), forState: .Normal)
            
            btn_b2.setTitle(String(randomB), forState: .Normal)
            
            btn_b3.setTitle(String(sum(randomA, p2: randomB)), forState: .Normal)
        }
        
        
        
        

    }
    
    //tính kết quả
    func sum(p1:Int , p2:Int) -> Int {
        
        return p1+p2;
        
    }

}

