//
//  ViewController.swift
//  Seasons
//
//  Created by P10 on 15/04/24.
//

import UIKit

class ViewController: UIViewController {
    var arr = ["Summer","Autumn","Spring","Winter"]

    @IBOutlet var bg: UIView!
    @IBOutlet weak var labelOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Click(_ sender: Any) {
        var flag = arr.indices.randomElement() //getting the index of the RandomElement //optional
        if let trial = flag{ //changing text
            labelOne.text = arr[trial]
            switch trial{
            case 0:
                bg.backgroundColor = UIColor.red
            case 1:
                bg.backgroundColor = UIColor.orange
            case 2:
                bg.backgroundColor = UIColor.green
            case 3:
                bg.backgroundColor = UIColor.blue
            default:
                bg.backgroundColor = UIColor.black
            }
        }
    }
    

}

