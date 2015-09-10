//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by guojun on 9/9/15.
//  Copyright (c) 2015 guojunxu. All rights reserved.
//

#import "ViewController.h"
#import "KStatisticView.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet KStatisticView *statisticView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.statisticView.textAlignment = NSTextAlignmentCenter;
    self.statisticView.fontColor = [UIColor grayColor];
    self.view.backgroundColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
