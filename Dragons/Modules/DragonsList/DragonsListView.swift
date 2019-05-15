//
//  DragonsListView.swift
//  Dragons
//
//  Created by Juliano Terres on 15/05/19.
//  Copyright © 2019 Juliano Terres. All rights reserved.
//

import UIKit

// MARK: Methods of DragonsListView
class DragonsListView: UIViewController {
  
  let loader = UIActivityIndicatorView()
  let tableView = UITableView()
  
  var presenter: DragonsListViewToPresenterProtocol?
  var dragons: [Dragon] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    addElementsInScreen()
    presenter?.fetchDragons()
  }

  func setupView() {
    view.backgroundColor = .background
    title = "Dragons List"
    setupBackButton()
    navigationController?.setup()
  }
  
  func addElementsInScreen() {
    addLoader()
    addTableView()
  }
  
  func addLoader() {
    view.addSubview(loader)
    loader.color = .black
    loader.startAnimating()
    loader.addConstraint(attribute: .centerX, alignElement: view, alignElementAttribute: .centerX, constant: 0)
    loader.addConstraint(attribute: .centerY, alignElement: view, alignElementAttribute: .centerY, constant: 0)
    loader.addConstraint(attribute: .height, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 20)
    loader.addConstraint(attribute: .width, alignElement: nil, alignElementAttribute: .notAnAttribute, constant: 20)
  }
  
  func addTableView() {
    view.addSubview(tableView)
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(DragonsListCell.self, forCellReuseIdentifier: DragonsListCell.identifier)
    tableView.estimatedRowHeight = DragonsListCell.height
    tableView.rowHeight = UITableView.automaticDimension
    tableView.separatorStyle = .none
    tableView.backgroundColor = .background
    tableView.isHidden = true
    tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    tableView.addConstraint(attribute: .top, alignElement: view.safeAreaLayoutGuide, alignElementAttribute: .top, constant: 0)
    tableView.addConstraint(attribute: .right, alignElement: view, alignElementAttribute: .right, constant: 0)
    tableView.addConstraint(attribute: .left, alignElement: view, alignElementAttribute: .left, constant: 0)
    tableView.addConstraint(attribute: .bottom, alignElement: view, alignElementAttribute: .bottom, constant: 0)
  }
  
}

// MARK: Methods of DragonsListPresenterToViewProtocol
extension DragonsListView: DragonsListPresenterToViewProtocol {

  func showDragons(dragonsList: [Dragon]) {
    dragons = dragonsList
    tableView.reloadData()
    tableView.isHidden = false
  }
  
}
  
// MARK: Methods of UITableViewDelegate and UITableViewDataSource
extension DragonsListView: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dragons.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: DragonsListCell.identifier, for: indexPath) as? DragonsListCell {
      cell.setup(dragon: dragons[indexPath.row])
      return cell
    }
    return UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    presenter?.goToScreenDetails(dragon: dragons[indexPath.row])
  }
  
}
