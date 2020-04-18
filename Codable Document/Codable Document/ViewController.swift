//
//  ViewController.swift
//  Codable Document
//
//  Created by Carmel Braga on 4/17/20.
//  Copyright © 2020 Carmel Braga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
        let jsonFileName = "document1"

        override func viewDidLoad() {
            super.viewDidLoad()
            
            var jsonData = Data()
            let fileURL = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
            
            do {
                jsonData = try Data(contentsOf: fileURL!)

            } catch {
                print(error)
            }
            
            do {
                let document: Document = try JSONDecoder().decode(Document.self, from: jsonData)
                // CustomStringConvertible is used to get a string representing the object
                // through a .description property.
                // https://developer.apple.com/documentation/swift/customstringconvertible
                print(document)
            } catch {
                print(error)
            }
        }
    }

