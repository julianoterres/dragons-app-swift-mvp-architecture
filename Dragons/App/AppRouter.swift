//
//  AppRouter.swift
//  Dragons
//
//  Created by Juliano Terres on 15/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

class AppRouter {
  
  func buildMainScreen() -> UIViewController {
    
    let navigation = UINavigationController()
    let dragonsList = DragonsListRouter().build()
    
    navigation.viewControllers = [dragonsList]
    
    return navigation
    
  }
  
}
