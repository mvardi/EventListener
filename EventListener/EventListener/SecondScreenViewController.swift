//
//  SecondScreenViewController.swift
//  EventListener
//
//  Created by Interview on 06/09/2022.
//

import UIKit

class SecondScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func buttonHandler(_ sender: Any) {
        
        
        //DispatchQueue.main.async {
         //   self.performSegue(withIdentifier: "unwindToFirstScreen", sender: self)
        //}
        
        self.performSegue(withIdentifier: "unwindToFirstScreen", sender: self)
    }
}
