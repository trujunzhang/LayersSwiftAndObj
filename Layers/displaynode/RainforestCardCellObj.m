//
//  RainforestCardCellObj.m
//  Layers
//
//  Created by djzhang on 11/25/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

#import "RainforestCardCellObj.h"
#import "FrameCalculator.h"
#import "RainforestCardInfo.h"


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


- (CGSize)sizeThatFits:(CGSize)size {
   CGSize featureImageSize = self.featureImageSizeOptional;
   if (!CGSizeEqualToSize(CGSizeZero, featureImageSize))
      return [FrameCalculator sizeThatFits:size withImageSize:featureImageSize];

   return CGSizeZero;
}


- (void)layoutSubviews {
   [super layoutSubviews];

   [CATransaction begin];
   [CATransaction setValue:[NSValue valueWithPointer:kCFBooleanTrue] forKey:kCATransactionDisableActions];
   _placeholderLayer.frame = self.bounds;
   [CATransaction commit];
}


//MARK: Cell Reuse
- (void)prepareForReuse {
   [super prepareForReuse];

   NSOperation * operation = _nodeConstructionOperation;
   if (operation)
      [operation cancel];

   [_containerNode recursiveSetPreventOrCancelDisplay:YES];
   [_contentLayer removeFromSuperlayer];
   _contentLayer = nil;
   _containerNode = nil;
}


- (void)configureCellDisplayWithCardInfo:(RainforestCardInfo *)cardInfo nodeConstructionQueue:(NSOperationQueue *)nodeConstructionQueue {
   NSOperation * oldNodeConstructionOperation = _nodeConstructionOperation;
   if (oldNodeConstructionOperation)
      [oldNodeConstructionOperation cancel];

   UIImage * image = [UIImage imageNamed:cardInfo.imageName];
   _featureImageSizeOptional = image.size;

   NSOperation * newNodeConstructionOperation = [self nodeConstructionOperationWithCardInfo:cardInfo image:image];

   _nodeConstructionOperation = newNodeConstructionOperation;
   [nodeConstructionQueue addOperation:newNodeConstructionOperation];
}


- (NSOperation *)nodeConstructionOperationWithCardInfo:(RainforestCardInfo *)cardInfo image:(UIImage *)image {



   return nil;
}


@end
