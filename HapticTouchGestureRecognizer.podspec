Pod::Spec.new do |s|
  s.name         = "HapticTouchGestureRecognizer"
  s.version      = "0.0.1"
  s.summary      = "Haptic Touch gesture recognizer for iPhone Xʀ."

  s.description  = <<-DESC
                  Haptic Touch gesture recognizer for iPhone Xʀ (iPhone XR),
                  which doesn't support 3D Touch or force touch APIs.
                   DESC

  s.homepage     = "https://github.com/getaaron/HapticTouchGestureRecognizer"
  s.license       = { type: "MIT", file: "LICENSE" }
  s.author             = { "Aaron Brager" => "getaaron@gmail.com" }
  s.social_media_url   = "https://twitter.com/getaaron"
  s.platform     = :ios, "12.0"
  s.source       = { :git => "https://github.com/getaaron/HapticTouchGestureRecognizer.git", :tag => "#{s.version}" }
  s.swift_version = "4.2"
  s.source_files  = "*.swift"
  s.requires_arc  = true
  # s.framework  = "UIKit.UIGestureRecognizerSubclass"
end
