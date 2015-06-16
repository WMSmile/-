//
//  CircleView.m
//  画饼
//
//  Created by Mac on 15-6-16.
//  Copyright (c) 2015年 wmeng. All rights reserved.
//

#import "CircleView.h"
#define WMWIDTH self.frame.size.height/2.0f
#define progress 0.7

@implementation CircleView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
        [self layoutViews];
    }
    return self;
}
/**
 *  布局界面
 */
- (void)layoutViews
{
    CAShapeLayer *circleLayer = [[CAShapeLayer alloc]init];;
    [self.layer addSublayer:circleLayer];
    circleLayer.fillColor = nil;
    circleLayer.lineCap = kCALineCapButt;
    circleLayer.frame = self.bounds;
    
    circleLayer.lineWidth = WMWIDTH;
    circleLayer.strokeColor = [UIColor redColor].CGColor;

   
    UIBezierPath *path =[UIBezierPath bezierPathWithArcCenter:CGPointMake(WMWIDTH, WMWIDTH)
                                                       radius:(self.bounds.size.width - WMWIDTH)/2
                                                   startAngle:- M_PI_2
                                                     endAngle:(M_PI * 2) * progress - M_PI_2
                                                    clockwise:YES];
    
    circleLayer.path = path.CGPath;
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
