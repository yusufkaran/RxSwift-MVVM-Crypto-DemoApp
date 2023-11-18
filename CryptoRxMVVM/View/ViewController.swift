//
//  ViewController.swift
//  CryptoRxMVVM
//
//  Created by Yusuf Karan on 12.11.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    tableView.delegate = self
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    var content = cell.defaultContentConfiguration()
    content.text = "Crypto Currency"
    content.secondaryText = "Crypto Price"
    cell.contentConfiguration = content
    return cell
  }
}

