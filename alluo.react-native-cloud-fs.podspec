require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = 'alluo.react-native-cloud-fs'
  s.version          = package['version']
  s.summary          = 'iCloud integration'
  s.license          = 'MIT'
  s.homepage         = 'https://github.com/GetAlluo/react-native-cloud-fs'
  s.authors          = 'npomfret'
  s.platforms        = { :ios => "9.0", :tvos => "9.2" }
  s.source           = { :git => 'https://github.com/GetAlluo/react-native-cloud-fs.git', :tag => s.version }
  s.source_files     = 'ios/**/*.{h,m}'
  s.requires_arc     = true
  s.dependency         'React'
end
