Pod::Spec.new do |s|
  s.name = 'BinaryLoaderNetwork'
  s.version = '1.0.7'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://github.com/binaryloader/binaryloader-network'
  s.authors = { 'binaryloader' => '152517454+binaryloader@users.noreply.github.com' }
  s.summary = 'Async/await network abstraction layer built on Moya'
  s.swift_version = '5.6'

  s.ios.deployment_target = '13.0'

  s.source = { :git => 'https://github.com/binaryloader/binaryloader-network.git', :tag => s.version }
  s.source_files = 'BinaryLoaderNetwork/Module/Source/*.swift'

  s.dependency 'Moya', '15.0.0'
end
