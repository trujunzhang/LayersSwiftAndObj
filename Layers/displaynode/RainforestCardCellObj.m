//
//  RainforestCardCellObj.m
//  Layers
//
//  Created by djzhang on 11/25/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

#import "RainforestCardCellObj.h"


@implementation RainforestCardCellObj

- (void)awakeFromNib {
   [super awakeFromNib];

   CALayer * placeholderLayer = [[CALayer alloc] init];
   placeholderLayer.contents = [UIImage imageNamed:@"cardPlaceholder"];
   placeholderLayer.contentsGravity = kCAGravityCenter;
   placeholderLayer.contentsScale = [UIScreen mainScreen].scale;
   placeholderLayer.backgroundColor = [UIColor colorWithHue:0
                                                 saturation:0
                                                 brightness:0.85
                                                      alpha:1].CGColor;
   [self.contentView.layer addSublayer:placeholderLayer];
}




@end
