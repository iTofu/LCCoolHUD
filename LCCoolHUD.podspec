
Pod::Spec.new do |s|

  s.name         = "LCCoolHUD"
  s.version      = "1.0.3"
  s.summary      = "A very COOL HUD! Support: http://LeoDev.me"
  s.homepage     = "https://github.com/iTofu/LCCoolHUD"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Leo" => "devtip@163.com" }
  s.social_media_url   = "http://LeoDev.me"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/iTofu/LCCoolHUD.git", :tag => s.version }
  s.source_files = "LCCoolHUD/*"
  s.requires_arc = true

  s.dependency "JGProgressHUD", "~> 1.3.1"
  s.dependency "LCLoadingHUD"

end
