import UIKit.UIGestureRecognizerSubclass

open class HapticTouchGestureRecognizer: UILongPressGestureRecognizer {
    private let feedbackGenerator = UINotificationFeedbackGenerator()
    
    open override var state: UIGestureRecognizer.State {
        didSet {
            guard state == .began else { return }
            feedbackGenerator.notificationOccurred(.success)
        }
    }
    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        feedbackGenerator.prepare()
        super.touchesBegan(touches, with: event)
    }
}
