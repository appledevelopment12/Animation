//
//  ViewController.swift
//  1.fontPageAnimation
//
//  Created by Rajeev on 29/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    var imageVeiw: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(named: "logo2")
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(imageVeiw)
        DispatchQueue.main.asyncAfter(deadline: .now()+8)
        {
            self.performSegue(withIdentifier: "segue", sender: self)
        }
        
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageVeiw.center = view.center
        DispatchQueue.main.asyncAfter(deadline: .now()+5)
        {
            self.animation()
        }
    }
func animation()
    {
        UIView.animate(withDuration: 1)
        {
            let size = self.view.frame.size.width * 2
            let xpostion = size - self.view.frame.width
            let yposition = self.view.frame.height-size
            
            self.imageVeiw.frame = CGRect(x: -(xpostion/2), y: yposition/2, width: size, height: size)
            self.imageVeiw.alpha = 0
            
        }
    }

}

