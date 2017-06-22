//
//  HomeListViewController.swift
//  TableViewUsage
//
//  Created by iFlame. on 22/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class HomeListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }

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
    
    //MARK:- UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int{
        return 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        if section == 0{
            return 5
        }else if section == 1 {
            return 3
        }else if section == 2 {
            return 10
        }
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell : UITableViewCell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "CellIdentifier")
        
        cell.textLabel?.text = "\(indexPath.section) - \(indexPath.row)"
        return cell
        
    }
    //MARK:- UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("indexPath ==>> \(indexPath.section) - \(indexPath.row)")
    }

}
