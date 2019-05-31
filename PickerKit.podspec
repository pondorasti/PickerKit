Pod::Spec.new do |s|
  s.name                      = "PickerKit"
  s.version                   = "1.0.0"
  s.summary                   = "PickerKit"
  s.homepage                  = "https://github.com/Pondorasti/PickerKit"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Alexandru Turcanu" => "alexandru_turcanu@ymail.com" }
  s.source                    = { :git => "https://github.com/Pondorasti/PickerKit.git", :tag => s.version.to_s }
  s.ios.deployment_target     = "8.0"
  s.tvos.deployment_target    = "9.0"
  s.watchos.deployment_target = "2.0"
  s.osx.deployment_target     = "10.10"
  s.source_files              = "Sources/**/*"
  s.frameworks                = "Foundation"
end
