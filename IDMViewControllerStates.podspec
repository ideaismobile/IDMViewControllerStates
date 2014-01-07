Pod::Spec.new do |s|
  s.name         = "IDMViewControllerStates"
  s.version      = "0.0.1"
  s.summary      = "A short description of IDMViewControllerStates."
  s.license      = 'MIT (example)'
  s.author             = { "thiagoperes" => "thiago@appkraft.net" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/ideaismobile/IDMViewControllerStates.git", :tag => "0.0.1" }
  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true
end
