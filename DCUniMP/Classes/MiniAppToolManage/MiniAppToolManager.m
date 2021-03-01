//
//  MiniAppToolManager.m
//  MiniAppTool
//
//  Created by wanglijian  on 2021/2/20.
//

#import "MiniAppToolManager.h"
#import "DCUniMP.h"
#import "WeexSDK.h"

@implementation MiniAppToolManager

+ (void)mrInitSDKEnvironmentWithLaunchOptions:(NSDictionary *)options {
    
    // 配置参数
    NSMutableDictionary *sdkOptions = [NSMutableDictionary dictionaryWithDictionary:options];
    // 设置 debug YES 会在控制台输出 js log，默认不输出 log，注：需要引入 liblibLog.a 库
    [sdkOptions setObject:[NSNumber numberWithBool:YES] forKey:@"debug"];
    // 初始化引擎
    [DCUniMPSDKEngine initSDKEnvironmentWithLaunchOptions:sdkOptions];
    
    // 注册 component 注：component 的 Name 需要保证唯一， class：为 component 的类名
    [WXSDKEngine registerModule:@"TestModule" withClass:NSClassFromString(@"TestModule")];
    
}

@end
