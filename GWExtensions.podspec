Pod::Spec.new do |s|
  s.name             = 'GWExtensions'
  s.version          = '0.1.2'
  s.summary          = 'GWExtensions'
  s.description      = 'Extensions of iOS Delvelop with XCode'
  s.homepage         = 'https://github.com/oper0960/GWExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ryu' => 'oper0960@peopleroad.net' }
  s.source           = { :git => 'https://github.com/oper0960/GWExtensions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GWExtensions/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GWExtensions' => ['GWExtensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
