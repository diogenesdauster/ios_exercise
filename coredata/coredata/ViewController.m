//
//  ViewController.m
//  coredata
//
//  Created by Treinamento on 19/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "Product+CoreDataClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
    NSDictionary *dic = @{@"name":self.name.text,
                          @"brand":self.brand.text,
                          @"quantity":self.quantity.text};
    
    [Product newProduct:dic];
    
    self.name.text = @"";
    self.brand.text = @"";
    self.quantity.text = @"";
    
    [self.brand becomeFirstResponder];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.view endEditing:YES];
    
    return YES;
}

@end
