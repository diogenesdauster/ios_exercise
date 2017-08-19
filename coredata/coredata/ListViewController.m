//
//  ListViewController.m
//  coredata
//
//  Created by Treinamento on 19/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ListViewController.h"
#import "Product+CoreDataClass.h"
#import "Picture+CoreDataClass.h"

@interface ListViewController ()


@property (strong ,nonatomic) NSArray *allProdcuts;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.allProdcuts = [Product allProducts];
    [self.myTableView reloadData];
}

- (void)viewWillAppear:(BOOL)animated{
    self.allProdcuts = [Product allProducts];
    [self.myTableView reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.allProdcuts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                                    reuseIdentifier:@"cell"] ;
    
    Product *prod = self.allProdcuts[indexPath.row];
    
    cell.textLabel.text = prod.name;
    //cell.detailTextLabel.text = prod.brand;
    
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (IBAction)takePicture:(id)sender {
    UIView *view = sender;
    
    while (![view isKindOfClass:[UITableViewCell class]]) {
        view = [view superview];
    }
    
    NSIndexPath *indexPath = [self.myTableView indexPathForCell:(UITableViewCell *)view];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Aviso" message:@"Escolha uma das Opções" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *cameraAction = [UIAlertAction actionWithTitle:@"Camera" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.imagePicker =  [[UIImagePickerController alloc] init];
        self.imagePicker.delegate = self;
        self.imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        [self presentViewController:self.imagePicker animated:YES completion:nil];
    }];
    
    UIAlertAction *galeriaAction = [UIAlertAction actionWithTitle:@"Galeria" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.imagePicker =  [[UIImagePickerController alloc] init];
        self.imagePicker.delegate = self;
        self.imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        [self presentViewController:self.imagePicker animated:YES completion:nil];
    }];
    
    
    [alert addAction:cameraAction];
    [alert addAction:galeriaAction];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
}

- (void) imagePickerControllerDidCancel: (UIImagePickerController *) picker {
    [picker.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

// For responding to the user accepting a newly-captured picture or movie
- (void) imagePickerController: (UIImagePickerController *) picker didFinishPickingMediaWithInfo: (NSDictionary *) info {
    
    UIImage *originalImage, *editedImage, *imageToSave;
    
    // Handle a still image capture
    editedImage = (UIImage *) info[UIImagePickerControllerEditedImage];
    originalImage = (UIImage *) info[UIImagePickerControllerOriginalImage];
    
    if (editedImage) {
        imageToSave = editedImage;
    } else {
        imageToSave = originalImage;
    }
    
    // Save the new image (original or edited) to the Camera Roll
    if (picker.sourceType == UIImagePickerControllerSourceTypeCamera)
        UIImageWriteToSavedPhotosAlbum (imageToSave, nil, nil , nil);
    
    UIImage *image = imageToSave;
    NSDictionary *dic = @{@"imagem": image, @"produto": self.selectProd};
    [Picture newPic:dic];
    
    [picker.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
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
