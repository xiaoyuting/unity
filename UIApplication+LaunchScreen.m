//
//  UIApplication+LaunchScreen.m
//  Unity-iPhone
//
//  Created by 123 on 2020/6/2.
//

#import "UIApplication+LaunchScreen.h"
// 使用[UIApplication.sharedApplication clearLaunchScreenCache];
@implementation UIApplication (LaunchScreen)
- (void)clearLaunchScreenCache {
    NSError *error;
    [NSFileManager.defaultManager removeItemAtPath:[NSString stringWithFormat:@"%@/Library/Caches/Snapshots",NSHomeDirectory()] error:&error];
    if (error) {
        NSLog(@"Failed to delete launch screen cache: %@",error);
    }
}
@end
