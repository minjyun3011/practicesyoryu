//
//  ViewController.swift
//  practicesyoryu
//
//  Created by 佐藤壮 on 2023/08/28.
//

import UIKit

class ViewController: UIViewController {
    let count = 20
    var attackArray: [String] = []
    
    
    @IBOutlet weak var animation: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 1 ... count {
            
            attackArray.append("attack" + String(index))
            
        }
        print(attackArray)
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func syoryuken(_ sender: UIButton) {
        for i in 0..<attackArray.count {
            
            
            let delay = Double(i) * 0.1
        
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                self.displayImage(withName: self.attackArray[i])
                
            }
        }
        displayImage(withName: attackArray[0])
        
    }
    
    func displayImage(withName attackName: String) {
        print(attackName)
        let image = UIImage(named: attackName)
        animation.image = image
    }
}
