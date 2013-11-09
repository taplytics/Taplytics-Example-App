//
//  ExampleCollectionViewController.m
//  LaunchPad Example App
//
//  Created by Aaron Glazer on 10/26/2013.
//  Copyright (c) 2013 LaunchPad. All rights reserved.
//

#import "ExampleCollectionViewController.h"

@interface ExampleCollectionViewController ()

@end

@implementation ExampleCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated {
    [[LaunchPadManager sharedManager] setupViewController:self forViewKey:@"collectionView"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(int)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1000;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"sampleCell" forIndexPath:indexPath];
    
    UILabel *label = (UILabel*)[cell viewWithTag:10];
    label.text = [NSString stringWithFormat:@"%i", indexPath.row];
    
    return cell;
}

@end
