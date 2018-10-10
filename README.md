# HapticTouchGestureRecognizer

A gesture recognizer for iPhone Xʀ's Haptic Touch™ feature

- Works just like a `UILongPressGestureRecognizer`
- Plays haptic feedback just like iPhone Xʀ's lock screenshot

## Installation

In your `Podfile`:

```ruby
pod 'HapticTouchGestureRecognizer'
```

Then run `pod install`.

## Usage

In your View Controller:

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(label)

    let hapticTouchGestureRecognizer = HapticTouchGestureRecognizer(target: self,
                                                                    action: #selector(detected(gestureRecognizer:)))
    view.addGestureRecognizer(hapticTouchGestureRecognizer)
}

@objc func detected(gestureRecognizer: HapticTouchGestureRecognizer) {
    guard gestureRecognizer.state == .began else { return }
    // handle long press here
}
```
