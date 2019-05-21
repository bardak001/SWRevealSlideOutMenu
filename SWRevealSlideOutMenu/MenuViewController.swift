//
//  MenuViewController.swift
//  SWRevealSlideOutMenu
//
//  Created by Радим Гасанов on 20/05/2019.
//  Copyright © 2019 Халу. All rights reserved.
//

import UIKit

class MenuViewController:  UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    private var presentedRow: Int = 0
    private let tableViewController = UITableViewController(style: .plain)
    private let allItem = ["Main View Controller","Red View Controller","Orange View Controller"]
    private let allViews = [ViewController(), RedViewController(), OrangeViewController()]
    private let cellIdentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTableView()
        self.title = NSLocalizedString("Rear View", comment: "")
        self.view.backgroundColor = .white
        self.view.addSubview(tableViewController.tableView)
    }
    
    func createTableView(){
        tableViewController.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        tableViewController.tableView.delegate = self
        tableViewController.tableView.dataSource = self
        tableViewController.tableView.isScrollEnabled = false
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let item = allItem[indexPath.row]
        cell.textLabel?.text = item
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealController: SWRevealViewController? = revealViewController()
        let row: Int = indexPath.row
        
        if row == presentedRow { return }
        print("switch row - \(row)")
        
        let newFrontController: UIViewController = allViews[row]
        let navigationController = UINavigationController(rootViewController: newFrontController)

        revealController?.pushFrontViewController(navigationController, animated: true)
        presentedRow = row
    }
}
    
