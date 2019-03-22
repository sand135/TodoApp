//
//  Dog.m
//  Labb1
//
//  Created by Sandra Sundqvist on 2019-01-23.
//  Copyright © 2019 Sandra Sundqvist. All rights reserved.
//

#import "Dog.h"
#import "Animal.h"
@implementation Dog


-(id)initWithNameAndDefaultPicture:(NSString *)n{
    UIImage *image = [UIImage imageNamed:@"hund.jpg"];
    self = [super initWithNameAndImage:n and:image];
    return self;
}


-(NSString*)sound{
    return @"Whoff! You can do it!"; 
}

-(NSString*)greetingSound{
    return @"Nice!";
}
@end
