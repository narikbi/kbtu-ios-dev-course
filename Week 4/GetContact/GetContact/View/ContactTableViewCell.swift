//
//  ContactTableViewCell.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage

class ContactTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!    
    @IBOutlet weak var emaiLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setContact(_ contact: Contact) {
        
        nameLabel.text = contact.name
        phoneLabel.text = contact.phone.mobile
        emaiLabel.text = contact.email
        genderLabel.text = contact.gender
        
        avatarImageView.sd_setImage(with: URL(string: contact.avatar), placeholderImage: nil)

    }
    
}
