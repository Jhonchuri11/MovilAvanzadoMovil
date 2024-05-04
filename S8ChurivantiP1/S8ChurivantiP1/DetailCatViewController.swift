//
//  DetailCatViewController.swift
//  S8ChurivantiP1
//
//  Created by Mac19 on 4/05/24.
//

import UIKit

class DetailCatViewController: UIViewController {

    
    @IBOutlet var nameCat: UILabel!
    
    @IBOutlet var razaCat: UILabel!
    
    @IBOutlet var postImage: UIImageView!
    
    @IBOutlet var characterCat: UILabel!
    
    @IBOutlet var tamanioEdad: UILabel!
    
    @IBOutlet var edadCat: UILabel!
    
    
    @IBOutlet var colorCat: UILabel!
    
    // creamos una variable que almacena solo el registro que le pertecene
    var cat: Cat?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let cat = cat {
            print(cat.nameCat)
            nameCat.text = cat.nameCat
            razaCat.text = cat.razaCat
            postImage.image = UIImage(named: cat.postImage)
            characterCat.text =  cat.character
            tamanioEdad.text = cat.tamanio
            edadCat.text = cat.edad
            colorCat.text = cat.color
        }
    }
    


}
