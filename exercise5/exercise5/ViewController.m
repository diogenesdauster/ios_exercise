//
//  ViewController.m
//  exercise5
//
//  Created by Treinamento on 05/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "Commet.h"
#import <UIImageView+AFNetworking.h>
#import "CustomTableViewCell.h"


@interface ViewController ()

@property (retain,nonatomic) NSMutableArray *comments;
@property (retain,nonatomic) AFHTTPRequestOperationManager *afManager;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.comments = [NSMutableArray array];
    self.myTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    self.afManager	= [AFHTTPRequestOperationManager manager];
    
    [self.afManager	GET:@"https://teste-aula-ios.herokuapp.com/comments.json"
      parameters:nil
         success:^(AFHTTPRequestOperation	*operation,	id responseObject)	{
             
             self.comments = responseObject;
             [self.myTableView reloadData];
             
             NSLog(@"JSON:	%@",	responseObject);
         }				failure:^(AFHTTPRequestOperation	*operation,	NSError	*error)	{
             //NSLog(@"Error:	%@",	error);
         }];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.comments.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
     CustomTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSString *content   = self.comments[indexPath.row][@"content"];
    NSString *image     = self.comments[indexPath.row][@"image"];
    NSString *dataa      = self.comments[indexPath.row][@"created_at"];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    NSDate *dateFromString = [dateFormatter dateFromString:dataa];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateString = [dateFormatter stringFromDate:dateFromString];
    
    NSLog(@"%@",dateString);

//    NSDate *currDate = [NSDate date];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
//    [dateFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'SSS'Z'"];
//    NSString *dateString = [dateFormatter stringFromDate:currDate];
//    NSLog(@"%@",dateString);
    
    
    cell.nome.text = content;
    cell.comentario.text = content;
    cell.data.text = dateString;
    
    [cell.imagem setImageWithURL:[NSURL URLWithString:image]];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
