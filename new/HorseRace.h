//
//  HorseRace.h
//  new
//
//  Created by lzsc on 16/8/17.
//  Copyright © 2016年 lzsc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorseRace : UIView

@property(nonatomic, strong) NSTimer* timer;// 定义定时器
@property(nonatomic, strong) UIView *viewAnima; //装 滚动视图的容器
@property(nonatomic, strong) UILabel *customLab;
@property (nonatomic, retain) NSArray * array;
@property(nonatomic, assign)int count;

//跑马灯
-(instancetype)initWithFrame:(CGRect)frame AndWithTitle:(NSArray *) titleArr AndWithTime:(float ) timerNum;

@end




