//
//  Cat.m
//  Labb1
//
//  Created by Sandra Sundqvist on 2019-01-23.
//  Copyright © 2019 Sandra Sundqvist. All rights reserved.
//

#import "Cat.h"
#import "ViewController.h"

@implementation Cat

-(id)initWithNameAndDefaultPicture:(NSString *)n{
    UIImage * image =[UIImage imageNamed: @"cat.jpeg"];
    self = [super initWithNameAndImage:n and:image];
    return self;
};

-(NSString*)sound{
    return @"Mjaauu!";
}

-(NSString*)greetingSound{
    return @"Good job!";
}
@end
