//
//  ArtView.swift
//  DrawingProject
//
//  Created by Gardner, Andrew on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class ArtView: UIView
{

    public override func draw(_ rect: CGRect) -> Void
    {
        //drawing code
        createStickFigure().stroke()
        drawTurtle()
        drawMinion().stroke()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.magenta.setStroke()
        figure.lineWidth = 3.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawMinion() -> UIBezierPath
    {
        let daryll = UIBezierPath()
        UIColor.blue.setFill()
        daryll.lineWidth = 3.0
        
        
        daryll.addArc(withCenter: CGPoint(x: 100, y: 100),
                      radius: CGFloat(30),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        daryll.move(to: CGPoint(x: 150, y: 100))
        daryll.addLine(to: CGPoint(x: 100, y: 100 ))
        daryll.close()
        daryll.fill()
        
        return daryll
        
    }
    

    

}
