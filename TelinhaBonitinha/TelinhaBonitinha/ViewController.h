//
//  ViewController.h
//  TelinhaBonitinha
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *myButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegmento;
@property (weak, nonatomic) IBOutlet UISlider *mySlice;
@property (weak, nonatomic) IBOutlet UITextField *myField1;
@property (weak, nonatomic) IBOutlet UITextField *myField2;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

