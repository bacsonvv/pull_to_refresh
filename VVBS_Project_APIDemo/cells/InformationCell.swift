//
//  InformationCell.swift
//  VVBS_Project_APIDemo
//
//  Created by Vuong Vu Bac Son on 8/31/20.
//  Copyright © 2020 Vuong Vu Bac Son. All rights reserved.
//

import UIKit

class InformationCell: UITableViewCell {

    
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var imageAva: UIImageView!
    
    static let identifier = "informationCell"
    static func nib() -> UINib {
        return UINib(nibName: "InformationCell", bundle: nil)
    }
    
    public func configure(userName: String, location: String, age: Int, gender: String, imageURL: String) {
        lblUsername.text = userName
        lblLocation.text = location
        lblAge.text = String(age)
        lblGender.text = gender
        // TO DO: set image by using imageURL
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
