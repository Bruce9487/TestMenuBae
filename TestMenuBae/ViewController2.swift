//
//  ViewController2.swift
//  TestMenuBae
//
//  Created by APP技術部-陳冠志 on 2020/8/24.
//  Copyright © 2020 Bruce Chen. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var vc2ItemButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vc2ItemButton.target = self.revealViewController()
        vc2ItemButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        
    }
    
}
