#
# Be sure to run `pod lib lint PBJString.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'PBJString'
s.version          = '1.0.0'
s.summary          = 'Animations & transitions framework.'
s.description      = 'PBJString is a simple NSString category for more powerful string handling..'
s.homepage         = 'https://github.com/SnugJoker/PBJString'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Joseph Razon' => 'razonjoe@gmail.com' }
s.source           = { :git => 'https://github.com/SnugJoker/PBJString.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'

s.source_files = 'PBJString/Classes/*'
s.public_header_files = 'PBJString/Classes/*.h'


end

