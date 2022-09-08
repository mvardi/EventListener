//
//  ViewController.swift
//  EventListener
//
//  Created by Interview on 06/09/2022.
//

import UIKit
import EventListenerSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonHandler(_ sender: UIButton) {
    }
    
    
    @IBAction func unwindToFirstScreen(segue: UIStoryboardSegue) {
        
        print("unwind to first view controller")
    }
        
    
}



