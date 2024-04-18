//
//  ViewController.swift
//  CustomTableView
//
//  Created by P10 on 16/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo.image = #imageLiteral(resourceName: "logo")
    }


}

