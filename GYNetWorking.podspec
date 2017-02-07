Pod::Spec.new do |s|

  s.name         = "GYNetWorking"
  s.version      = "0.0.9"
  s.summary      = "网络请求测试库"
  s.homepage     = "https://github.com/GYLibrary/GYNetWorking"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "airfight" => "745756619@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => 'https://github.com/GYLibrary/GYNetWorking.git', :tag => s.version }
  s.source_files = "GYNetWorking/NetWork/*.swift"
  s.requires_arc = true

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }
  
end
