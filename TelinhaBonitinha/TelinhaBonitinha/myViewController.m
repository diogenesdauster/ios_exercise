//
//  myViewController.m
//  TelinhaBonitinha
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "myViewController.h"
#import "CustomTableViewCell.h"

@interface myViewController ()

@end

@implementation myViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dados = @[@{@"nome":@"Josefh Clibber",@"email":@"Josefh.Clibber@gmail.com",@"rua":@"Rua sem Nome",@"Guadalarara":@""}];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dados.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    /*
    NSString *identificador = @"redCell";
    
    if(indexPath.row % 2 == 0){
        identificador = @"orangeCell";
    }
   
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:identificador forIndexPath:indexPath];*/
    
    
    
    
    CustomTableViewCell *customCell =  [tableView dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:indexPath];
    

    
//    customCell.nomeLabel.text  = @"Ana Beatiz";
//    customCell.emailLabel.text = @"ana.beatriz@gmail.com";
//    customCell.ruaLabel.text   = @"Lake's Car Street";
//    customCell.paisLabel.text  = @"Lake's Car Country";
    
    customCell.nomeLabel.text  = self.dados[indexPath.row][@"nome"];
    customCell.emailLabel.text = self.dados[indexPath.row][@"email"];
    customCell.ruaLabel.text   = self.dados[indexPath.row][@"rua"];
    customCell.paisLabel.text  = self.dados[indexPath.row][@"pais"];

    
    //cell.textLabel.text = self.weeks[indexPath.row];
    
    //return cell;
    return customCell;
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
