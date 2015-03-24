Pod::Spec.new do |s|
  s.name         = 'ms-sdk-ios'
  s.version      = '2.3.0'
  s.summary      = 'ms-sdk-ios SDK for native iOS Apps'
  s.author = {
    'Jesus Lopez' => 'inyenia@gmail.com'
  }
  s.source = {
    :git => 'https://github.com/viavansi/ms-sdk-ios.git',
    :branch => 'ms-sdk-ios-2.3.x'
  }
  s.requires_arc = true
  s.source_files = 'ms-sdk-ios/Classes/**/*.{h,m,cat}'
  s.ios.dependency 	'AFNetworking', '~> 1.0'
  s.ios.framework = 'SystemConfiguration', 'MobileCoreServices'
end
