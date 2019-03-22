//
//  ViewController.m
//  Labb1
//
//  Created by Sandra Sundqvist on 2019-01-18.
//  Copyright © 2019 Sandra Sundqvist. All rights reserved.
//

#import "ViewController.h"
#import "Day.h"
#import "Animal.h"
#import "Cat.h"
#import "Dog.h"
@interface ViewController ()

@end

@implementation ViewController
{
    Day * selectedDay;
    NSUserDefaults *saveData;
    NSMutableDictionary *alreadyChecked;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dayPicker.dataSource =self;
    self.dayPicker.delegate  =self;
    
    saveData =[NSUserDefaults standardUserDefaults];
    _checkedKey = @"checked";
    alreadyChecked = [NSMutableDictionary new];
    _week = [[NSMutableArray alloc]initWithArray:[self getWeekDaysWithDefaultData]];
    
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return _week.count;
}

-(NSString *)pickerView : (UIPickerView * )pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    Day *d = _week[row];
    return d.name;
}

-(void) pickerView : (UIPickerView *) pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _animalSoundLabel.hidden =false;
    selectedDay =_week[row];
    NSMutableArray *savedTodos = [saveData objectForKey:selectedDay.name];
    
        if(savedTodos){
            if([[alreadyChecked objectForKey:selectedDay.name] isEqualToString:_checkedKey]){
                
            }else{
                for(NSString* todo in savedTodos){
                [selectedDay.toDos addObject: todo];
                }
            [alreadyChecked setObject: _checkedKey forKey: selectedDay.name];
            }
        }
    
    [self writeOutTodos:selectedDay];
    [self writeOutAnimalImageAndSound: selectedDay.animal];
};

- (IBAction)addButtonClicked:(id)sender {
    NSString * newTodo = self.todoTextInput.text;
    [selectedDay.toDos addObject: newTodo];
    
    [self writeOutTodos: selectedDay];
    [self save];
    
    self.todoTextInput.text=@"";
   
};

- (IBAction)allDoneButtonClicked:(id)sender {
    [selectedDay.toDos removeAllObjects];
    [self writeOutTodos:selectedDay];
    self.animalSoundLabel.text = selectedDay.animal.greetingSound;
    [self save];
}



-(void)writeOutTodos: (Day*)sDay{
    NSMutableString *dayTodos = [NSMutableString new];
    NSMutableString *allData = [NSMutableString new];
    
    int i = 1;
    for(NSString *todo in sDay.toDos){
        [dayTodos appendFormat: @"%d %@\n", i, todo];
        i++;
    }
    
    [allData appendFormat:@"%@\n\n%@", selectedDay.name, dayTodos];
    self.todosOutputView.text = allData;
    
};

-(void)writeOutAnimalImageAndSound: (Animal*)animal{
    self.imageView.image = animal.image;
    self.animalSoundLabel.text= animal.sound;
}

-(void)save{
    if([[alreadyChecked objectForKey:selectedDay.name] isEqualToString:_checkedKey]){
        [saveData setObject: selectedDay.toDos forKey: selectedDay.name];
   
    }else{
        [alreadyChecked setObject: _checkedKey forKey: selectedDay.name];
        [saveData setObject: selectedDay.toDos forKey: selectedDay.name];
    }
}

-(NSArray*)getWeekDaysWithDefaultData{
    
    Day *first = [[Day alloc]initWithNameAndDefaultAnimal:@"..."];
    Day *d1 = [[Day alloc]initWithNameAndAnimal:@"Monday" and:[[Dog alloc]initWithNameAndDefaultPicture:@"The monday Dog"]];
    Day *d2 = [[Day alloc]initWithNameAndAnimal:@"Tuesday" and:[[Cat alloc]initWithNameAndDefaultPicture:@"The Tuesday Cat"]];
    Day *d3 = [[Day alloc]initWithNameAndAnimal:@"Wednesday" and:[[Cat alloc]initWithNameAndDefaultPicture:@"Wednesday Cat"]];
    Day *d4 = [[Day alloc]initWithNameAndAnimal:@"Thursday" and:[[Animal alloc]initWithNameAndDefaultPicture:@"Thursday Animal"]];
    Day *d5 = [[Day alloc]initWithNameAndAnimal:@"Friday" and:[[Dog alloc]initWithNameAndDefaultPicture:@"Friday Dog"]];
    Day *d6 = [[Day alloc]initWithNameAndAnimal:@"Saturday" and:[[Animal alloc]initWithNameAndDefaultPicture:@"The Saturday Lion"]];
    Day *d7 = [[Day alloc]initWithNameAndAnimal:@"Sunday" and:[[Cat alloc]initWithNameAndDefaultPicture:@"Sunday Cat"]];
    
    NSArray *days =@[first,d1, d2, d3, d4, d5, d6,d7];
    return days;
}


@end
