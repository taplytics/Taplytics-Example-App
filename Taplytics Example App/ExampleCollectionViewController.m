//
//  ExampleCollectionViewController.m
//  LaunchPad Example App
//
//  Copyright (c) 2013 Taplytics. All rights reserved.
//

#import "ExampleCollectionViewController.h"

@interface ExampleCollectionViewController ()

@end

@implementation ExampleCollectionViewController

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1000;
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"sampleCell"
                                                                           forIndexPath:indexPath];
    
    UILabel *label = (UILabel*)[cell viewWithTag:10];
    label.text = [NSString stringWithFormat:@"%li", (long)indexPath.row];
    return cell;
}

@end
