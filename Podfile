source 'https://gl.jetru.by/Mobile-Space/Podspec.git'
source 'https://github.com/cocoapods/specs.git'

platform :ios, '10.0'

use_frameworks!
inhibit_all_warnings!

project 'Calculator.xcodeproj'

def required_pods
	pod 'SwiftLint'
  	pod 'Swinject'
  	pod 'KRProgressHUD', '~> 3.2.2'
  	#pod 'Apollo'
  	#pod 'Alamofire', '~> 4.5'
  	#pod 'SocialAuth', '~> 0.0.4'
end
 

target 'Calculator-Dev' do
  required_pods
  #pod 'Reveal-SDK', '~> 13'
end

target 'Calculator-Staging' do
  required_pods
end

target 'Calculator-Prod' do
  required_pods
end
