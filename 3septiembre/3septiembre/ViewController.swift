//
//  ViewController.swift
//  3septiembre
//
//  Created by macbook on 03/09/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tablita: UITableView!
    
    var libros = [compra]()
    var carrito = [compra]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        libros.append(compra(nombre: "La Tregua", precio: 229.00, descripcion: "Autor: Mario Benedetti, Género: Novela-Romántica ",imagen:"Tregua"))
        libros.append(compra(nombre: "Memoria de mis putas tristes", precio: 158.00, descripcion: "Autor: Gabriel García Márquez, Género: Novela",imagen:"gabo"))
        libros.append(compra(nombre: "El principito", precio: 295.00, descripcion: "Autor: Antoine de Saint-Exupéry, Género: Cuento", imagen: "principito"))
        libros.append(compra(nombre: "Orgullo y Prejuicio", precio: 200.00, descripcion: "Autor: Jane Austen, Género: Novela Romantica", imagen: "orgullo"))
        libros.append(compra(nombre: "La Naranja Mecánica", precio:129.00, descripcion: "Autor: Anthony Burgess, Género: Novela", imagen: "naranja"))

    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return libros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = "\(libros[indexPath.row].nombre)"
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "secondViewController"{
            let indexPath = tablita.indexPathForSelectedRow
            let destination = segue.destination as! SecondViewController
            destination.fromFirstView = libros[(indexPath?.row)!]
        }

    }


}



