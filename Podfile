# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'iSwiftLeetCode' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for iSwiftLeetCode

  def testing_pods
    pod 'Quick'
    pod 'Nimble'
  end


  target 'iSwiftLeetCodeTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'iSwiftLeetCodeUITests' do
    testing_pods
  end

  post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '5.5'
        end
    end
  end

end
