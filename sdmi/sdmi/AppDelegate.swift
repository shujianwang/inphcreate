//
//  AppDelegate.swift
//  sdmi
//
//  Created by 王树建 on 2017/12/17.
//  Copyright © 2017年 王树建. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        launchAnimation()//启动画面
        return true
    }
    //启动画面 - 动画设置
    func launchAnimation()
    {
        let VC = UIStoryboard(name:"LaunchScreen",bundle:nil)
            .instantiateViewController(withIdentifier:"launch")
         let launchview = VC.view!
        
        //定义渐变的颜色:开始与结束的颜色
        let startColor = UIColor(red:0.25,green:0.59,blue:0.97,alpha:1)
        let endColor = UIColor(red:0.03,green:0.23,blue:0.96,alpha:1)
        let shadeColors = [startColor.cgColor,endColor.cgColor]
        let shadeLoactions:[NSNumber] = [0.3,0.8]
        
        let shadelayer = CAGradientLayer()
        //定义启始颜色的位置
        shadelayer.colors = shadeColors;
        shadelayer.locations = shadeLoactions
        shadelayer.frame = launchview.frame
        launchview.layer.insertSublayer(shadelayer, at: 0)
        sleep(5)
        let delegate = UIApplication.shared.delegate
        delegate?.window!!.addSubview(launchview)
        //播放动画效果
      
        UIView.animate(withDuration: 1, delay: 0.5, options:.beginFromCurrentState, animations: {
            launchview.alpha = 0.0
            launchview.layer.transform = CATransform3DScale(CATransform3DIdentity, 1.5, 1.5, 1.0)
        }){(finished)in launchview.removeFromSuperview()}
    }
    //
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

