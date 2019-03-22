//
//  Day.m
//  Labb1
//
//  Created by Sandra Sundqvist on 2019-01-21.
//  Copyright © 2019 Sandra Sundqvist. All rights reserved.
//

#import "Day.h"

@implementation Day


-(id)initWithNameAndDefaultAnimal: (NSString*)n{
    self = [super init];
    if(self){
        self.name = n;
        self.animal =[[Animal alloc]initWithNameAndDefaultPicture:@"defaultAnimal"];
        self.toDos =[NSMutableArray new];
    }
    return self;
};

-(id)initWithNameAndAnimal:(NSString *)n and:(Animal *)a{
    self = [super init];
    if(self){
        self.name = n;
        self.animal = a;
        self.toDos =[NSMutableArray new]; 
    }
    return self;
};



@end
