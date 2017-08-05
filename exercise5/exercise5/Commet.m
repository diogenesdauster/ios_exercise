//
//  Commet.m
//  exercise5
//
//  Created by Treinamento on 05/08/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "Commet.h"

@implementation Commet

-(Commet *) initWithCommet:(NSNumber *) id_coment andData:(NSData *) date andContent:(NSString *) content andImage:(NSURL *) url andUser:(NSString *) user{
    self = [super init];

    self.coment_id = id_coment;
    self.date = date;
    self.content = content;
    self.image = url;
    self.user = user;
    
    return self;
}

@end
