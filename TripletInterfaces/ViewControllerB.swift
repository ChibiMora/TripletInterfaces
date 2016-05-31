//
//  ViewControllerB.swift
//  TripletInterfaces
//
//  Created by trvslhlt on 6/16/15.
//  Copyright (c) 2015 travis holt. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {

    //TODO: Create an IBOutlet that serves as a reference to the image view
    @IBOutlet weak var imageView: UIImageView!
    
   
  
    
    
    
    //TODO: Go to the storyboard file. Recreate the user interface seen in ViewControllerA in the storyboard
    //TODO: In the storyboard file, create a segue that will push (aka "show") ViewControllerC when the right most button is tapped
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    
    
    //TODO: Create an IBAction that is triggered when the left red button is tapped
    
    //TODO: The IBAction function should set the image in the image view to the "gameOver" image


    @IBAction func leftButtonHit(sender: AnyObject) {
        let theImage = UIImage(named: "gameOver")
        imageView.image = theImage
    }
    
    
}



