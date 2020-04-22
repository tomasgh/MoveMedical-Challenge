//
//  TableViewCell.swift
//  MoveMedical Challenge
//
//  Created by Tomas Galvan-Huerta on 4/22/20.
//  Copyright © 2020 Tomas Galvan-Huerta. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    var item: Descriptionf? = nil
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var CarStack: UIStackView!
    @IBOutlet weak var PhoneStack: UIStackView!
    @IBOutlet weak var BookStack: UIStackView!
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Description: UILabel!
    
    //Brand
    @IBOutlet weak var Brand: UILabel!
    
    //Phone
    @IBOutlet weak var PhoneModel: UILabel!
    @IBOutlet weak var CanText: UILabel!
    
    //Car
    @IBOutlet weak var Has4Doors: UILabel!
    @IBOutlet weak var isHybrid: UILabel!
    
    //Book
    @IBOutlet weak var isComicBook: UILabel!
    @IBOutlet weak var Author: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        PhoneStack.isHidden = false
        BookStack.isHidden = false
        CarStack.isHidden = false
        
        Name.text = ""
        Description.text = ""
        Brand.text = ""
        CanText.text = ""
        Has4Doors.text = ""
        isHybrid.text = ""
        isComicBook.text = ""
        
    }
    
}
