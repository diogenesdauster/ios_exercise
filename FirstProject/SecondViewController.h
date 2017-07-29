//
//  SecondViewController.h
//  FirstProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"

@interface SecondViewController : ViewController <UITextFieldDelegate>

@property (nonatomic, strong) NSString *nome;
@property (nonatomic, strong) NSArray *myArray;

@property (weak, nonatomic) IBOutlet UILabel *my2Label;

@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtSenha;


@end
