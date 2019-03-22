//
//  ViewController.h
//  Labb1
//
//  Created by Sandra Sundqvist on 2019-01-18.
//  Copyright © 2019 Sandra Sundqvist. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property(strong)NSString * checkedKey;
@property(strong)NSMutableArray *week;

@property (weak, nonatomic) IBOutlet UITextField *todoTextInput;
@property (weak, nonatomic) IBOutlet UIPickerView *dayPicker;
@property (weak, nonatomic) IBOutlet UILabel *todosOutputView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *animalSoundLabel;


- (IBAction)addButtonClicked:(id)sender;
- (IBAction)allDoneButtonClicked:(id)sender;

@end

