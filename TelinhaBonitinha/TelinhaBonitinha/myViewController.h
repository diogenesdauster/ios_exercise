//
//  myViewController.h
//  TelinhaBonitinha
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"

@interface myViewController : ViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,retain) NSArray *weeks;

@property (nonatomic,retain) NSArray *dados;

@property (weak, nonatomic) IBOutlet UITableView *myTableViiew;

@end
