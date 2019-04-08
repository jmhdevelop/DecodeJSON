#
# Be sure to run `pod lib lint DecodeJSON.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DecodeJSON'
  s.version          = '0.2.0'
  s.summary          = 'Simple way to decode a JSON'
  s.homepage         = 'https://github.com/jmhdevelop/DecodeJSON'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jmhdevep' => 'jmherrero@jmhdeveloper.com' }
  s.source           = { :git => 'https://github.com/jmhdevelop/DecodeJSON.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'
  s.swift_version = '4.2'

  s.source_files = 'DecodeJSON/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DecodeJSON' => ['DecodeJSON/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
