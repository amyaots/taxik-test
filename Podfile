# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'taxik-test' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'Alamofire', '~> 4.0'
  pod 'AlamofireObjectMapper', '~> 4.0'

  pod "PromiseKit", '~> 4.0'

  pod 'Swinject', '2.0.0-beta.2'
  pod 'SwinjectStoryboard', '1.0.0-beta.2'

  pod 'GoogleMaps'

  # Pods for taxik-test

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end
