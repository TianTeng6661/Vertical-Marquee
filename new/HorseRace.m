//
//  HorseRace.m
//  new
//
//  Created by lzsc on 16/8/17.
//  Copyright © 2016年 lzsc. All rights reserved.
//

#import "HorseRace.h"

@implementation HorseRace

-(instancetype)initWithFrame:(CGRect)frame AndWithTitle:(NSArray *)titleArr AndWithTime:(float)timerNum{

    if(self = [super initWithFrame:frame]){

        self.customLab = [[UILabel alloc] init];
        //NSLog(@"%@",frame);
        self.customLab.frame = CGRectMake(0, 0, 200, 40);
        [self.customLab setTextColor:[UIColor blackColor]];
        //self.customLab.text = title;
        //NSLog(@"%@",titleArr);
        _array = [[NSArray alloc]initWithArray:titleArr];

        _count = (int)titleArr.count;
        //_count = 3;

        //NSLog(@"%@",[titleArr ]);
        
        self.customLab.text = [NSString stringWithFormat:@"%@",[titleArr objectAtIndex:0]];

        self.customLab.font = [UIFont boldSystemFontOfSize:17];
        [self addSubview:self.customLab];

        //定时器
        [self getTimerWithTime:timerNum];
        
    }
    return self;

}

-(void)getTimerWithTime:(float) timer{


    // 启动NSTimer定时器来改变UIImageView的位置
    self.timer = [NSTimer scheduledTimerWithTimeInterval:timer
                                                  target:self selector:@selector(changePos)
                                                userInfo:nil repeats:YES];
}

-(void)changePos{

    CGPoint curPos = self.customLab.center;

    // 当curPos的x坐标已经超过了屏幕的宽度
    if(curPos.y <  -3 )
    {
        CGFloat jianJu = self.customLab.frame.size.height/4;
        // 控制蝴蝶再次从屏幕左侧开始移动
        self.customLab.center = CGPointMake(100, self.customLab.frame.size.height + jianJu);
        //NSLog(@"%@",_array);
        _count --;
        if(_count==0){
            self.customLab.text = [_array objectAtIndex:_count];
            _count=(int)_array.count;
        }else{
            self.customLab.text = [_array objectAtIndex:_count];
        }

    }
    else
    {
        // 通过修改iv的center属性来改变iv控件的位置
        self.customLab.center = CGPointMake(100, curPos.y - 3);

    }


}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
