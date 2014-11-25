//
//  RainforestCardCell.swift
//  Layers
//
//  Created by René Cacheaux on 9/1/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import UIKit

class RainforestCardCell: UICollectionViewCell {
  var featureImageSizeOptional: CGSize?
  var placeholderLayer: CALayer!
  var contentLayer: CALayer?
  var containerNode: ASDisplayNode?
  var nodeConstructionOperation: NSOperation?
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    placeholderLayer = CALayer()
    placeholderLayer.contents = UIImage(named: "cardPlaceholder")!.CGImage
    placeholderLayer.contentsGravity = kCAGravityCenter
    placeholderLayer.contentsScale = UIScreen.mainScreen().scale
    placeholderLayer.backgroundColor = UIColor(hue: 0, saturation: 0, brightness: 0.85, alpha: 1).CGColor
    contentView.layer.addSublayer(placeholderLayer)
  }

  //MARK: Layout
  override func sizeThatFits(size: CGSize) -> CGSize {
    if let featureImageSize = featureImageSizeOptional {
      return FrameCalculator.sizeThatFits(size, withImageSize: featureImageSize)
    } else {
      return CGSizeZero
    }
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    CATransaction.begin()
    CATransaction.setValue(kCFBooleanTrue, forKey: kCATransactionDisableActions)
    placeholderLayer?.frame = bounds
    CATransaction.commit()
  }
  
  //MARK: Cell Reuse
  override func prepareForReuse() {
    super.prepareForReuse()
    
    if let operation = nodeConstructionOperation {
      operation.cancel()
    }
    
    containerNode?.recursiveSetPreventOrCancelDisplay(true)
    contentLayer?.removeFromSuperlayer()
    contentLayer = nil
    containerNode = nil
  }
  
  //MARK: Cell Content
  func configureCellDisplayWithCardInfo(cardInfo: RainforestCardInfo,
      nodeConstructionQueue: NSOperationQueue)  {
    if let oldNodeConstructionOperation = nodeConstructionOperation {
      oldNodeConstructionOperation.cancel()
    }
    
    //MARK: Image Size Section
    let image = UIImage(named: cardInfo.imageName)!
    featureImageSizeOptional = image.size
    
    let newNodeConstructionOperation = nodeConstructionOperationWithCardInfo(cardInfo, image: image)
    nodeConstructionOperation = newNodeConstructionOperation
    nodeConstructionQueue.addOperation(newNodeConstructionOperation)
  }
  
  func nodeConstructionOperationWithCardInfo(cardInfo: RainforestCardInfo, image: UIImage) -> NSOperation {
    let nodeConstructionOperation = NSBlockOperation()
    nodeConstructionOperation.addExecutionBlock {
      [weak self, unowned nodeConstructionOperation] in
      
      if nodeConstructionOperation.cancelled {
        return
      }
      if let strongSelf = self {
        let containerNode = CollectionNode(image: image, cardInfo: cardInfo);
        
        //MARK: Node Creation Section
        let backgroundImageNode = containerNode.backgroundImageNode
        backgroundImageNode.imageModificationBlock = { [weak backgroundImageNode] input in
          if input == nil {
            return input
          }
          let didCancelBlur: () -> Bool = {
            var isCancelled = true
            if let strongBackgroundImageNode = backgroundImageNode {
              let isCancelledClosure = {
                isCancelled = strongBackgroundImageNode.preventOrCancelDisplay
              }
              if NSThread.isMainThread() {
                isCancelledClosure()
              } else {
                dispatch_sync(dispatch_get_main_queue(), isCancelledClosure)
              }
            }
            return isCancelled
          }
          if let blurredImage = input.applyBlurWithRadius(30, tintColor: UIColor(white: 0.5, alpha: 0.3),
            saturationDeltaFactor: 1.8, maskImage: nil,
            didCancel:didCancelBlur) {
              return blurredImage
          } else {
            return image
          }
        }

        if nodeConstructionOperation.cancelled {
          return
        }
        
        dispatch_async(dispatch_get_main_queue()) { [weak nodeConstructionOperation] in
          if let strongNodeConstructionOperation = nodeConstructionOperation {
            if strongNodeConstructionOperation.cancelled {
              return
            }
            if strongSelf.nodeConstructionOperation !== strongNodeConstructionOperation {
              return
            }
            if containerNode.preventOrCancelDisplay {
              return
            }
            //MARK: Node Layer and Wrap Up Section
            strongSelf.contentView.layer.addSublayer(containerNode.layer)
            containerNode.setNeedsDisplay()
            strongSelf.contentLayer = containerNode.layer
            strongSelf.containerNode = containerNode
          }
        }
      }
    }
    return nodeConstructionOperation
  }
  
}
