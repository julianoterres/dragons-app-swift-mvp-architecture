//
//  DragonsDetailProtocols.swift
//  Dragons
//
//  Created by Juliano Terres on 15/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of View To Presenter
protocol DragonsDetailViewToPresenterProtocol: class {
  func showAlert(greeting: String)
}

// MARK: Methods of DragonsListPresenterProtocol
protocol DragonsDetailPresenterProtocol: class {
  var router: DragonsDetailPresenterToRouterProtocol? { get set }
}

// MARK: Methods of Presenter to Router
protocol DragonsDetailPresenterToRouterProtocol: class {
  func showAlert(greeting: String)
}

// MARK: Methods of DragonsListRouterProtocol
protocol DragonsDetailRouterProtocol: class {
  var view: UIViewController? { get set }
  func build(dragon: Dragon) -> UIViewController
}
