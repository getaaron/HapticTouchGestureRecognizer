# HapticTouchGestureRecognizer

> ”iPhone Xʀ has a new feature we call Haptic Touch. So to get to the camera from the home screen, we just press on it. You feel a haptic tap, and you’re taken right to the camera.“
>
> — [Phil Schiller](https://twitter.com/pschiller)

A gesture recognizer for iPhone Xʀ's Haptic Touch™ feature

- Works just like a `UILongPressGestureRecognizer`
- Plays haptic feedback just like iPhone Xʀ's home screen

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
