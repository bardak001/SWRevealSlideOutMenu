//
//  OrangeViewController.swift
//  SWRevealSlideOutMenu
//
//  Created by Радим Гасанов on 21/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .orange
        self.title = NSLocalizedString("Front Orange View", comment: "")
        
        let revealController: SWRevealViewController? = revealViewController()
        let revealButtonItem = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: revealController, action: #selector(revealController?.revealToggle(_:)))
        navigationItem.leftBarButtonItem = revealButtonItem
    }
}
