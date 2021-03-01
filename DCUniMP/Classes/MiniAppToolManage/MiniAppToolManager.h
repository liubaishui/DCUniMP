//
//  MiniAppToolManager.h
//  MiniAppTool
//
//  Created by wanglijian  on 2021/2/20.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MiniAppToolManager : NSObject

/// 初始化 sdk 全局环境
/// @param options 启动参数
+ (void)mrInitSDKEnvironmentWithLaunchOptions:(NSDictionary *)options;


@end

NS_ASSUME_NONNULL_END
