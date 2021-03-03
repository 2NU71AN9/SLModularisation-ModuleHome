platform :ios, '11.0'

target 'ModuleHome' do
  use_frameworks!

#  pod 'ModuleComm', :path => '../ModuleComm'
#  pod 'SLJGSDK', :path => '../ModuleComm/SLJGSDK'
#  pod 'ModuleResource', :path => '../ModuleResource'
  
  pod 'ModuleComm', :git => 'https://github.com/2NU71AN9/SLModularisation-ModuleComm.git'
  
  post_install do |installer|
    system 'sh mk_modulemap.sh Pods'
  end
  
end
