//
//  FirstViewController.m
//  TabBarAppObjC
//
//  Created by Chandra Rao on 09/12/17.
//  Copyright © 2017 Chandra Rao. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    static NSString * cellIndentifier = @"SimpleTableViewCell";
    
    SimpleTableViewCell *cell = [self.tblViewList dequeueReusableCellWithIdentifier:cellIndentifier];
    
    if(cell == nil) {
        cell = [[SimpleTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier];
    }
    
    cell.lblTitle.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.tblViewList deselectRowAtIndexPath:indexPath animated:YES];
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
