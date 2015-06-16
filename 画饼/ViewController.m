//
//  ViewController.m
//  画饼
//
//  Created by Mac on 15-6-16.
//  Copyright (c) 2015年 wmeng. All rights reserved.
//

#import "ViewController.h"

#import "CircleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CircleView *bgView = [[CircleView alloc]initWithFrame:CGRectMake(50, 100, 200, 200)];
    [self.view addSubview:bgView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
