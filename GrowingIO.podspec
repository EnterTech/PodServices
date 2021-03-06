Pod::Spec.new do |s|

  s.name         = "GrowingIO"
  s.version      = "1.4.1"
  s.summary      = "An unofficial GrowingIO SDK Cocoapods repository."
  s.homepage     = "https://www.growingio.com/"
  s.authors      = { 'HyanCat' => 'https://github.com/HyanCat' }
  s.license           = {
    :type => "Copyright",
    :text => "Copyright https://www.growingio.com/"
  }

  s.source       = { :http => 'http://assets.growingio.com/sdk/GrowingIO-iOS-SDK-1.4.1.zip' }
  s.platform     = :ios, "7.0"
  s.swift_version = "4.0"

  s.frameworks = "SystemConfiguration", "CoreTelephony", "Security", "CoreLocation"
  s.libraries = "z", "sqlite3", "icucore"

  s.public_header_files = "**/Growing.h"
  s.source_files = "**/Growing.h", "**/libGrowing.a"
  s.vendored_libraries = "**/libGrowing.a"

  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load' }
end