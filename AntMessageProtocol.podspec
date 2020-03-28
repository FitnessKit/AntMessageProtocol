#
# Be sure to run `pod lib lint AntMessageProtocol.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AntMessageProtocol'
  s.version          = '1.1.0'
  s.summary          = 'Encoding and Decoding of the ANT Message Protocol.'


  s.description      = <<-DESC
Encoding and Decoding of the ANT Message Protocol.  Provides codeing methods for ANT+.
                       DESC

  s.homepage            = 'https://github.com/FitnessKit/AntMessageProtocol'
  s.documentation_url   = 'https://fitnesskit.github.io/AntMessageProtocol/'
  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.author              = { 'Kevin A. Hoogheem' => 'kevin@hoogheem.net' }
  s.source              = { :git => 'https://github.com/FitnessKit/AntMessageProtocol.git', :tag => s.version.to_s }
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.1' }
  s.swift_version       = '5.1'

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
  s.dependency 'DataDecoder'
  s.dependency 'FitnessUnits'

end
