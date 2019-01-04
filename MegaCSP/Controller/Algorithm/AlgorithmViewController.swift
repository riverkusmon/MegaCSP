//
//  ViewController.swift
//  andrew-algorithm
//
//  Created by Gardner, Andrew on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

    public class AlgorithmViewController : UIViewController
    {
        @IBOutlet weak var firstlabel: UILabel!
        @IBOutlet weak var image: UIImageView!
        
        public override func viewDidLoad() -> Void
        {
            super.viewDidLoad()
            //do any additional setup after loading the view typically from a nib
            formatAlgorithm()
        }
        
        private func formatAlgorithm() -> Void
        {
            let title : String = "how to build a swift app"
            
            let stepOne : String = "Make new xcode project"
            let stepTwo : String = "Make a resources folder and put app delegate, assets, and info in it."
            let stepThree : String = "Go to the top of navigation where it says the name of your app and click on it once"
            let stepFour : String = "Select the info file"
            let stepFive : String = " Make a controller folder and put your controller in it. Make a view folder and put your main storyboard and launch screen in it."
            let stepSix : String = "Make a model group make a file inside called name-model"
           
            let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
           // defines what to do for the algorithm
            let attributesDictionary = [NSAttributedStringKey.font : firstlabel.font]
            let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
            
            for step in algorithm
            {
                let bullet : String = "🔫"
                let formattedStep : String = "\n\(bullet) \(step)"
                let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
                let outlineStyle = createOutlineStyle()
                
                attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
                
                fullAttributedString.append(attributedStringStep)
            }
            firstlabel.attributedText = fullAttributedString
        }
        
        private func createOutlineStyle() -> NSParagraphStyle
        {
            let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
            
            outlineStyle.alignment = .left
            outlineStyle.defaultTabInterval = 15
            outlineStyle.firstLineHeadIndent = 20
            outlineStyle.headIndent = 35
            
            return outlineStyle
        }
        
    }

