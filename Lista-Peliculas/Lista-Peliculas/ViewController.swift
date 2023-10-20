//
//  ViewController.swift
//  Lista-Peliculas
//
//  Created by Alumno on 10/10/23.
//

import UIKit

struct Pelis {
    let title: String
    let imageName: String
    let price: String
    let Description: String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
   
    
    let data: [Pelis] = [
        Pelis(title: "Buso", imageName: "unnamed", price: "290.00", Description: "Buso para el frío"),
        Pelis(title: "Smoking", imageName: "unnamed-2", price: "240.00", Description: "Para tiempo de vals"),
        Pelis(title: "Polo blanco", imageName: "unnamed-3", price: "209.00", Description: "Para el verano"),
        Pelis(title: "Polo negro", imageName: "unnamed-4", price: "520.00", Description: "Para el verano"),
        Pelis(title: "Camison", imageName: "unnamed-5", price: "420.00", Description: "Para las damas"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pelis = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = pelis.title
        cell.label1.text = pelis.price
        cell.label2.text = pelis.Description
        
        cell.iconImageView.image = UIImage(named: pelis.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(data[indexPath.row])
        
        performSegue(withIdentifier: "send", sender: self)
    }
    
}

