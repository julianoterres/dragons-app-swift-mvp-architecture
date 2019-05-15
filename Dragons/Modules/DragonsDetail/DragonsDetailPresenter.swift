//
//  DragonsDetailPresenter.swift
//  Dragons
//
//  Created by Juliano Terres on 15/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import Foundation

// MARK: Methods of DragonsDetailPresenterProtocol
class DragonsDetailPresenter: DragonsDetailPresenterProtocol {
  
  var router: DragonsDetailPresenterToRouterProtocol?
  
}

// MARK: Methods of DragonsDetailViewToPresenterProtocol
extension DragonsDetailPresenter: DragonsDetailViewToPresenterProtocol {
  
  func showAlert(greeting: String) {
    router?.showAlert(greeting: greeting)
  }
  
}
