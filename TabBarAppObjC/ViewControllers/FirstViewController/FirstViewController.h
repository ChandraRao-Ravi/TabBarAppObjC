//
//  FirstViewController.h
//  TabBarAppObjC
//
//  Created by Chandra Rao on 09/12/17.
//  Copyright © 2017 Chandra Rao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimpleTableViewCell.h"

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tblViewList;

@end

