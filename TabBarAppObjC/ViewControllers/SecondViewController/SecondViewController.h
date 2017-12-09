//
//  SecondViewController.h
//  TabBarAppObjC
//
//  Created by Chandra Rao on 09/12/17.
//  Copyright © 2017 Chandra Rao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimpleCollectionViewCell.h"

@interface SecondViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionViewList;

@end

