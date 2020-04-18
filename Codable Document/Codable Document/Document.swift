//
//  Document.swift
//  Codable Document
//
//  Created by Carmel Braga on 4/17/20.
//  Copyright © 2020 Carmel Braga. All rights reserved.
//

import Foundation
import UIKit

class Document: Decodable, CustomStringConvertible{
    
      let title: String
      let summary: String
      let uuid: String
        
      let metadata: Metadata
      let copyright: Copyright
      //let dates: documentDates
      //let entities: Entity
    
      let authors: [Author]

    
        var description: String{
            var description = ""
            description += "title: \(self.title)\n"
            description += "summary: \(self.summary)\n"
            description += "uuid: \(self.uuid)\n"
            description += "field: \(self.metadata.field)\n"
            description += "topic: \(self.metadata.field)\n"
            description += "owner: \(self.copyright.owner)\n"
            description += "license: \(self.copyright.license)\n"
            //description += "start-year: \(self.copyright.startYear)\n"
            //description += "end-year: \(self.copyright.endYear)\n"
            description += "authors: \n\(self.authors)"
            return description
    }
}

class Metadata: Decodable{

let topic: String
let field: String

}

class Copyright: Decodable{

let owner: String
let license: String
/*let startYear: String
let endYear: String
    
    enum CodingKeys: String, CodingKey {
    case startYear = "start-year"
    case endYear = "end-year"

    }*/
}

class Author: Decodable, CustomStringConvertible{
        
        let name: String
        let contribution: String
        let contacts: [Contact]

         var description: String{
                var description = ""
                description += "name: \(self.name)\n"
                description += "contribution: \(self.contribution)\n"
                description += "contacts: \(self.contacts)\n"

                return description
                                }
        
        }

/*class documentDates: Decodable, CustomStringConvertible{
    
    var dateFormatter: DateFormatter
    var created: String
    var updated: String

  var createdDate: Date? {
        return dateFormatter.date(from: created)
    }

  var updatedDate: Date? {
        return dateFormatter.date(from: updated)
    }
    
    var description: String{
       var description = ""
        description += "created: \(self.createdDate)\n"
        description += "updated: \(self.updatedDate)\n"
       return description
                       }
}

class Entitiy: Decodable, CustomStringConvertible{
    
}*/

class Contact: Decodable, CustomStringConvertible{
    let method: String
    let label: String
    // let address: String
    
    var description: String{
    var description = ""
    description += "method: \(self.method)\n"
    description += "label: \(self.label)\n"
    // description += "address: \(self.address)\n"
    return description
                    }
}
