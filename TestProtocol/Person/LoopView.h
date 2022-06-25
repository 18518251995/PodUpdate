//
//  LoopView.h
//  TestProtocol
//
//  Created by 张振栋 on 2022/4/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoopView : UIView

@property void (^completeCallback)(void);

@end

NS_ASSUME_NONNULL_END
