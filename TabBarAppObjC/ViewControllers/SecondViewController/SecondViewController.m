//
//  SecondViewController.m
//  TabBarAppObjC
//
//  Created by Chandra Rao on 09/12/17.
//  Copyright © 2017 Chandra Rao. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 50;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *strIdentifier = @"SimpleCollectionViewCell";
    
    SimpleCollectionViewCell *cell = (SimpleCollectionViewCell *)[self.collectionViewList dequeueReusableCellWithReuseIdentifier:strIdentifier forIndexPath:indexPath];

    if (indexPath.row %2 ==0) {
        cell.contentView.backgroundColor = [UIColor redColor];
    } else if (indexPath.row %3 ==0) {
        cell.contentView.backgroundColor = [UIColor cyanColor];
    } else {
        cell.contentView.backgroundColor = [UIColor greenColor];
    }
    
    cell.lblTitle.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.collectionViewList deselectItemAtIndexPath:indexPath animated:true];
    [self showAlert:@"Alert!" withMessage:[NSString stringWithFormat:@"%ld",(long)indexPath.row]];

}

- (void)showAlert:(NSString *)strTitle withMessage:(NSString *)strMessage {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:strTitle message:strMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:^{
        
    }];
    
}

@end
