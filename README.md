# LPViewBorderMaker-Swift

UIView extension of making UIView borders rewrite in Swift

# Additional

[OC version](https://github.com/litt1e-p/LPViewBorderMaker) is also available

# Install

###### `pod 'LPViewBorderMaker-Swift', '~> 0.0.2'`

# Usage

```swift
//make borders for edges with default border width and color
yourView.makeBorders()

//make border for a edge which can be top/left/bottom/right with custom border width and color 
- (void)makeBordersWithWidth:(float)width color:(UIColor *)color position:(LPBorderPosition)position;
//for example: make view borders with params:`[.Bottom, .Right, .Left]`
let v = UIView(frame: CGRectMake(150, 170, 100, 70))
v.makeBorder(0.5, color: .redColor(), positions: [.Bottom, .Right, .Left])
```

# Screenshot

<img src="https://github.com/litt1e-p/LPViewBorderMaker/blob/master/screenshot.png", width=320>

# Release Notes

- 0.0.2

  make extension public
  
- 0.0.1

  first commit version
