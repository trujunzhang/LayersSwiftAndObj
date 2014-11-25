//
//  CollectionNode.h
//  Layers
//
//  Created by djzhang on 11/25/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AsyncDisplayKit.h"
@class RainforestCardInfo;
@class GradientNode;


@interface CollectionNode : ASDisplayNode

@property(nonatomic, strong) ASImageNode * featureImageNode;
@property(nonatomic, strong) ASTextNode * titleTextNode;
@property(nonatomic, strong) ASTextNode * descriptionTextNode;
//@property(nonatomic, strong) ASDisplayNode * containerNode;
@property(nonatomic, strong) UIImage * image;

@property(nonatomic, strong) RainforestCardInfo * cardInfo;
@property(nonatomic, strong) ASImageNode * backgroundImageNode;
@property(nonatomic, strong) GradientNode * gradientNode;
- (instancetype)initWithImage:(UIImage *)image cardInfo:(RainforestCardInfo *)cardInfo;

@end
