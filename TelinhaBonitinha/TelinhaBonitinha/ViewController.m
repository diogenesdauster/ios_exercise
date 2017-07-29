//
//  ViewController.m
//  TelinhaBonitinha
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)showHiddenButton:(UISegmentedControl *)sender {
    
    if(sender.selectedSegmentIndex == 0){
        self.myButton.hidden = YES;
    }else{
        self.myButton.hidden = NO;
    }
    
}

- (IBAction)showValue:(UISlider *)sender {
    
    self.myLabel.text = [NSString stringWithFormat:@"%2.f",sender.value];
    
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [self.view endEditing:YES];
    return YES;
}


@end
