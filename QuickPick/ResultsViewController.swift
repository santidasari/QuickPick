//
//  ResultsViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 8/16/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit
import CDYelpFusionKit

class ResultsViewController: UIViewController {
    
    let yelpAPIClient = CDYelpAPIClient(apiKey: "u9LRuZa_HgjWNgN9jV6v-3FhogDlXpCEHXMwezer1Wbvn5CkKkOaGS4sZEAvTj9TdMN240_RropwwcuGvv-2ahE1lmaSMF0Wv-lkaSWWDeL9lSj3n7OjdyMwOsBBX3Yx")
    

   
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func backEnd(){
        yelpAPIClient.searchBusinesses(byTerm: <#T##String?#>, location: <#T##String?#>, latitude: <#T##Double?#>, longitude: <#T##Double?#>, radius: <#T##Int?#>, categories: <#T##[CDYelpBusinessCategoryFilter]?#>, locale: <#T##CDYelpLocale?#>, limit: 1, offset: <#T##Int?#>, sortBy: <#T##CDYelpBusinessSortType?#>, priceTiers: <#T##[CDYelpPriceTier]?#>, openNow: <#T##Bool?#>, openAt: <#T##Int?#>, attributes: <#T##[CDYelpAttributeFilter]?#>, completion: <#T##(CDYelpSearchResponse?) -> Void#>)
    }
    
    
}
