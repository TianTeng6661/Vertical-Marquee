//
//  ViewController.m
//  new
//
//  Created by lzsc on 16/7/25.
//  Copyright © 2016年 lzsc. All rights reserved.
//

#import "ViewController.h"
#import "HorseRace.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    UIView * vi = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
    vi.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:vi];
//传入一个数组
    NSArray * array = [[NSArray alloc] initWithObjects:@"吃完了",@"好舒服的样子",@"周末去玩耍",@"下雨了", nil];
//time  为控制移动的时间
    HorseRace * host =[[HorseRace alloc]initWithFrame:CGRectMake(0, 0, 200, 40) AndWithTitle:array AndWithTime:0.3];
    [vi addSubview:host];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
