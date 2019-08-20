platform :ios, '11.0'
#inhibit_all_warnings!
use_modular_headers!
use_frameworks!
install! 'cocoapods', generate_multiple_pod_projects: false

abstract_target 'CommonSpecTarget' do

  target 'TYBaseProject' do
    
    #业务模块
    pod 'TYStationModule', :path => '../TYStationModule'
    pod 'TYProfileModule', :path => '../TYProfileModule'
    pod 'TYOrderModule', :path => '../TYOrderModule'
    
    #业务通用模块
    pod 'HLCoreFoundation', :path => '../HLCoreFoundation'
    pod 'HLUIKit', :path => '../HLUIKit' #UI的扩展
    pod 'HLNetwork', :path => '../HLNetwork' #基于moya的网络请求
    
    #底层通用框架
    pod 'CYLTabBarController', '~> 1.28.3'
    pod 'SnapKit', '~> 5.0.0' #布局框架
    pod 'RxSwift', '~> 5.0.0' #异步编程框架
    pod 'RxCocoa', '~> 5.0.0' #异步编程框架
    pod 'Graver', '~> 1.0.0' #异步渲染框架
    pod 'Moya', '~> 13.0.0'
    pod 'Alamofire', '~> 4.8.2'
    
    #中间件
    pod 'TYMediator', :path => '../TYMediator'
    pod 'CTMediator' #主要是Target-Action 通讯
  end

end

