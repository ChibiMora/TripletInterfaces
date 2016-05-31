//
//  ViewControllerC.swift
//  TripletInterfaces
//
//  Created by trvslhlt on 6/16/15.
//  Copyright (c) 2015 travis holt. All rights reserved.
//

import UIKit

class ViewControllerC: UIViewController {

    //TODO: Replicate the appearance and behavior of ViewControllerA, but do so programmatically

    //The only difference should be that the right most button will trigger a segue to the "FinViewController"
    
    var imageView: UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor.darkGrayColor()
        let outerFrame = self.view.frame
        
        let x = outerFrame.width/2 - 150
        let y = outerFrame.height/2 - 200
        
        let gameBoyView = UIView(frame: CGRect(x: x, y: y, width: 300, height: 400))
        gameBoyView.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(gameBoyView)
      
        imageView = UIImageView(frame: CGRect(x: 8, y: 8, width: 284, height: 213))
       
    
    
        if let imageView_ = imageView {
            let theImage = UIImage(named: "mario")
            imageView_.image = theImage
            gameBoyView.addSubview(imageView_)
        }
        
        let rightButton = UIButton(frame:CGRect(x: 230, y: 274, width: 40, height: 40))
        rightButton.backgroundColor=UIColor.redColor()
        rightButton.layer.cornerRadius = 20
        
        let leftButton = UIButton(frame: CGRect(x: 182, y: 298, width: 40, height: 40))
        leftButton.backgroundColor = UIColor.redColor()
        leftButton.layer.cornerRadius = 20
        
        let verticalButton = UIButton(frame: CGRect(x: 70, y: 265, width: 25, height: 90))
        verticalButton.backgroundColor = UIColor.blackColor()
        
        let horizontalButton = UIButton( frame: CGRect(x: 37, y: 298, width: 90, height: 23))
        horizontalButton.backgroundColor = UIColor.blackColor()
        
        
        gameBoyView.addSubview(leftButton)
        gameBoyView.addSubview(rightButton)
        gameBoyView.addSubview(horizontalButton)
        gameBoyView.addSubview(verticalButton)
        
        
        
        leftButton.addTarget(self, action: "leftButtonHit", forControlEvents: .TouchUpInside)
        
        
        rightButton.addTarget(self, action: "rightButtonHit", forControlEvents: .TouchUpInside)
        
    
        
    }
    
    func leftButtonHit() {
        if let imageView_ = imageView{
            let newImage = UIImage(named: "gameOver")
            imageView_.image = newImage
        }
        
    }

    func rightButtonHit(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("FIN")
        self.navigationController?.pushViewController(vc, animated: true)
       
        
        
    }
}
