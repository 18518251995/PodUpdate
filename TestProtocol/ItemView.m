//
//  ItemView.m
//  TestProtocol
//
//  Created by 张振栋 on 2022/1/19.
//

#import "ItemView.h"
#import "LoopView.h"

@interface ItemView()

@property (nonatomic, strong)LoopView *loopView;

@property (nonatomic,assign)NSInteger typeNum;

@end

@implementation ItemView

- (instancetype)initWithFrame:(CGRect)frame withIndex:(NSInteger)index
{
    self = [super initWithFrame:frame];
    if (self) {
        self.typeNum = 0;
        switch (index) {
            case 0:
                self.backgroundColor = [UIColor redColor];
                break;
            case 1:
                self.backgroundColor = [UIColor yellowColor];
                break;
            case 2:
                self.backgroundColor = [UIColor blueColor];
                break;
            case 3:
                self.backgroundColor = [UIColor greenColor];
                break;
            default:
                break;
        }
        [self loopMethod];
    }
    return self;
}
- (void)loopMethod{
    self.loopView = [[LoopView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    self.loopView.userInteractionEnabled = YES;
    self.loopView.completeCallback = ^{
        NSLog(@"执行block");
        self.typeNum ++;
    };
    [self addSubview:self.loopView];
}

- (void)dealloc{
    NSLog(@"itemview has imp dealloc");
}

@end
