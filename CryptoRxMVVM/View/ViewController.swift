//
//  ViewController.swift
//  CryptoRxMVVM
//
//  Created by Yusuf Karan on 12.11.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
  var cryptoList = [Crypto]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    tableView.delegate = self
    
    let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json")!
    Webservice().downloadCurrencies(url: url) { result in
      switch result {
      case .success(let cryptos):
        self.cryptoList = cryptos
        DispatchQueue.main.async {
          self.tableView.reloadData()
        }
      case .failure(let error):
        print(error)
      }
    }
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return cryptoList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    var content = cell.defaultContentConfiguration()
    content.text = cryptoList[indexPath.row].currency
    content.secondaryText = cryptoList[indexPath.row].price
    cell.contentConfiguration = content
    return cell
  }
}
