//
//  ViewController.m
//  FirstProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

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

- (IBAction)changeLabel:(id)sender {
    
    self.myLabel.text =@"Tu é Bom";
    
}


- (IBAction)changeNewLabel:(id)sender {
    
    [self changeStringWith:self.myLabel.text];
    
}

- (void) changeStringWith:(NSString *) text{
    NSString *newString = [NSString stringWithFormat:@"O nome é :%@",text];
    
    self.myNewLabel.text = newString;
    
    [self changeStringWith:text andText:@" aula !!"];
}

- (void) changeStringWith:(NSString *) text1 andText:(NSString *) text2 {
    NSString *newString = [NSString stringWithFormat:@"O nome é :%@ e tal %@",text1,text2];
    
    self.myLabel.text = newString;
}


- (IBAction)changeStringLabelButtonOne:(id)sender {
    
    [self.myFirtButton setTitle:@"Eita Carai" forState:UIControlStateNormal];
    
}

- (IBAction)callViewController:(id)sender {
    SecondViewController *sec = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    sec.nome = @"Qualquer Coisa";
    sec.myArray = @[@"nois é bom",@"tu é bom",@"ele é bom"];
    
    [self presentViewController:sec animated:YES completion:nil];
    
    
}


@end
