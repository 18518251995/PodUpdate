#
#  Be sure to run `pod spec lint TestProtocol.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "TestProtocol"
  spec.version      = "0.0.2"
  spec.summary      = "A Test pod"
  spec.homepage     = "https://github.com/18518251995/TestProtocol.git"
  spec.license      = "MIT"
  spec.author             = { "zzd" => "18518251995@163.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/18518251995/TestProtocol.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "TestProtocol", "TestProtocol/**/*.{h,m}"

end
