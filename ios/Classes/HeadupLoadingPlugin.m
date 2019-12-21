#import "HeadupLoadingPlugin.h"
#if __has_include(<headup_loading/headup_loading-Swift.h>)
#import <headup_loading/headup_loading-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "headup_loading-Swift.h"
#endif

@implementation HeadupLoadingPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHeadupLoadingPlugin registerWithRegistrar:registrar];
}
@end
