//
//  AppConfigurator.swift
//  SWRevealSlideOutMenuUITests
//
//  Created by Радим Гасанов on 20/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

class AppConfigurator: NSObject, SWRevealViewControllerDelegate {
    
    func createRevealMenu(frontViewController: UIViewController, rearViewController: UIViewController) -> UIWindow? {
        
        var window: UIWindow?
        let viewNavigationController = UINavigationController(rootViewController: frontViewController)
        
        let revealController = SWRevealViewController(rearViewController: rearViewController, frontViewController: viewNavigationController)
        revealController?.delegate = self
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = revealController
        window?.makeKeyAndVisible()
        return window
    }
}
