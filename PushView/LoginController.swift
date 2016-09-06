//
//  ViewController.swift
//  LoginForm
//
//  Created by TTB10912 on 8/27/16.
//  Copyright © 2016 TTB10912. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var tf_user: UITextField!
  
    @IBOutlet weak var tf_pass: UITextField!
    
    var users = ["ttb10912":"12345"
    ,"pdt4794":"54321"]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func act_login(sender: AnyObject) {
        if let passwd = users[tf_user.text!]
        {
            if passwd == tf_pass.text
            {
                print("Đăng nhập thành công")
                
                let v3 = self.storyboard?.instantiateViewControllerWithIdentifier("V3") as! MathController
                
                self.navigationController?.pushViewController(v3, animated: true)
            }
            else
            { print("Mật khẩu không chính xác")}
        } else
        { print("tài khoán không tồn tại") }
        
    
    }
    @IBAction func act_listUser(sender: AnyObject) {
        
        let user = users.keys
        for user in user {
            print(user)
        }
//        for (tendangnhap,matkhau) in users{
//            print(tendangnhap)
//        }
    

    }
    @IBAction func act_deleteUser(sender: AnyObject) {
        
        if let passwd = users[tf_user.text!]
        {
            if passwd == tf_pass.text
                
            {
                users.removeValueForKey("\(String(tf_user.text!))")

                print("Xóa thành công")}
            else
            { print("Mật khẩu không chính xác")}
        } else
        { print("tài khoán không tồn tại") }
    }
    
    
    @IBAction func act_regUser(sender: AnyObject) {
        if tf_user.text!=="" && tf_pass.text!==""{
            print("Không được để trống")
        } else{
        users ["\(String(tf_user.text!))"] = "\(String(tf_pass.text!))"
        print("Đăng ký thành công")
        }
    }
    
    @IBAction func act_changeInfo(sender: AnyObject) {
        
        if let passwd = users[tf_user.text!]
        {
            users ["\(String(tf_user.text!))"] = "\(String(tf_pass.text!))"
            print("tài khoản đã thay đổi")
        } else
        { print("tài khoán không tồn tại") }
    }
    
    
    
    
}
