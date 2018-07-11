source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '11.4'
use_frameworks!

inhibit_all_warnings!

def installPods
    pod 'SwiftLint'
    pod 'SwiftGen'
    pod 'Reusable'
    pod 'M13Checkbox'
end

target 'Races' do
    installPods
end

post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
    end
end
