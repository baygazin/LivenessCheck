# Uncomment the next line to define a global platform for your project
platform :ios, '14.0'

target 'LivenessCheck' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!

  # Pods for LivenessCheck
  # pod 'GoogleMLKit/FaceDetection'
  pod 'Liveness', :git => 'https://github.com/Salmik/LivenessLibrary', :tag => '1.0.3'

  post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
      config.build_settings['DEAD_CODE_STRIPPING'] = 'YES'
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'YES'
    end
  
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['DEAD_CODE_STRIPPING'] = 'YES'
        config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      end
    end
  end

end
