// The MIT License (MIT)
//
// Copyright (c) 2015-2016 litt1e-p ( https://github.com/litt1e-p )
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

public struct LPBorderPosition: OptionSetType
{
    public var rawValue = 0
    static public let Top      = LPBorderPosition(rawValue: 1 << 0)
    static public let Left     = LPBorderPosition(rawValue: 1 << 1)
    static public let Bottom   = LPBorderPosition(rawValue: 1 << 2)
    static public let Right    = LPBorderPosition(rawValue: 1 << 3)
    public init(rawValue: Int) { self.rawValue = rawValue }
}

public extension UIView
{
    public func makeBorders() {
        makeBorder(1.0, color: UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5), positions: [.Top, .Bottom, .Left, .Right])
    }
    
    public func makeBorder(width: CGFloat, color: UIColor, positions: LPBorderPosition) {
        guard positions.isEmpty == false else {return}
        if positions.contains(.Top) {
            drawGradientLayer(CGPointMake(0.5, 0.0), endPoint: CGPointMake(0.5, 1.0), frame: CGRectMake(0.0, 0.0, bounds.size.width, width), color: color)
        }
        if positions.contains(.Bottom) {
            drawGradientLayer(CGPointMake(0.5, 1.0), endPoint: CGPointMake(0.5, 0.0), frame: CGRectMake(0.0, bounds.size.height - width, bounds.size.width, width), color: color)
        }
        if positions.contains(.Left) {
            drawGradientLayer(CGPointMake(0.0, 0.5), endPoint: CGPointMake(1.0, 0.5), frame: CGRectMake(0.0, 0.0, width, bounds.size.height), color: color)
        }
        if positions.contains(.Right) {
            drawGradientLayer(CGPointMake(1.0, 0.5), endPoint: CGPointMake(0.0, 0.5), frame: CGRectMake(bounds.size.width - width, 0.0, width, bounds.size.height), color: color)
        }
    }
    
    private func drawGradientLayer(startPoint: CGPoint, endPoint: CGPoint, frame: CGRect, color: UIColor) {
        let borderLayer        = CAGradientLayer()
        borderLayer.startPoint = startPoint
        borderLayer.endPoint   = endPoint
        borderLayer.frame      = frame
        borderLayer.colors     = [color.CGColor, UIColor.clearColor().CGColor] as [AnyObject]
        layer.insertSublayer(borderLayer, atIndex: 0)
    }
}
