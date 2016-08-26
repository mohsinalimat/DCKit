//
//  CircleView.swift
//  DCKit
//
//  Created by Andrey Gordeev on 13/02/15.
//  Copyright (c) 2015 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import UIKit

/// A circle UIView.
/// - note: Make sure the view is a square on storyboard.
@IBDesignable open class DCCircleView: DCBorderedView {

    // MARK: - Life cycle

    open override func layoutSubviews() {
        super.layoutSubviews()

        updateLayerSettings()
    }

    // MARK: - Build control

    override open func customInit() {
        super.customInit()

        updateLayerSettings()
    }

    /// Makes the view circle.
    private func updateLayerSettings() {
        layer.cornerRadius = frame.size.height*0.5
        // http://stackoverflow.com/questions/4735623/uilabel-layer-cornerradius-negatively-impacting-performance
        layer.masksToBounds = true
        layer.rasterizationScale = UIScreen.main.scale
        layer.shouldRasterize = true
    }

}
