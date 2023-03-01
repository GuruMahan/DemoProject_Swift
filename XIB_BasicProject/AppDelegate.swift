//
//  AppDelegate.swift
//  XIB_BasicProject
//
//  Created by Guru Mahan on 24/02/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    internal var navigationController:UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if UserDefaults.standard.bool(forKey: "login"){
            self.setAsRootViewController([HomePageViewController()])
        }else{
            self.setAsRootViewController([LoginPageViewController()])
        }
        return true
    }

  

}



extension AppDelegate{
    
    func setAsRootViewController(_ controllers: [UIViewController]){
        self.navigationController =  UINavigationController()
        self.navigationController?.viewControllers = controllers
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self.navigationController
        self.window?.makeKeyAndVisible()
    }
}
