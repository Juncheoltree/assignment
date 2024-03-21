//
//  ViewController.swift
//  countApp
//
//  Created by 김준철 on 3/21/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textLabel: UILabel!
    private var count: Int = 0
    
    @IBAction func decreaseButton(_ sender: Any) {
        self.count -= 1
        self.refreshTextLabel()
        
    }
    
    @IBAction func increaseButton(_ sender: Any) {
        self.count += 1
        self.refreshTextLabel()
    }
    
    private func refreshTextLabel(){
        self.textLabel.text = String(self.count)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.refreshTextLabel()
        
        // Do any additional setup after loading the view.
    }


}
/*
class ViewController: UIViewController {
    
    
    @IBOutlet weak var textLabel: UILabel!
    private var count: Int = 0
    
    @IBAction func tappedDecreaseButton(_ sender: Any) {
        self.count -= 1
        self.refreshTextLabel()
    }
    
    @IBAction func tappedIncreaseButton(_ sender: Any) {
        self.count += 1
        self.refreshTextLabel()
    }
    
    private func refreshTextLabel(){
        self.textLabel.text = String(self.count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.refreshTextLabel()
        // Do any additional setup after loading the view.
    }


}
*/
