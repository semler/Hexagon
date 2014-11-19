//
//  PurchaseManager.h
//  Hexagon
//
//  Created by semler on 14-11-14.
//  Copyright (c) 2014年 semler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PurchaseManager : NSObject

+ (PurchaseManager *)sharedManager;

- (void) showAleart;

- (void) restore;

@end
