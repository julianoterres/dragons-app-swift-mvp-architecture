//
//  UrlsApi.swift
//  Dragons
//
//  Created by Juliano Terres on 15/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Foundation

class UrlsApi: UrlsApiProtocol {
  
  private let baseUlr = "http://www.mocky.io/v2/"
  
  func listDragons() -> URL? {
    return URL(string: (baseUlr + "5cd9a1a6300000b921c01752"))
  }
  
}
