//
//  ViewController.swift
//  Layers
//
//  Created by René Cacheaux on 9/1/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import UIKit

class RainforestViewController: UICollectionViewController {
  let rainforestCardsInfo = RainforestCardInfo.getAllCardInfo()
  let nodeConstructionQueue = NSOperationQueue()
                            
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func collectionView(collectionView: UICollectionView,
      numberOfItemsInSection section: Int) -> Int {
    return rainforestCardsInfo.count
  }
  
  override func collectionView(collectionView: UICollectionView,
      cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell:RainforestCardCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as RainforestCardCell
        let cardInfo :RainforestCardInfo = rainforestCardsInfo[indexPath.item] as RainforestCardInfo;
        cell.configureCellDisplayWithCardInfo(cardInfo, nodeConstructionQueue: nodeConstructionQueue);
    //cell.configureCellDisplayWithCardInfo(cardInfo, nodeConstructionQueue: nodeConstructionQueue)
    return cell
  }
}
