//
//  ViewController.swift
//  AutoLayoutPorCodigo
//
//  Created by Ezequiel Parada Beltran on 08/07/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var TLLabel = UILabel()
    var TRLabel = UILabel()
    var BLLabel = UILabel()
    var BRLabel = UILabel()
    
    var constraints = Array<NSLayoutConstraint>()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      // Label TL
        setAttributes(labelObject: TLLabel, backgroundColor: UIColor.orange, text: "TL", textColor: UIColor.black)
        
        setConstraints(labelObject: TLLabel, width: 30, heigth: 15, topAnchorConstant: 28, botAnchorConstant: nil, leadingAnchorConstant: 18, trailingAnchorConstant: nil)
        
      // Label TR
        setAttributes(labelObject: TRLabel, backgroundColor: UIColor.orange, text: "TR", textColor: UIColor.black)
        
        setConstraints(labelObject: TRLabel, width: 30, heigth: 15, topAnchorConstant: 28, botAnchorConstant: nil, leadingAnchorConstant: nil, trailingAnchorConstant: -18)
        
        // Label BL
        setAttributes(labelObject: BLLabel, backgroundColor: UIColor.orange, text: "BL", textColor: UIColor.black)
        setConstraints(labelObject: BLLabel, width: 30, heigth: 15, topAnchorConstant: nil, botAnchorConstant: -28, leadingAnchorConstant: 18, trailingAnchorConstant: nil)
        
        // Label BR
        setAttributes(labelObject: BRLabel, backgroundColor: UIColor.orange, text: "BR", textColor: UIColor.black)
        setConstraints(labelObject: BRLabel, width: 30, heigth: 15, topAnchorConstant: nil, botAnchorConstant: -28, leadingAnchorConstant: nil, trailingAnchorConstant: -18)
    
        
        NSLayoutConstraint.activate(self.constraints)
    }
    
    
    
    func setAttributes(labelObject: UILabel, backgroundColor: UIColor, text: String, textColor: UIColor ){
        
        
        // Atributes
              labelObject.backgroundColor = backgroundColor
              labelObject.text = text
              labelObject.textColor = textColor
              labelObject.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(labelObject)
        
        
    }
    
    
    
    func setConstraints( labelObject: UILabel,width: CGFloat, heigth: CGFloat, topAnchorConstant: CGFloat?, botAnchorConstant: CGFloat?, leadingAnchorConstant: CGFloat?, trailingAnchorConstant: CGFloat? ){
        
        // Constraints
              
        var verticalConstraint = NSLayoutConstraint()
            
            if (topAnchorConstant != nil) {
                verticalConstraint = labelObject.topAnchor.constraint(equalTo: self.view.topAnchor, constant: topAnchorConstant!)
            }
            
            if (botAnchorConstant != nil) {
                verticalConstraint = labelObject.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: botAnchorConstant!)
                print(verticalConstraint)
            }
            
            
            
        
        
        var sideConstraint = NSLayoutConstraint()
            
            if leadingAnchorConstant != nil {
                sideConstraint = labelObject.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: leadingAnchorConstant!)
            }
            
            if trailingAnchorConstant != nil {
                sideConstraint = labelObject.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: trailingAnchorConstant!)
            }
            
      
        
        
              
        
        
              let withConstraint = labelObject.widthAnchor.constraint(equalToConstant: width)
              let heigthConstraint = labelObject.heightAnchor.constraint(equalToConstant: heigth)
              
              constraints.append(contentsOf: [sideConstraint, verticalConstraint, withConstraint, heigthConstraint])
        
        
        
    }
    
    
    
    


}

