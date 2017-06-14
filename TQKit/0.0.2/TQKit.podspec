Pod::Spec.new do |s|
  s.name         = "TQKit"
  s.version      = "0.0.2"
  s.summary      = "TQKit is iOS TQ Project"
  s.description  = <<-DESC
		TQKit is iOS TQ Project .Private.
                   DESC
  s.homepage     = "https://github.com/love0912/TQKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "guojie" => "cqwan.gj@qq.com" }
  
  s.ios.deployment_target = "8.0"
  
s.source       = { :git => "https://github.com/love0912/TQKit.git", :tag => "#{s.version}"}


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

#s.source_files  = "TQKit/TQKit/TQKit.h"
  s.exclude_files = "TQKit/TQKit.xcodeproj"

   # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit', 'QuartzCore'
  s.libraries   = 'sqlite3', 'z'

  s.requires_arc = true

    s.subspec '3rdLib' do |ss|
        ss.subspec 'AFNetworking' do |sss|
            sss.source_files = 'TQKit/TQKit/3rdLib/AFNetworking/*'
        end

        ss.subspec 'YYCache' do |sss1|
            sss1.source_files = 'TQKit/TQKit/3rdLib/YYCache/*'
        end
    end

    s.subspec 'Category' do |ss|
#ss.public_header_files = 'TQKit/TQKit/Category/TT_CategoryHeader.h'
        ss.source_files = 'TQKit/TQKit/Category/*.h'
            ss.subspec 'Foundation' do |sss|
                sss.source_files = 'TQKit/TQKit/Category/Foundation/TT_FoundationHeader.h'
                sss.subspec 'NSData' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/Foundation/NSData/*'
                end
                sss.subspec 'NSDate' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/Foundation/NSDate/*'
                end
                sss.subspec 'NSDictionary' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/Foundation/NSDictionary/*'
                end
                sss.subspec 'NSObject' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/Foundation/NSObject/*'
                end
                sss.subspec 'NSNumber' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/Foundation/NSNumber/*'
                    ssss.dependency 'TQKit/Category/Foundation/NSData'
                end
                sss.subspec 'NSString' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/Foundation/NSString/*'
                    ssss.dependency 'TQKit/Category/Foundation/NSNumber'
                end
                sss.subspec 'NSTimer' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/Foundation/NSTimer/*'
                end
                sss.subspec 'NSUserDefaults' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/Foundation/NSUserDefaults/*'
                end
            end

            ss.subspec 'Quartz' do |sss|
                sss.source_files = 'TQKit/TQKit/Category/Quartz/*'
            end

            ss.subspec 'UIKit' do |sss|
                sss.source_files = 'TQKit/TQKit/Category/UIKit/TT_UIKitHeader.h'
                sss.subspec 'UIApplication' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIApplication/*'
                    ssss.dependency 'TQKit/Category/UIKit/UIDevice'
                end
                sss.subspec 'UIBarButtonItem' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIBarButtonItem/*'
                end
                sss.subspec 'UIBezierPath' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIBezierPath/*'
                    ssss.dependency 'TQKit/Category/UIKit/UIFont'
                end
                sss.subspec 'UIButton' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIButton/*'
                end
                sss.subspec 'UIColor' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIColor/*'
                end
                sss.subspec 'UIControl' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIControl/*'
                end
                sss.subspec 'UIDevice' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIDevice/*'
                    ssss.dependency 'TQKit/Category/Foundation/NSString'
                end
                sss.subspec 'UIFont' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIFont/*'
                end
                sss.subspec 'UIGesture' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIGesture/*'
                end
                sss.subspec 'UIImage' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIImage/*'
                    ssss.dependency 'TQKit/Category/YYUtils'
                end
                sss.subspec 'UIImageView' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIImageView/*'
                end
                sss.subspec 'UINavigationBar' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UINavigationBar/*'
                end
                sss.subspec 'UINavigationController' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UINavigationController/*'
                end
                sss.subspec 'UIScrollView' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIScrollView/*'
                end
                sss.subspec 'UITableView' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UITableView/*'
                end
                sss.subspec 'UITextField' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UITextField/*'
                end
                sss.subspec 'UITextView' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UITextView/*'
                end
                sss.subspec 'UIView' do |ssss|
                    ssss.source_files = 'TQKit/TQKit/Category/UIKit/UIView/*'
                end
            end

            ss.subspec 'YYUtils' do |sss|
                sss.source_files = 'TQKit/TQKit/Category/YYUtils/*'
                sss.dependency 'TQKit/Category/UIKit/UIView'
            end

    end

end
