//
//  ViewController.m
//  TestProtocol
//
//  Created by 张振栋 on 2022/1/18.
//

#import "ViewController.h"
#import "Child.h"
#import "ItemView.h"
#import "FirstViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong)UIScrollView *scrollView;

@property (nonatomic, assign)NSInteger index;

@property (nonatomic, strong)ItemView *itemView;

@property (nonatomic, strong) NSString *target;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //....

    dispatch_queue_t queue = dispatch_queue_create("parallel", DISPATCH_QUEUE_SERIAL);
    
    dispatch_async(queue, ^{
        for (int i = 0; i < 10000 ; i++) {
            self.target = [NSString stringWithFormat:@"ksddkjalkjd%d",i];
        }
    });
    
    
    NSLog(@"%@",self.target);
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 100);
//    [btn addTarget:self action:@selector(pushMethod) forControlEvents:UIControlEventTouchUpInside];
//    btn.backgroundColor = [UIColor redColor];
//    [self.view addSubview:btn];
    
//    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 100)];
//    self.scrollView.contentSize = CGSizeMake(300 * 4, 0);
//    self.scrollView.delegate = self;
//    for (int i = 0; i < 4; i++) {
//        ItemView *view = [[ItemView alloc] initWithFrame:CGRectMake(i * 300, 0, 300, 100) withIndex:i];
//        [self.scrollView addSubview:view];
//    }
//    [self.view addSubview:self.scrollView];
    
//    NSLog(@"start");
//    self.itemView = [[ItemView alloc] init];
//    [self.view addSubview:self.itemView];
    
}

- (void)pushMethod{
    FirstViewController *nextVC = [[FirstViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
}

//- (void)dealloc{
//    NSLog(@"good method");
//}


@end
