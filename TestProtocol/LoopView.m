//
//  LoopView.m
//  TestProtocol
//
//  Created by 张振栋 on 2022/4/27.
//

#import "LoopView.h"

@implementation LoopView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, 50, 50);
        btn.backgroundColor = [UIColor yellowColor];
        [btn addTarget:self action:@selector(completeMethod) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
    }
    return self;
}

- (void)completeMethod{
    self.completeCallback();
}

@end
