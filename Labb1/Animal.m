//
//  Animal.m
//  Labb1
//
//  Created by Sandra Sundqvist on 2019-01-22.
//  Copyright © 2019 Sandra Sundqvist. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(id)initWithNameAndDefaultPicture:(NSString *)n{
    UIImage *image = [UIImage imageNamed: @"Lion.jpeg"];
    self=[self initWithNameAndImage:n and: image];
    return self;
};


-(id)initWithNameAndImage:(NSString *)n and:(UIImage *)i{
    self= [super init];
    if(self){
        self.name= n;
        self.image = i;
    }
    return self; 
}

-(NSString*)sound{
    return @"Rooaa! Get started!";
}
-(NSString*)greetingSound{
    return @"Nicely done!";
}

@end
