//
//  LaunchScreenViewController.swift
//  Email
//
//  Created by Deepak on 26/06/16.
//  Copyright © 2016 Deepak Ahuja. All rights reserved.
//

import Foundation
import UIKit

class LaunchScreenViewController: UIViewController {

    var indicatorView:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        showActivityIndicator()
        indicatorView = NSBundle.mainBundle().loadNibNamed("LaunchScreen", owner: self, options: nil)[0] as! UIView
        indicatorView.frame = self.view.bounds
        self.view.addSubview(indicatorView as UIView)
        self.performSelector(#selector(LaunchScreenViewController.showAnotherViewController), withObject: nil, afterDelay: 5)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
//        let widthConstraint:NSLayoutConstraint = NSLayoutConstraint(item: indicatorView, attribute: .Width, relatedBy: .Equal, toItem: self.view, attribute: .Width, multiplier: 1, constant: 0)
//        let heightConstraint:NSLayoutConstraint = NSLayoutConstraint(item: indicatorView, attribute: .Height, relatedBy: .Equal, toItem: self.view, attribute: .Height, multiplier: 1, constant: 0)
//        let xConstraint:NSLayoutConstraint = NSLayoutConstraint(item: indicatorView, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0)
//        let yConstraint:NSLayoutConstraint = NSLayoutConstraint(item: indicatorView, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: 0)
//        self.view.addConstraint(widthConstraint)
//        self.view.addConstraint(heightConstraint)
//        self.view.addConstraint(xConstraint)
//        self.view.addConstraint(yConstraint)
//
//        self.view.updateConstraintsIfNeeded()
//        self.view.updateConstraints()
//        self.view.layoutIfNeeded()
//        self.view.translatesAutoresizingMaskIntoConstraints = false
    }

    func showAnotherViewController()
    {
        //    self.performSegueWithIdentifier("splashScreenSegue", sender: self)
        let viewController = ViewController()
        self.presentViewController(viewController, animated: true, completion: nil)
    }

    func showActivityIndicator()
    {
        //        let window = UIApplication.sharedApplication().keyWindow
        //        let topView = window?.rootViewController?.view
        //        let myActivityIndicatorView: DTIActivityIndicatorView = DTIActivityIndicatorView(frame: CGRect(x:topView!.center.x - 40, y:topView!.center.y+100, width:80.0, height:80.0))
        //        topView!.addSubview(myActivityIndicatorView)
        //        myActivityIndicatorView.indicatorColor = UIColor.whiteColor()
        //        myActivityIndicatorView.indicatorStyle = DTIIndicatorStyle.convInv(DTIIndicatorStyle.chasingDots)
        //        myActivityIndicatorView.startActivity()
    }
}