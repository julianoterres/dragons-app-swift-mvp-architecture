//
//  UrlsApiTests.swift
//  DragonsTests
//
//  Created by Juliano Terres on 15/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Quick
import Nimble
@testable import Dragons

// MARK: Methods of UrlsApiTests
class UrlsApiTests: QuickSpec {
  
  override func spec() {
    
    var urlsApi: UrlsApi!
    var url: URL?
    
    describe("UrlsApi") {
      
      beforeEach {
        urlsApi = UrlsApi()
      }
      
      describe("When UrlsApi execute the method listDragons") {
        beforeEach {
          url = urlsApi.listDragons()
        }
        it("should return a URL") {
          expect(url).to(beAKindOf(URL.self))
          expect(url) == URL(string: "http://www.mocky.io/v2/5cd9a1a6300000b921c01752")
        }
      }
      
    }
    
  }
  
}
