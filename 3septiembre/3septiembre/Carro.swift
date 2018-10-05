//
//  Carro.swift
//  3septiembre
//
//  Created by macbook on 03/10/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class Carro: UIViewController,UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tabla: UITableView!
     var totalpre : Double = 0.0
    override func viewDidLoad() {
        print(lista.count)
        super.viewDidLoad()
        for i in 0...lista.count-1
        {
            totalpre += lista[i].precio
        }
        total.text = String("Total: $ \(totalpre)")
    
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdita", for: indexPath)
        
        cell.textLabel?.text = "\(lista[indexPath.row].nombre) \t \t   \(lista[indexPath.row].precio)"
        
        return cell
    }
    
    
    }

