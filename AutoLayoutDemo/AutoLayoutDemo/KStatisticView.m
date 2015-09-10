//
//  KStatisticView.m
//  AutoLayoutDemo
//
//  Created by guojun on 9/9/15.
//  Copyright (c) 2015 guojunxu. All rights reserved.
//

#import "KStatisticView.h"
#import "NSNumber+KNumber.h"

@interface KStatisticView()

@property (nonatomic, strong) UIImageView *imageView1;
@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UIImageView *imageView2;
@property (nonatomic, strong) UILabel *label2;

@property (nonatomic, strong) NSLayoutConstraint *leftConstraint;
@property (nonatomic, strong) NSLayoutConstraint *centerConstraint;
@property (nonatomic, strong) NSLayoutConstraint *rightConstraint;

@end

@implementation KStatisticView

- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];

    if (self) {
        [self addView];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self addView];        
    }
    
    return self;
}

- (void)addView{
    self.imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"view_count"]];
    [self addSubview:self.imageView1];
    
    self.label1 = [[UILabel alloc] init];
//    self.label1.text = @"1234";
    self.label1.font = [UIFont boldSystemFontOfSize:10];
    [self addSubview:self.label1];
    
    self.imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"like"]];
    [self addSubview:self.imageView2];
    
    self.label2 = [[UILabel alloc] init];
//    self.label2.text = @"1234";
    self.label2.font = [UIFont boldSystemFontOfSize:10];
    [self addSubview:self.label2];
    
    UIView *helperView = [[UIView alloc] init];
    helperView.backgroundColor = [UIColor redColor];
    [self addSubview:helperView];
    
    self.imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    self.label1.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    self.label2.translatesAutoresizingMaskIntoConstraints = NO;
    
    helperView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *viewsDictionary = @{@"imageView1":self.imageView1,
                                      @"label1":self.label1,
                                      @"imageView2":self.imageView2,
                                      @"label2":self.label2};
    
    NSArray *constraintH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(>=0)-[imageView1]-3-[label1]-20-[imageView2]-3-[label2]-(>=0)-|"
                                                                   options:0
                                                                   metrics:nil
                                                                     views:viewsDictionary];
    
    
    NSLayoutConstraint *constraint1 =[NSLayoutConstraint constraintWithItem:self.imageView1
                                                                  attribute:NSLayoutAttributeCenterY
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self
                                                                  attribute:NSLayoutAttributeCenterY
                                                                 multiplier:1
                                                                   constant:0];

    //
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:self.label1
                                                                   attribute:NSLayoutAttributeCenterY
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.imageView1
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1
                                                                    constant:0];
    
    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:self.imageView2
                                                                   attribute:NSLayoutAttributeCenterY
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.imageView1
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1
                                                                    constant:0];
    
    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:self.label2
                                                                   attribute:NSLayoutAttributeCenterY
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.imageView1
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1
                                                                    constant:0];
    
    //
    NSLayoutConstraint *constraint5 =[NSLayoutConstraint constraintWithItem:helperView
                                                                  attribute:NSLayoutAttributeLeft
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.imageView1
                                                                  attribute:NSLayoutAttributeLeft
                                                                 multiplier:1
                                                                   constant:0];
    
    NSLayoutConstraint *constraint6 =[NSLayoutConstraint constraintWithItem:helperView
                                                                  attribute:NSLayoutAttributeRight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.label2
                                                                  attribute:NSLayoutAttributeRight
                                                                 multiplier:1
                                                                   constant:0];
    
    self.centerConstraint =[NSLayoutConstraint constraintWithItem:helperView
                                                        attribute:NSLayoutAttributeCenterX
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:self
                                                        attribute:NSLayoutAttributeCenterX
                                                       multiplier:1
                                                         constant:0];
    
    self.leftConstraint =[NSLayoutConstraint constraintWithItem:helperView
                                                        attribute:NSLayoutAttributeLeading
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:self
                                                        attribute:NSLayoutAttributeLeading
                                                       multiplier:1
                                                         constant:0];
    
    self.rightConstraint =[NSLayoutConstraint constraintWithItem:helperView
                                                      attribute:NSLayoutAttributeTrailing
                                                      relatedBy:NSLayoutRelationEqual
                                                         toItem:self
                                                      attribute:NSLayoutAttributeTrailing
                                                     multiplier:1
                                                       constant:0];
    
    [self addConstraints:constraintH];
    
    [self addConstraint:constraint1];
    [self addConstraint:constraint2];
    
    [self addConstraint:constraint3];
    [self addConstraint:constraint4];
    [self addConstraint:constraint5];
    
    [self addConstraint:constraint6];
    [self addConstraint:self.centerConstraint];
}

#pragma mark - Getters & Setters
- (void)setValue1:(NSInteger)value1{
    _value1 = value1;
    
    self.label1.text = [@(value1) toString];
}

- (void)setValue2:(NSInteger)value2{
    _value2 = value2;
    
    self.label2.text = [@(value2) toString];
}

- (void)setImage1:(UIImage *)image1{
    _image1 = image1;
    
    self.imageView1.image = image1;
}

- (void)setImage2:(UIImage *)image2{
    _image2 = image2;
    
    self.imageView2.image = image2;
}

- (void)setFontColor:(UIColor *)fontColor{
    _fontColor = fontColor;
    
    self.label1.textColor = fontColor;
    self.label2.textColor = fontColor;
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment{
    _textAlignment = textAlignment;
    
    if (textAlignment == NSTextAlignmentLeft) {
        [self removeConstraint:self.rightConstraint];
        [self removeConstraint:self.centerConstraint];
        
        [self addConstraint:self.leftConstraint];
    } else if (textAlignment == NSTextAlignmentRight){
        [self removeConstraint:self.leftConstraint];
        [self removeConstraint:self.centerConstraint];
        
        [self addConstraint:self.rightConstraint];
    } else if (textAlignment == NSTextAlignmentCenter){
        [self removeConstraint:self.leftConstraint];
        [self removeConstraint:self.rightConstraint];
        
        [self addConstraint:self.centerConstraint];
    } else {
        [self removeConstraint:self.leftConstraint];
        [self removeConstraint:self.rightConstraint];
        
        [self addConstraint:self.centerConstraint];        
    }
}

@end
