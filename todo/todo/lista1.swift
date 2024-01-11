//
//  lista 1.swift
//  todo
//
//  Created by student on 11/01/2024.
//

import Foundation


import UIKit

var listaZadan = [String]()
var listaDat = [String]()

class lista1: UIViewController , UITableViewDelegate, UITableViewDataSource{

  

    @IBOutlet weak var tabela: UITableView!
    
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return listaZadan.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cellvar = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! widokWielokolumnowy

    //cell.textLabel?.text = String(liczby * indexPath.row + 1)

    cellvar.labelTask?.text = listaZadan[indexPath.row]
    cellvar.labelTermin?.text = listaDat[indexPath.row]
    //cell.textLabel?.text= arr[indexPath.row]
    return cellvar
    
   //let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
    //cell.textLabel?.text = listaZadan[indexPath.row]
    
    //return cell
}
//przeładowanie ekranu ponowne zaczytanie danych
override func viewDidAppear(_ animated: Bool) {
   tabela.reloadData()
}





override func viewDidLoad() {
    super.viewDidLoad()
    if UserDefaults.standard.object(forKey: "listazadan") != nil{
        listaZadan = UserDefaults.standard.object(forKey: "listazadan") as! [String]
    }
    if UserDefaults.standard.object(forKey: "listadat") != nil{
        listaDat = UserDefaults.standard.object(forKey: "listadat") as! [String]
    }
    
}
//kasowanie rekordow

func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
{
    if editingStyle == UITableViewCell.EditingStyle.delete{
        listaZadan.remove(at: indexPath.row)
        listaDat.remove(at: indexPath.row)
        UserDefaults.standard.set(listaZadan, forKey: "listazadan")
        UserDefaults.standard.set(listaDat, forKey: "listadat")
        tabela.reloadData()
    }
}

   
}

class widokWielokolumnowy: UITableViewCell{
    @IBOutlet weak var labelTask: UILabel!
    @IBOutlet weak var labelTermin: UILabel!
    
}

