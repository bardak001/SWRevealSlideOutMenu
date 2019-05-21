//
//  ViewController.swift
//  SWRevealSlideOutMenu
//
//  Created by Радим Гасанов on 20/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.title = NSLocalizedString("Front View", comment: "")
        
        let revealController: SWRevealViewController? = revealViewController()
        revealController?.panGestureRecognizer()
        revealController?.tapGestureRecognizer()
        
        let revealButtonItem = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: revealController, action: #selector(revealController?.revealToggle(_:)))
        navigationItem.leftBarButtonItem = revealButtonItem
    }
}
