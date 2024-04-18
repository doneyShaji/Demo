//
//  ViewController.swift
//  Alliegiant
//
//  Created by P10 on 16/04/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    var dataToBeDisplayed = ["Sunset 1","Sunset 2","Sunset 3","Sunset 4","Sunset 5"]
    struct Sunset{
        let title: String
        let imageName: String
    }
    
    let data: [Sunset] = [
        Sunset(title: "Image 1", imageName: "image1"),
        Sunset(title: "Image 2", imageName: "image2"),
        Sunset(title: "Image 3", imageName: "image3"),
        Sunset(title: "Image 4", imageName: "image4"),
        Sunset(title: "Image 5", imageName: "image5")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    var textToBeSent: String = ""
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
        textToBeSent = dataToBeDisplayed[indexPath.row]
        self.performSegue(withIdentifier: "infoView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let info = segue.destination as! mySecondViewController
        info.myString = textToBeSent
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = sunset.title
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }

}

