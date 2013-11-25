//
//  AllElementsViewController.m
//  LaunchPad Example App
//
//  Copyright (c) 2013 LaunchPad. All rights reserved.
//

#import "AllElementsViewController.h"

@interface AllElementsViewController ()

@property (nonatomic, strong) NSArray* pickerComponents;

@end

@implementation AllElementsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pickerComponents = @[@"Calgary", @"Vancouver", @"Toronto", @"Montreal", @"Ottawa"];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.viewKey = @"AllElementsViewController";
    _scrollView.contentSize = CGSizeMake(320.0, 970.0);
    [_pickerView selectRow:2 inComponent:0 animated:NO];
}

- (void)alertViewButtonPressed:(id)sender {
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Test Alert View"
                                                        message:@"This is a cool message"
                                                       delegate:nil
                                              cancelButtonTitle:@"No Dice."
                                              otherButtonTitles:@"Ok", nil];
    alertView.elementKey = @"alertView";
    [self.view addSubview:alertView];
    [alertView show];
}

- (void)actionSheetButtonPressed:(id)sender {
    UIActionSheet* actionSheet = [[UIActionSheet alloc] initWithTitle:@"Test Action Sheet"
                                                             delegate:nil
                                                    cancelButtonTitle:@"Not This Time!"
                                               destructiveButtonTitle:@"Destroy Me!"
                                                    otherButtonTitles:@"Button 1", @"Button 2", nil];
    actionSheet.elementKey = @"actionSheet";
    [actionSheet showInView:self.view];
}

- (void)stepperValueChanged:(id)sender {
    _stepperLabel.text = @(_stepper.value).stringValue;
}

#pragma mark - UIPickerViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return _pickerComponents.count;
}

#pragma mark - UIPickerViewDelegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (row < _pickerComponents.count)
        return _pickerComponents[row];
    else
        return nil;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
}

@end
