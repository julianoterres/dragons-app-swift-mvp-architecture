//
//  DragonsListViewMock.swift
//  DragonsTests
//
//  Created by Juliano Terres on 15/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit
@testable import Dragons

// MARK: Methods of Dragons List View
class DragonsListViewMock: UIViewController {
  
  var presenter: DragonsListViewToPresenterProtocol?
  var functionCalled = false
  var dragonsListPassed: [Dragon]?
  
}

// MARK: Methods of Dragons List Presenter To View Protocol
extension DragonsListViewMock: DragonsListPresenterToViewProtocol {
  
  func showDragons(dragonsList: [Dragon]) {
    functionCalled = true
    dragonsListPassed = dragonsList
  }
  
  func showError() {
    functionCalled = true
  }
  
}

// MARK: Methods of Error View Protocol
extension DragonsListViewMock: ErrorViewProtocol {
  
  func didPressRetry() {
    functionCalled = true
  }
  
}
