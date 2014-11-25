//
//  CollectionNode.m
//  Layers
//
//  Created by djzhang on 11/25/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

#import "CollectionNode.h"
#import "RainforestCardInfo.h"
#import "FrameCalculator.h"
#import "AnimatedContentsDisplayLayer.h"
#import "GradientNode.h"
#import "Foundation.h"
#import "UIImage+ImageEffects.h"


@implementation CollectionNode

- (instancetype)initWithImage:(UIImage *)image cardInfo:(RainforestCardInfo *)cardInfo {
   self = [super initWithLayerClass:[AnimatedContentsDisplayLayer class]];
   if (self) {
      self.image = image;
      self.cardInfo = cardInfo;
      [self makeBackgroundImageNode];
      [self initContentNode];
      [self setupContainerNode];
      [self addAllSubNodes];
      [self layoutNode];
   }

   return self;
}


- (CGSize)calculateSizeThatFits:(CGSize)constrainedSize {
   return CGSizeZero;
}


- (void)initContentNode {
   self.layerBacked = true;
   self.shouldRasterizeDescendants = true;
   self.borderColor = [UIColor colorWithHue:0
                                 saturation:0
                                 brightness:0.85
                                      alpha:0.2].CGColor;
   self.borderWidth = 1;
}


- (void)layout {

   NSString * debug = @"debug";
}


- (void)makeBackgroundImageNode {
   ASImageNode * backgroundImageNode = [[ASImageNode alloc] init];
   backgroundImageNode.image = self.image;
   backgroundImageNode.contentMode = UIViewContentModeScaleAspectFill;
   backgroundImageNode.layerBacked = true;


   asimagenode_modification_block_t modificationBlock = ^UIImage *(UIImage * image) {
       BOOL (^didCancelBlur)() = ^BOOL {
           __block BOOL isCancelled = YES;
           ASImageNode * strongBackgroundImageNode = backgroundImageNode;

           dispatch_block_t isCancelledClosure = ^{
               isCancelled = [strongBackgroundImageNode preventOrCancelDisplay];;
           };
           if ([NSThread isMainThread]) {
              isCancelledClosure();
           } else {
              dispatch_sync(dispatch_get_main_queue(), isCancelledClosure);
           }
           return isCancelled;
       };
       UIImage * blurredImage = [image applyBlurWithRadius:30 tintColor:[UIColor colorWithWhite:0.5 alpha:0.3]
                                     saturationDeltaFactor:1.8
                                                 maskImage:nil
                                                 didCancel:didCancelBlur];
       if (blurredImage)
          return blurredImage;

       return image;
   };
   backgroundImageNode.imageModificationBlock = modificationBlock;

   self.backgroundImageNode = backgroundImageNode;
}


- (void)layoutNode {
   //MARK: Node Layout Section
   self.frame = [FrameCalculator frameForContainer:self.image.size];
   self.backgroundImageNode.frame = [FrameCalculator frameForBackgroundImage:self.bounds];
   self.featureImageNode.frame = [FrameCalculator frameForFeatureImage:self.image.size
                                                   containerFrameWidth:self.frame.size.width];
   self.titleTextNode.frame = [FrameCalculator frameForTitleText:self.bounds
                                               featureImageFrame:self.featureImageNode.frame];

   self.descriptionTextNode.frame = [FrameCalculator frameForDescriptionText:self.bounds
                                                           featureImageFrame:self.featureImageNode.frame];
   self.gradientNode.frame = [FrameCalculator frameForGradient:self.featureImageNode.frame];
}


- (ASDisplayNode *)setupContainerNode {
   ASImageNode * featureImageNode = [[ASImageNode alloc] init];
   featureImageNode.layerBacked = true;
   featureImageNode.contentMode = UIViewContentModeScaleAspectFit;// .ScaleAspectFit
   featureImageNode.image = self.image;

   ASTextNode * titleTextNode = [[ASTextNode alloc] init];
   titleTextNode.layerBacked = true;
   titleTextNode.backgroundColor = [UIColor clearColor];
   titleTextNode.attributedString = [NSAttributedString attributedStringForTitleText:self.cardInfo.name];


   ASTextNode * descriptionTextNode = [[ASTextNode alloc] init];
   descriptionTextNode.layerBacked = true;
   descriptionTextNode.backgroundColor = [UIColor clearColor];
   descriptionTextNode.attributedString =
    [NSAttributedString attributedStringForDescriptionText:self.cardInfo.descriptionValue];

   GradientNode * gradientNode = [[GradientNode alloc] init];
   gradientNode.opaque = false;
   gradientNode.layerBacked = true;

   //MARK: Container Node Creation Section
   self.gradientNode = gradientNode;
   self.featureImageNode = featureImageNode;
   self.titleTextNode = titleTextNode;
   self.descriptionTextNode = descriptionTextNode;

   return self;
}


//MARK: Node Hierarchy Section
- (void)addAllSubNodes {
   [self addSubnode:self.backgroundImageNode];
   [self addSubnode:self.featureImageNode];
   [self addSubnode:self.gradientNode];
   [self addSubnode:self.titleTextNode];
   [self addSubnode:self.descriptionTextNode];
}


@end
