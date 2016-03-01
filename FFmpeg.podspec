Pod::Spec.new do |s|
  s.name         = "FFmpeg"
  s.version      = "3.0.0"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/ChaseWang/FFmpeg-iOS"
  
  s.license      = { :type => 'LGPL', :file => 'LICENSE' }
  s.author       = { "wang tao" => "wt0110@126.com" } # Podspec maintainer
  s.requires_arc = false
  
  s.platform     = :ios

  s.source       = { :git => "https://github.com/ChaseWang/FFmpeg-iOS.git", :tag => "3.0.0", :submodules => true }
  
  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'FFmpeg/include/**/*.h'
    ss.public_header_files = 'FFmpeg/include/**/*.h'
    ss.header_mappings_dir = 'FFmpeg/include'
    ss.vendored_libraries  = 'FFmpeg/lib/*.a'
    ss.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
    ss.framework = 'CoreMedia', 'AVFoundation', 'VideoToolbox'
  end

end
