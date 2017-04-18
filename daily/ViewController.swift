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

    var quotes = Quote()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func inspireMeDidTap(sender: UIButton)
    {
        let quote = quotes.randomQuote()
        quoteLabel.text = quote
        
        let image = randomImage()
        backgroundImageView.image = image
        sender.backgroundImage = randomColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomImage() -> UIImage
    {
        let imageCount = 6
        let randomNumber = Int(arc4random()) % imageCount + 1
        
        if let image = UIImage(named: "image\(randomNumber)") {
            return image
        } else {
            return UIImage(named: "image1")!
        }
    }
    
   
}

