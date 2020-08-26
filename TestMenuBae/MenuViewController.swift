//
//  MenuViewController.swift
//  TestMenuBae
//
//  Created by APP技術部-陳冠志 on 2020/8/24.
//  Copyright © 2020 Bruce Chen. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    let vc = ViewController.shared
    
    var vcArray: [String] = ["VC1","TEST1","TTEESSTT11"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("===) isSwitchVC1 : \(vc.isSwitchVC1)")
        
        if vc.isSwitchVC1 {
            self.vcArray = ["VC1", "TEST1", "TTEESSTT11"]
        } else {
            self.vcArray = ["VC2", "TEST1", "TTEESSTT11"]
        }
        
        tableview.dataSource = self
        tableview.delegate   = self
    }
    
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vcArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = vcArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let revealviewcontroller: SWRevealViewController = self.revealViewController()
        
        let cell = tableView.cellForRow(at: indexPath)
        print(cell?.textLabel?.text ?? "CELL NO TEXT.")
        
        switch cell?.textLabel?.text {
        case "VC1":
            
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "StoryboardVC1", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
            
        case "VC2":
            
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "StoryboardVC2", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
            
        case "TEST1":
            
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "Test1ViewController") as! Test1ViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
            
        case "TTEESSTT11":
            
            let mainstoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewcontroller = mainstoryboard.instantiateViewController(withIdentifier: "Tteesstt11ViewController") as! Tteesstt11ViewController
            let newFrontController = UINavigationController.init(rootViewController: newViewcontroller)
            revealviewcontroller.pushFrontViewController(newFrontController, animated: true)
            
        default:
            break
        }
        
    }
    
}
