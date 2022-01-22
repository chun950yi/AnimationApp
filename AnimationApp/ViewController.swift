//
//  ViewController.swift
//  AnimationApp
//
//  Created by 竣亦 on 2022/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var outletButton: UIButton!
    
    @IBAction func rotaionButton(_ sender: UIButton) {
     
        if self.blackView.transform == CGAffineTransform.identity{
            
            UIView.animate(withDuration: 0.8) {
                
                self.blackView.transform = CGAffineTransform(scaleX: 30, y: 30)
                self.titleLabel.transform = CGAffineTransform(translationX: 0, y: -400)
                self.loginLabel.transform = CGAffineTransform(translationX: 0, y: -400)
                self.loginView.transform = CGAffineTransform(translationX: 0, y: -400)
                self.outletButton.transform = CGAffineTransform(rotationAngle: .pi)
                
            }
            
        } else {
            
            UIView.animate(withDuration: 0.8) {
                
                self.blackView.transform = CGAffineTransform.identity
                self.titleLabel.transform = CGAffineTransform.identity
                self.loginLabel.transform = CGAffineTransform.identity
                self.loginView.transform = CGAffineTransform.identity
                self.outletButton.transform = CGAffineTransform.identity
                
            }
        }
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.blackView.layer.cornerRadius = self.blackView.frame.width / 2
        self.blackView.mask?.clipsToBounds = true
        // Do any additional setup after loading the view.
    }


}

