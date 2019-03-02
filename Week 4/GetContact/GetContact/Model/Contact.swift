//
//  Contact.swift
//  GetContact
//
//  Created by Narikbi on 2/21/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import Foundation
import SwiftyJSON

class Contact {
    
    var id: String
    var name: String
    var email: String
    var address: String
    var gender: String
    var phone: Phone
    var avatar: String
    
    init(json: JSON) {
        id = json["id"].stringValue
        name = json["name"].stringValue
        email = json["email"].stringValue
        address = json["address"].stringValue
        gender = json["gender"].stringValue
        phone = Phone.init(json: json["phone"])
        avatar = json["avatar"].stringValue
    }
    
}

class Phone {
    
    var mobile: String
    var home: String
    var office: String
    
    init(json: JSON) {
        mobile = json["mobile"].stringValue
        home = json["home"].stringValue
        office = json["office"].stringValue
    }
    
}
