//
//  ViewController.swift
//  S8ChurivantiP1
//
//  Created by Mac19 on 4/05/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Referenciando a la table cat
    @IBOutlet var tableViewCat: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Permite responder a eventos de usuarios
        tableViewCat.delegate = self
        
        // Permite la introduccion y visualizacion de datos
        tableViewCat.dataSource = self
    }
    
    // Creamos un array de Cats
    let cats: [Cat] = [
        Cat(postImage: "tom1", nameCat: "Tom", razaCat: "Renacido", character: "Jugueton", tamanio: "Mediano", edad: "7 meses", color: "Negro"),
        Cat(postImage: "cat1", nameCat: "Fenix", razaCat: "Renacido", character: "Jugueton", tamanio: "Pequeno", edad: "6 meses", color: "Naranja"),
        Cat(postImage: "cat2", nameCat: "Tarzan", razaCat: "Renacido", character: "Jugueton", tamanio: "Mediano", edad: "9 meses", color: "Negro"),
        Cat(postImage: "cat3", nameCat: "Luis", razaCat: "Renacido", character: "Jugueton", tamanio: "Mediano", edad: "10 meses", color: "Blanco"),
        Cat(postImage: "cat4", nameCat: "Fenix", razaCat: "Renacido", character: "Jugueton", tamanio: "Mediano", edad: "6 meses", color: "Negro"),
        Cat(postImage: "tom", nameCat: "Firu", razaCat: "Renacido", character: "Jugueton", tamanio: "Mediano", edad: "7 meses", color: "Blanco"),
        Cat(postImage: "cat5", nameCat: "Foca", razaCat: "Renacido", character: "Jugueton, carinoso", tamanio: "Mediano", edad: "11 meses", color: "Negro"),
        Cat(postImage: "cat6", nameCat: "Colorido", razaCat: "Renacido", character: "Jugueton", tamanio: "Mediano", edad: "11 meses", color: "Naranja"),
        Cat(postImage: "cat1", nameCat: "Black", razaCat: "Renacido", character: "Jugueton", tamanio: "Mediano", edad: "11 meses", color: "Negro"),
        Cat(postImage: "cat8", nameCat: "Aleman", razaCat: "Renacido", character: "Jugueton", tamanio: "Mediano", edad: "10 meses", color: "Blanco"),
    ]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Nos permite retornar el numero de filas por seccion
        return cats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Al colocar el as! con el nombre del TableViewCell estamos permitiendo que se pueda acceder a los atributos que contiene como el ImagePost, nameCat and razaCat
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PostTableViewCell
        
        // Nos esta permitiendo saber el numero de fila
        let cats: Cat = cats[indexPath.row]
        
        // Estamos accediendo al atributo postImage y colocando el valor qu tendra
        cell.postImage.image = UIImage(named: cats.postImage)
        
        // Accediendo al atributo namecat y colocando el valor
        cell.nameCat.text = cats.nameCat
        
        // Accediendo al atributo razaCat y colocando el valor
        cell.razaCat.text = cats.razaCat
        
        return cell
        
    }

    // Trabajando con los detalles
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "secondSegue", sender: cats[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "secondSegue" {
            if let postDetail = segue.destination as? DetailCatViewController,
               let selectPost = sender as? Cat {
                postDetail.cat = selectPost
            }
        }
    }
    
    
}

