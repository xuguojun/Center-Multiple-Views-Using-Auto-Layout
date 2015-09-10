//
//  KStatisticView.h
//  AutoLayoutDemo
//
//  Created by guojun on 9/9/15.
//  Copyright (c) 2015 guojunxu. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface KStatisticView : UIView

@property (nonatomic, copy) IBInspectable UIImage *image1;
@property (nonatomic, copy) IBInspectable UIImage *image2;
@property (nonatomic, assign) IBInspectable NSInteger value1;
@property (nonatomic, assign) IBInspectable NSInteger value2;

@property (nonatomic, copy) IBInspectable UIColor *fontColor;
@property (nonatomic, assign) IBInspectable NSTextAlignment textAlignment;

@end
