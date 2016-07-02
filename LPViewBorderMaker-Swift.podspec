Pod::Spec.new do |s|
  s.name             = "LPViewBorderMaker-Swift"
  s.version          = "0.0.2"
  s.summary          = "UIView extension of making UIView borders"
  s.description      = <<-DESC
                       UIView extension of making UIView borders via CAGradientLayer in swift
                       DESC
  s.homepage         = "https://github.com/litt1e-p/LPViewBorderMaker-Swift"
  s.license          = { :type => 'MIT' }
  s.author           = { "litt1e-p" => "litt1e.p4ul@gmail.com" }
  s.source           = { :git => "https://github.com/litt1e-p/LPViewBorderMaker-Swift.git", :tag => '0.0.2' }
  s.platform = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'LPViewBorderMaker-Swift/*'
  s.frameworks = 'Foundation', 'UIKit'
end
