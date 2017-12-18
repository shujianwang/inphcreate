//
//  LoginViewController.swift
//  sdmi
//
//  Created by 王树建 on 2017/12/17.
//  Copyright © 2017年 王树建. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //定义渐变的颜色:开始与结束的颜色
        let startColor = UIColor(red:0.25,green:0.59,blue:0.97,alpha:1)
        let endColor = UIColor(red:0.03,green:0.23,blue:0.96,alpha:1)
        let shadeColors = [startColor.cgColor,endColor.cgColor]
        let shadeLoactions:[NSNumber] = [0.3,0.8]
        
        let shadelayer = CAGradientLayer()
        //定义启始颜色的位置
        shadelayer.colors = shadeColors;
        shadelayer.locations = shadeLoactions
        shadelayer.frame = self.view.frame
        self.view.layer.insertSublayer(shadelayer, at: 0)
        
    }

    
    //
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    


}
