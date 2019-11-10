//
//  MainViewController.swift
//  Phyzmo
//
//  Created by Athena Leong on 11/9/19.
//  Copyright © 2019 Athena. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {
    
    //UIElements
    @IBOutlet weak var logOutButton: UIBarButtonItem!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var chartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logOutButtonPressed(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func cameraButtonPressed(_ sender: Any) {
        
        VideoHelper.startMediaBrowser(delegate: self, sourceType: .camera)

    }
    
    @IBAction func chartButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "MainToVideo", sender: self)
    }
    
    
    
}
