//
//  ScrollViewContainer.swift
//  SwiftScrollViews
//
//  Created by Javier on 30/8/15.
//  Copyright (c) 2015 Javier. All rights reserved.
//

import UIKit

class ScrollViewContainer: UIView {

    @IBOutlet var scrollView: UIScrollView!
    
    override func hitTest(point: CGPoint, withEvent event: UIEvent!) -> UIView? {
        
        let view = super.hitTest(point, withEvent: event)
        if let theView = view {
            if theView == self {
                return scrollView
            }
        }
        
        return view
    }

}
