//
//  ContactService.swift
//  GetContact
//
//  Created by Narikbi on 2/28/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ContactService {
    
    static func getContactList(success: @escaping ([Contact]) -> Void, failure: @escaping (Error) -> Void) {
        
        let url = URL.init(string: "https://jsonblob.com/api/0bab4068-3b47-11e9-bb3d-a5c2be1c4895")
        
        Alamofire.request(url!,
                          parameters: nil,
                          headers: nil)
            .responseJSON { response in
                
                switch response.result {
                case .success(let val):
                    let contacts = JSON(val)["contacts"].arrayValue
                    var res = [Contact]()
                    
                    for json in contacts {
                        res.append(Contact.init(json: json))
                    }
                    
                    success(res)
                    
                case .failure(let error):
                    failure(error)
                }
                
                
        }
        
        
    }
    
    
}


