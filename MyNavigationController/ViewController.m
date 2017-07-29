//
//  ViewController.m
//  MyNavigationController
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "RosaViewController.h"
#import "GreenViewController.h"
#import "AzulViewController.h"

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




-(BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if([identifier isEqualToString:@"SegueAzul"]){
        if(1 == 1){
            return NO;
        }else{
            return YES;
        }
    }
    
    return YES;
}

 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
     
     if([segue.identifier isEqualToString:@"SegueRosa"]){
         RosaViewController *rosa = [segue destinationViewController];
         rosa.rosa =@"Nois é Bom!! ROSA";
     }else if([segue.identifier isEqualToString:@"SegueVerde"]){
         GreenViewController *verde = [segue destinationViewController];
         verde.verde =@"Nois é Bom!! VERDE";
     }else{
         AzulViewController *azul = [segue destinationViewController];
         azul.azul =@"Nois é Bom!! AZUL";
     }
     
 }


@end
