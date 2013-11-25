//
//  ExampleCollectionViewController.m
//  LaunchPad Example App
//
//  Copyright (c) 2013 LaunchPad. All rights reserved.
//

#import "ExampleCollectionViewController.h"

@interface ExampleCollectionViewController ()

@end

@implementation ExampleCollectionViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.viewKey = @"ExampleCollectionViewController";
}

- (int)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (int)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1000;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"sampleCell"
                                                                           forIndexPath:indexPath];
    
    UILabel *label = (UILabel*)[cell viewWithTag:10];
    label.text = [NSString stringWithFormat:@"%i", indexPath.row];
    return cell;
}

@end
