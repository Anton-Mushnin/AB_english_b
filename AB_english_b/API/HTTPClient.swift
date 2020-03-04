//
//  HTTPClient.swift
//  AB_english_b
//
//  Created by Антон Мушнин on 04/03/2020.
//  Copyright © 2020 Антон Мушнин. All rights reserved.
//

import Foundation
import UIKit

class HTTPClient {
  
  @discardableResult func getRequest(_ url: String) -> AnyObject {
    return Data() as AnyObject
  }
  
  @discardableResult func postRequest(_ url: String, body: String) -> AnyObject {
    return Data() as AnyObject
  }
  
  func downloadImage(_ url: String) -> UIImage? {
    let aUrl = URL(string: url)
    guard let data = try? Data(contentsOf: aUrl!),
      let image = UIImage(data: data) else {
        return nil
    }
    return image
  }
  
}
