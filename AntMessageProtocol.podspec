#
# Be sure to run `pod lib lint BluetoothMessageProtocol.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AntMessageProtocol'
  s.version          = '0.2.1'
  s.summary          = 'Encoding and Decoding of the ANT Message Protocol.'


  s.description      = <<-DESC
Encoding and Decoding of the ANT Message Protocol.  Provides codeing methods for ANT+.
                       DESC

  s.homepage            = 'https://github.com/FitnessKit/AntMessageProtocol'
  s.documentation_url   = 'https://fitnesskit.github.io/AntMessageProtocol/'
  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.author              = { 'Kevin A. Hoogheem' => 'kevin@hoogheem.net' }
  s.source              = { :git => 'https://github.com/FitnessKit/AntMessageProtocol.git', :tag => s.version.to_s }

#Targets
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'

#Source
  s.source_files = 'Sources/AntMessageProtocol/**/*'

#Required Frameworks
#  s.ios.framework       = [ 'Dispatch' ]

#Dependancy
  s.dependency 'DataDecoder', '~> 4.0.3'
  s.dependency 'FitnessUnits', '~> 1.6.1'

end
