//
//  ViewController.swift
//  daily
//
//  Created by Popsical on 18/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!

    var quotes = Quotes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func inspireMeDidTap(_ sender: UIButton) {
        let quote = quotes.randomQuote()
        quoteLabel.text = quote
        
        let image = randomImage()
        backgroundImageView.image = image
        sender.backgroundColor = randomColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomImage() -> UIImage {
        let imageCount = 6
        let randomNumber = Int(arc4random()) % imageCount + 1
        
        if let image = UIImage(named: "image\(randomNumber)") {
            return image
        } else {
            return UIImage(named: "image1")!
        }
    }
    
    func randomColor() -> UIColor {
        let random = Int(arc4random()) % 5  // 0 -> 4
        switch random {
        case 0: return UIColor(red: 211/255.0, green: 86/255.0, blue: 87/255.0, alpha: 0.9)
        case 1: return UIColor(red: 71/255.0, green: 178/255.0, blue: 137/255.0, alpha: 0.9)
        case 2: return UIColor(red: 229/255.0, green: 177/255.0, blue: 93/255.0, alpha: 0.9)
        case 3: return UIColor(red: 92/255.0, green: 163/255.0, blue: 178/255.0, alpha: 0.9)
        case 4: return UIColor(red: 38/255.0, green: 38/255.0, blue: 38/255.0, alpha: 0.9)
        default: return UIColor(red: 56/255.0, green: 72/255.0, blue: 72/255.0, alpha: 0.9)
        }
    }
}

