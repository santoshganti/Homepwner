//
//  BNRImageStore.m
//  Homepwner
//
//  Created by Santosh Ganti on 2/21/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNRImageStore.h"

@interface BNRImageStore()

@property (nonatomic,strong) NSMutableDictionary *dictionary;

@end

@implementation BNRImageStore

+(instancetype)shareadStore
{
    static BNRImageStore *sharedStore;
    
    if(!sharedStore)
    {
        sharedStore = [[self alloc] init];
    }
    return sharedStore;
}

//No one should call init
-(instancetype)init
{
    [NSException raise:@"Singleton"
                format:@"Use +[BNRImageStore sharedstore]"];
    return nil;
}

//Secret designated initializer
-(instancetype)initPrivate
{
    self = [super init];
    if(self)
    {
        _dictionary = [[NSMutableDictionary alloc] init];
    }
    return self;
}


-(void)setImage: (UIImage *)image forKey:(NSString *)key
{
    [self.dictionary setObject:image forKey:key];
}

-(UIImage *)imageForKey:(NSString *)key
{
    return [self.dictionary objectForKey:key];
}

-(void)deleteImageKey: (NSString *)key
{
    if(!key)
    {
        return;
    }
    
    [self.dictionary removeObjectForKey:key];
}

@end
