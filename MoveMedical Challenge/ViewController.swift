//
//  ViewController.swift
//  MoveMedical Challenge
//
//  Created by Tomas Galvan-Huerta on 4/22/20.
//  Copyright © 2020 Tomas Galvan-Huerta. All rights reserved.
//

// (books, phones and cars)
import UIKit




class ViewController: UITableViewController {
    
    
    var AllItems: [Descriptionf] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addAllTimes()
        // var phot = AllItems.filter { $0 is Phone}
        // Do any additional setup after loading the view.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllItems.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableCell else{
            return UITableViewCell()
        }
        cell.prepareForReuse()

        let item = AllItems[indexPath.row]
        cell.Name.text = " \(item.name)"
        cell.Description.text = item.description
        if item is Phone{//Brand
            
            let it = item as! Phone
            cell.imageView?.image = #imageLiteral(resourceName: "Phone")
            cell.Brand.text = it.Brand
            cell.CarStack.isHidden = true
            cell.BookStack.isHidden = true
            cell.PhoneModel.text = "Model: \(it.model)"
            cell.CanText.text = "Can text: \(it.CanText)"
            
            
        }else if item is Car{ //Brand
            let it = item as! Car
            cell.PhoneStack.isHidden = true
            cell.Brand.text = it.Brand
            cell.imageView?.image = #imageLiteral(resourceName: "Car")
            cell.BookStack.isHidden = true
            cell.Has4Doors.text = "Has 4 doors: \(it.Has4Doors)"
            cell.isHybrid.text = "Is Hybrid: \(it.Hybrid)"
            
        }
        else if item is Book{
            let it = item as! Book
            cell.imageView?.image =  #imageLiteral(resourceName: "Book")
            cell.PhoneStack.isHidden = true
            cell.CarStack.isHidden = true
            cell.isComicBook.text = "Is Comic Book: \(it.comicBook)"
            cell.Author.text = "By: \(it.author)"
            
            
        }else{
            cell.Name.text = "Error Loading"
        }
        
        return cell
    }
    
}


