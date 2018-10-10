import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Long-press anything orange!"
        label.textColor = .black

        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        view.addSubview(label)
        
        let hapticTouchGestureRecognizer = HapticTouchGestureRecognizer(target: self,
                                                                        action: #selector(detected(gestureRecognizer:)))
        view.addGestureRecognizer(hapticTouchGestureRecognizer)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        label.frame = view.bounds.insetBy(dx: 30, dy: 0)
    }
    
    @objc func detected(gestureRecognizer: HapticTouchGestureRecognizer) {
        if gestureRecognizer.state == .began {
            label.text = """
            ✅ LONG PRESS DETECTED
            ✅ HAPTIC NOTIFICATION PLAYED
            """
        } else if gestureRecognizer.state == .ended {
            label.text = "👆 Finger lifted"
        }
    }
}

PlaygroundPage.current.liveView = MyViewController()
