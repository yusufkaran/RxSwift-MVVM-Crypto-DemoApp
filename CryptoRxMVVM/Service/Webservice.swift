//
//  Webservice.swift
//  CryptoRxMVVM
//
//  Created by Yusuf Karan on 12.11.2023.
//

import Foundation

class Webservice {
  
  func downloadCurrencies(url: URL, completion: @escaping (Result<[Crypto], Error>) -> () ) {
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      
    }
  }
}
