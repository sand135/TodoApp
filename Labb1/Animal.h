//
//  Animal.h
//  Labb1
//
//  Created by Sandra Sundqvist on 2019-01-22.
//  Copyright © 2019 Sandra Sundqvist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property (strong)NSString *name;
@property (strong) UIImage* image;

-(id)initWithNameAndDefaultPicture : (NSString*) n; 
-(id)initWithNameAndImage: (NSString*)n and: (UIImage*)i;

-(NSString*)sound;
-(NSString*)greetingSound;

@end

NS_ASSUME_NONNULL_END
