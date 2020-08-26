//
//  ViewController.swift
//  TestMenuBae
//
//  Created by APP技術部-陳冠志 on 2020/8/24.
//  Copyright © 2020 Bruce Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isSwitchVC1: Bool = false //true -> VC1 / false -> VC2
    static let shared = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func nextBtnPressed(_ sender: Any) {
        
        

        if isSwitchVC1 {
            
            self.performSegue(withIdentifier: "MainSegue", sender: nil)
            
        } else {
            
            //I want to know how to performSegue to VC2            
            let sw = storyboard?.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
            self.view.window?.rootViewController = sw

            let mainStroyBoard:UIStoryboard = UIStoryboard(name: "StoryboardVC2", bundle: nil)
            let desController = mainStroyBoard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            sw.pushFrontViewController(newFrontViewController, animated: true)
        }
                
    }
    
}

