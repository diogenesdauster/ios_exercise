//
//  ListViewController.h
//  coredata
//
//  Created by Treinamento on 19/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product+CoreDataClass.h"

@interface ListViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) Product *selectProd;
@property (strong, nonatomic) UIImagePickerController *imagePicker;

@end
