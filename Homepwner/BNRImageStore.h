//
//  BNRImageStore.h
//  Homepwner
//
//  Created by Santosh Ganti on 2/21/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BNRImageStore : NSObject

+(instancetype)shareadStore;

-(void)setImage: (UIImage *)image forKey:(NSString *)key;
-(UIImage *)imageForKey:(NSString *)key;
-(void)deleteImageKey: (NSString *)key;

@end
