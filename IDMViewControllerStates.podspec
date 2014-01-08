Pod::Spec.new do |s|
  s.name         = "IDMViewControllerStates"
  s.version      = "0.0.1"
  s.homepage     = "https://github.com/ideaismobile/IDMViewControllerStates"
  s.summary      = "IDMViewControllerStates."
  s.license      = 'MIT'
  s.author             = { "thiagoperes" => "thiago@appkraft.net" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/ideaismobile/IDMViewControllerStates.git", :tag => "0.0.1" }
  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.resources = 'Classes/**/*.{xib}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true
end
