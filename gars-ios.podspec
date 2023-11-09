Pod::Spec.new do |s|
  s.name             = 'gars-ios'
  s.version          = '1.1.4'
  s.license          =  {:type => 'MIT', :file => 'LICENSE' }
  s.summary          = 'iOS SDK for Global Area Reference System (GARS)'
  s.homepage         = 'https://github.com/ngageoint/gars-ios'
  s.authors          = { 'NGA' => '', 'BIT Systems' => '', 'Brian Osborn' => 'bosborn@caci.com' }
  s.social_media_url = 'https://twitter.com/NGA_GEOINT'
  s.source           = { :git => 'https://github.com/ngageoint/gars-ios.git', :tag => s.version }
  s.requires_arc     = true
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.platform         = :ios, '12.0'
  s.ios.deployment_target = '12.0'

  s.source_files = 'gars-ios/**/*.swift'

  s.resource_bundle = { 'gars-ios' => ['gars-ios/**/gars*.plist'] }
  s.frameworks = 'Foundation'

  s.dependency 'grid-ios', '~> 1.0.6'
end
