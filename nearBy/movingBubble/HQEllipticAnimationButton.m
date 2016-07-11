//
//  HQEllipticAnimationButton.m
//  HQAnimations
//
//  Created by qianhongqiang on 15/4/27.
//  Copyright (c) 2015年 QianHongQiang. All rights reserved.
//

#import "HQEllipticAnimationButton.h"
#import "HQEllipticMotionAnimation.h"

@implementation HQEllipticAnimationButton{

    NSString * _imageName;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame imageName:(NSString *)imageName{

    self = [super initWithFrame:frame];
    if (self) {
        _imageName = imageName;
        [self setupSublayers];
    }
    return self;
}


-(void)setupSublayers
{
    //下层
    CALayer *bottomLayer = [CALayer layer];
    bottomLayer.frame = self.bounds;
    bottomLayer.contents = (__bridge id)([ UIImage imageNamed:_imageName].CGImage);
    [self.layer addSublayer:bottomLayer];
    
    CGFloat duration = arc4random() % 5 / 10.0 + 2.7 ;
    CGFloat longAxis = arc4random() % 12 / 10.0 + 5.6;
    CGFloat shortAxis = arc4random() % 8 / 10.0 + 3.6 ;
    
    HQEllipticMotionAnimation *topAnimation = [HQEllipticMotionAnimation animationWithDuration:duration longAxis:longAxis shortAxis:shortAxis layerFrame:self.frame];
    
    [bottomLayer addAnimation:topAnimation forKey:nil];
    //下层
    CALayer *topLayer = [CALayer layer];
    topLayer.frame = self.bounds;
    topLayer.contents = (__bridge id)([ UIImage imageNamed:@"topLayer"].CGImage);
    [self.layer addSublayer:topLayer];
    
    HQEllipticMotionAnimation *bottomAnimation = [HQEllipticMotionAnimation animationWithDuration:duration + 0.5 longAxis:longAxis + 0.5 shortAxis:shortAxis + 0.5 layerFrame:self.frame];
    
    [topLayer addAnimation:bottomAnimation forKey:nil];
    
    
    
}

@end
