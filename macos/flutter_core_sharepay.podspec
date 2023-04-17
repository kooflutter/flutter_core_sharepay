#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_core_sharepay.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_core_sharepay'
  s.version          = '0.0.1'
  s.summary          = '一个flutter核心share和pay的插件'
  s.description      = <<-DESC
一个flutter核心share和pay的插件
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
