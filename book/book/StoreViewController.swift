//
//  StoreViewController.swift
//  book
//
//  Created by 김준철 on 5/12/24.
//

import UIKit

class StoreViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibNameOrNil)
        
        self.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "books.vertical"), tag: 0)
        
        self.view.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
