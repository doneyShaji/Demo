//
//  mySecondViewController.swift
//  Alliegiant
//
//  Created by P10 on 17/04/24.
//

import UIKit

class mySecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    //@IBOutlet weak var myImage: UIImageView!
    var myString: String? 
    var myDisplayImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = myString
        myImage.image = myDisplayImage
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
