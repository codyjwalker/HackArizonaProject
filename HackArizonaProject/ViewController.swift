//
//  ViewController.swift
//  HackArizonaProject
//
//  Created by Kaleb Markos on 1/12/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    static var viewCount: Int {
        get {
            return UserDefaults.standard.integer(forKey: "viewCount")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "viewCount")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options:        [.alert, .badge, .sound], completionHandler: {didAllow, error in})

        if (ViewController.viewCount >= 1) {
            // DEBUG * * * *
            print("viewCount is greater than or equal to 1")
            
            // switch screen to screen w table view of pills
            
            
            
            
        } else {
            print("viewCount is less than 1")
        }
        
        
        
        
        // increment viewCount by 1
        ViewController.viewCount += 1;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}




//MARK: - UIApplication Extension
extension UIApplication {
    class func topViewController(viewController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = viewController as? UINavigationController {
            return topViewController(viewController: nav.visibleViewController)
        }
        if let tab = viewController as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(viewController: selected)
            }
        }
        if let presented = viewController?.presentedViewController {
            return topViewController(viewController: presented)
        }
        return viewController
    }
}

