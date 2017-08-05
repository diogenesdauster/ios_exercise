//
//  ViewController.m
//  exercise4
//
//  Created by Treinamento on 05/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (retain,nonatomic) NSDictionary *weeks;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.weeks = @{
                   @"WeeksDay" :@[@"Monday",@"Tuesday",@"Wednesday",@"Thrusday",@"Friday"],
                   @"WeeksEnds":@[@"Sunday",@"Saturday"]
                };
    
    //retira as linhas em branco do final da table view
    self.myTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return self.weeks.allKeys.count;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *week  = self.weeks.allKeys[section];
    return [self.weeks[week] count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"celula" forIndexPath:indexPath];
    
    
    NSString *section = self.weeks.allKeys[indexPath.section];
    NSString *row     = self.weeks[section][indexPath.row];
    
    cell.textLabel.text = row;
    
    return cell;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *week = self.weeks.allKeys[section];
    return week;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *section = self.weeks.allKeys[indexPath.section];
    NSString *row     = self.weeks[section][indexPath.row];
    
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:section
                                                                   message:row
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
}

 @end

