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
    
    var mascotas = [compra]()
    var carrito = [compra]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mascotas.append(compra(nombre: "Caballo", precio: 99.9, descripcion: "Tamaño:20 cm, Color: cafe",imagen:"caballo"))
        mascotas.append(compra(nombre: "Coco", precio: 260.89, descripcion: "Tamaño: 30 cm, Color: blanco",imagen:"coco"))
        mascotas.append(compra(nombre: "Zorro", precio: 120.5, descripcion: "Tamaño: 20 cm, Color: cafe", imagen: "zorro"))
        mascotas.append(compra(nombre: "Gato pizza", precio: 59.45, descripcion: "Tamaño: 50 cm, Color: gris", imagen: "gatopizza"))
        mascotas.append(compra(nombre: "Cocodrilo", precio: 67.89, descripcion: "Tamaño: 15 cm, Color: verde limon", imagen: "cocodrilo"))

    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mascotas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = "\(mascotas[indexPath.row].nombre)"
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "secondViewController"{
            let indexPath = tablita.indexPathForSelectedRow
            let destination = segue.destination as! SecondViewController
            destination.fromFirstView = mascotas[(indexPath?.row)!]
        }

    }


}



