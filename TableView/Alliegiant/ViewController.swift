//
//  ViewController.swift
//  Alliegiant
//
//  Created by P10 on 16/04/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    struct Apple{
        let title: String
        let imageName: String
        let productPrice: String
        let deliveryDescprition: String
        let productDescription: String
    }
    
    let data: [Apple] = [
        Apple(title: "MacBook Air M2", imageName: "Image1", productPrice: "₹ 99,900", deliveryDescprition: "FREE delivery Sat, 20 Apr", productDescription: "Brand: Apple\n Model Name: MacBook Air \n Screen Size:  13.6"),
        Apple(title: "iPhone 15 Pro Max", imageName: "image2", productPrice: "₹ 1,48,800", deliveryDescprition: "FREE delivery Sat, 20 Apr", productDescription: "8GB"),
        Apple(title: "Apple Watch SE", imageName: "image3", productPrice: "₹ 30,000", deliveryDescprition: "FREE delivery Sat, 20 Apr", productDescription: "8GB"),
        Apple(title: "AirPods (3rd generation)", imageName: "image4", productPrice: "₹ 19,900", deliveryDescprition: "FREE delivery Sat, 20 Apr", productDescription: "8GB"),
        Apple(title: "iMac", imageName: "image5", productPrice: "₹ 1,34,900", deliveryDescprition: "FREE delivery Sat, 20 Apr", productDescription: "8GB"),
        Apple(title: "Apple TV", imageName: "image6", productPrice: "₹ 14,900", deliveryDescprition: "FREE delivery Sat, 20 Apr", productDescription: "8GB"),
        Apple(title: "AirPods Max", imageName: "image7", productPrice: "₹ 59,900", deliveryDescprition: "FREE delivery Sat, 20 Apr", productDescription: "8GB")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    
}

//MARK - DELEGATE VIEW CONTROLLER
extension ViewController{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("tapped")
//        textToBeSent = dataToBeDisplayed[indexPath.row]
//        self.performSegue(withIdentifier: "infoView", sender: nil)
//        let selectedSunset = data[indexPath.row]
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "mySecondViewController") as! mySecondViewController
        detailVC.myString = data[indexPath.row].title
        detailVC.myDisplayImage = UIImage(named: data[indexPath.row].imageName)
        detailVC.descriptionLabel = data[indexPath.row].productDescription
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
//        let info = segue.destination as! mySecondViewController
//        info.myString = textToBeSent
//    }
}

//MARK - DATA SOURCE
extension ViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let apple = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = apple.title
        cell.delivery.text = apple.deliveryDescprition
        cell.price.text = apple.productPrice
        cell.iconImageView.image = UIImage(named: apple.imageName)
        return cell
    }
}



