//
//  Commet.h
//  exercise5
//
//  Created by Treinamento on 05/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Commet : NSObject

@property (retain,nonatomic) NSNumber *coment_id;
@property (retain,nonatomic) NSData *date;
@property (retain,nonatomic) NSString *content;
@property (retain,nonatomic) NSURL *image;
@property (retain,nonatomic) NSString *user;


-(Commet *) initWithCommet:(NSNumber *) id_coment andData:(NSData *) date andContent:(NSString *) content andImage:(NSURL *) url andUser:(NSString *) user;


@end
