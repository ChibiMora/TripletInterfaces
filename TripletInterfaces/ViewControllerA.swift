//
//  ViewController.swift
//  TripletInterfaces
//
//  Created by trvslhlt on 6/16/15.
//  Copyright (c) 2015 travis holt. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func leftButtonTapped(sender: AnyObject) {
        imageView.image = UIImage(named: "gameOver")
    }
    
}

