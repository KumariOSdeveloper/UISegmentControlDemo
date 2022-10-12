//
//  ViewController.swift
//  UISegmentControlDemo
//
//  Created by mahesh on 11/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    /// Title label
    var label = UILabel()
    /// image view variable
    var imageview = UIImageView()
    /// Segment Control Variable
    var segmentControl = UISegmentedControl()
    /// Segment Menu array names
    var menuArray = ["one","two","three","four"]
    /// images array
    var imagesArray = [ UIImage(named: "image1"),
                        UIImage(named: "image2"),
                        UIImage(named: "image3"),
                        UIImage(named: "images4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up UI
        setUpUI()
    }
    
    /// Method to set UI for image view and segment control
    func setUpUI() {
        
        // Set title label  view
        self.label.frame = CGRect(x: 55, y: 250, width: 300, height: 20)
        self.label.text = "Segment Control with Menu"
        self.label.textAlignment = .center
        self.label.backgroundColor = UIColor.green
        self.view.addSubview(self.label)
        
        // Set image view
        self.imageview.frame = CGRect(x: 0, y: 0, width: 300, height: 250)
        self.imageview.center = self.view.center
        self.imageview.image = self.imagesArray[0]
        self.view.addSubview(self.imageview)
        
        // Set Segment control view
        self.segmentControl = UISegmentedControl(items: self.menuArray)
        self.segmentControl.frame = CGRect(x: 55, y: 650, width: 300, height: 50)
        self.segmentControl.backgroundColor = UIColor.green
        self.view.addSubview(self.segmentControl)
        
        // Set superview background colour
        self.view.backgroundColor = UIColor.orange
        
        // Set the target for Segment control
        self.segmentControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }
    
    
    /// Method to add target of segment Index
    /// - Parameter target: selectedSegmentIndex
    @objc func selectedValue(target : UISegmentedControl) {
        if target == self.segmentControl {
            let segmentIndex = target.selectedSegmentIndex
            self.imageview.image = self.imagesArray[segmentIndex]
        }
    }
    
}

