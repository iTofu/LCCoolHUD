
Pod::Spec.new do |s|

  s.name         = "LCCoolHUD"
  s.version      = "1.0.1"
  s.summary      = "A very COOL HUD! Support: http://www.leodong.com"
  s.homepage     = "https://github.com/LeoiOS/LCCoolHUD"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Leo" => "leoios@sina.com" }
  s.social_media_url   = "http://www.leodong.com"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/LeoiOS/LCCoolHUD.git", :tag => s.version }
  s.source_files  = "LCCoolHUD/*"
  s.requires_arc = true

  s.dependency "JGProgressHUD", "~> 1.3.1"
  s.dependency "LCLoadingHUD"

end
