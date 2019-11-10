//
//  GraphViewController.swift
//  Phyzmo
//
//  Created by Athena Leong on 11/9/19.
//  Copyright © 2019 Athena. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }
    

}
