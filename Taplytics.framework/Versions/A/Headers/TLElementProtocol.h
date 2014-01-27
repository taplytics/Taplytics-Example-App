//
//  TLElementProtocol.h
//  Taplytics
//
//  Copyright (c) 2014 Syrp Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TLElementProtocol <NSObject>

@required

@property (nonatomic, strong) NSString* elementKey;
@property (nonatomic, strong) NSString* styleKey;
@property (nonatomic, strong) NSString* stateName;
@property (nonatomic, strong) NSMutableDictionary* origProperties;
@property (nonatomic) BOOL isSettingProperties;

- (void)setupWithElementKey:(NSString*)elementKey styleKey:(NSString*)styleKey;

- (void)setElementState:(NSString*)stateName;

- (id)getOrigPropertyValueForKey:(NSString*)key;

- (void)setOrigPropertyValue:(id)value forKey:(NSString*)key;

@optional

- (BOOL)setElementPropertyforKey:(NSString*)key value:(id)value;

@end
