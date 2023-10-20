//
//  DetalleRopaViewController.swift
//  Lista-Peliculas
//
//  Created by Alumno on 20/10/23.
//

import UIKit

class DetalleRopaViewController: UIViewController {

    @IBOutlet weak var RopaLabel: UILabel!
    var recibirRopa: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        RopaLabel.text = recibirRopa ?? ""
    }
    
   

}
