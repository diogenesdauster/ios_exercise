//
//  RosaViewController.m
//  MyNavigationController
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "RosaViewController.h"

@interface RosaViewController ()

@end

@implementation RosaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.rosaLabel.text = self.rosa;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
