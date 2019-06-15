Pod::Spec.new do |s|
  s.name                      = "PickerKit"
  s.version                   = "0.1.3"
  s.summary                   = "PickerKit"
  s.homepage                  = "https://github.com/Pondorasti/PickerKit"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Alexandru Turcanu" => "alexandru_turcanu@ymail.com" }
  s.source                    = { :git => "https://github.com/Pondorasti/PickerKit.git", :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target     = "10.0"

  s.source_files              = "Sources/**/*"
  s.frameworks                = "UIKit"

end
