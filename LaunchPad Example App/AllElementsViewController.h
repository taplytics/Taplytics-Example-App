//
//  AllElementsViewController.h
//  LaunchPad Example App
//
//  Copyright (c) 2013 LaunchPad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AllElementsViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, weak) IBOutlet UIScrollView* scrollView;
@property (nonatomic, weak) IBOutlet UIPickerView* pickerView;
@property (nonatomic, weak) IBOutlet UIStepper* stepper;
@property (nonatomic, weak) IBOutlet UILabel* stepperLabel;

- (IBAction)alertViewButtonPressed:(id)sender;

- (IBAction)actionSheetButtonPressed:(id)sender;

- (IBAction)stepperValueChanged:(id)sender;

@end
