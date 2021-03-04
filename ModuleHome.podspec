Pod::Spec.new do |s|
  s.name             = 'ModuleHome'
  s.version          = '0.0.1'
  s.summary          = 'Home模块'
  s.description      = 'Home模块, Home模块'
  s.homepage         = 'https://github.com/2NU71AN9/SLModularisation-ModuleHome'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '2UN7' => '1491859758@qq.com' }
  s.source           = { :git => 'https://github.com/2NU71AN9/SLModularisation-ModuleHome.git' }
  s.ios.deployment_target = '11.0'
  s.source_files = 'ModuleHome/Classes/**/*'
  s.resource_bundles = {
    'ModuleHome' => ['ModuleHome/Classes/**/*.{storyboard,xib}'],
  }

  s.dependency 'ModuleComm'
  
  s.pod_target_xcconfig = {
      'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
  }
  s.static_framework  =  true

end
