//
//  Day.h
//  Labb1
//
//  Created by Sandra Sundqvist on 2019-01-21.
//  Copyright © 2019 Sandra Sundqvist. All rights reserved.
//

#import <Foundation/Foundation.h>
#import"Animal.h"


@interface Day : NSObject

@property (strong) NSString *name;
@property (strong)NSMutableArray *toDos;
@property (strong)Animal *animal;

-(id)initWithNameAndDefaultAnimal: (NSString*)n;

-(id)initWithNameAndAnimal: (NSString*)n and: (Animal*)a;


@end


