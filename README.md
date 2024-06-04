# UIViewPreviewWrapper

[![Version](https://img.shields.io/cocoapods/v/UIViewPreviewWrapper.svg?style=flat)](https://cocoapods.org/pods/UIViewPreviewWrapper)
[![License](https://img.shields.io/cocoapods/l/UIViewPreviewWrapper.svg?style=flat)](https://cocoapods.org/pods/UIViewPreviewWrapper)
[![Platform](https://img.shields.io/cocoapods/p/UIViewPreviewWrapper.svg?style=flat)](https://cocoapods.org/pods/UIViewPreviewWrapper)

UIKit View与UIViewController实现实时渲染预览界面-所见即所得
UIView实现UIViewRepresentable协议，UIViewController实现UIViewRepresentable协议。

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
```
import UIViewPreviewWrapper
import SwiftUI
```
UIViewController
```
#Preview {
    UIViewControllerPreviewWrapper {
        let vc = ViewController()
        return vc
    }
}
```
UIView
```
#Preview {
    UIViewPreviewWrapper {
        let vc = ViewController()
        return vc.view
    }
}
```

## Requirements
#### Swift 5.0+
#### iOS 13.0+
## Installation

UIViewPreviewWrapper is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UIViewPreviewWrapper'
```


✅ What you see is what you get
✅ Load layout constraints
✅ Simple implementation method

## License

UIViewPreviewWrapper is available under the MIT license. See the LICENSE file for more info.
