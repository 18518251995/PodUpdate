//
//  FirstViewController.m
//  TestProtocol
//
//  Created by 张振栋 on 2022/4/27.
//

#import "FirstViewController.h"
#import "ItemView.h"

@interface FirstViewController ()
@property (nonatomic, strong)ItemView *itemView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.itemView = [[ItemView alloc] initWithFrame:CGRectMake(0, 400, 400, 200) withIndex:0];
    self.itemView.userInteractionEnabled = YES;
    [self.view addSubview:self.itemView];
}

- (void)dealloc{
    NSLog(@"good method");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
