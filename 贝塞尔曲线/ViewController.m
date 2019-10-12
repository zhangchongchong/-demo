//
//  ViewController.m
//  贝塞尔曲线
//
//  Created by 张冲 on 2018/6/6.
//  Copyright © 2018年 张冲. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    bgView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:bgView];

    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveLinear|UIViewAnimationOptionRepeat animations:^{
        NSLog(@"动画");
    } completion:^(BOOL finished) {
        NSLog(@"完成");
    }];

//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:bgView.bounds byRoundingCorners:UIRectEdgeLeft | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
//    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
//    maskLayer.frame = bgView.bounds;
//    maskLayer.lineWidth = 1.0;
//    maskLayer.strokeColor = [UIColor redColor].CGColor;
////    maskLayer.fillColor = [UIColor redColor].CGColor;
//    maskLayer.path = path.CGPath;
//    [bgView.layer addSublayer:  maskLayer];


    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint:CGPointMake(0, 6)];
    [bezierPath addArcWithCenter:CGPointMake(6, 6) radius:6.0 startAngle:M_PI endAngle:1.5*M_PI clockwise:YES];
//    [bezierPath addLineToPoint:CGPointMake(6, 0)];
    [bezierPath addLineToPoint:CGPointMake(30, 0)];
    [bezierPath addArcWithCenter:CGPointMake(30, 6) radius:6.0 startAngle:1.5*M_PI endAngle:2*M_PI clockwise:YES];
    CAShapeLayer *lineLayer = [CAShapeLayer layer];
    lineLayer.lineWidth = 1.0  ;
    lineLayer.strokeColor = [UIColor redColor].CGColor;
    lineLayer.path = bezierPath.CGPath;
    lineLayer.fillColor = nil;

    [bgView.layer addSublayer:lineLayer];



    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
