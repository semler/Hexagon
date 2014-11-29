//
//  BaseViewController.h
//  Hexagon
//
//  Created by semler on 14-11-14.
//  Copyright (c) 2014年 semler. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OBShapedButton.h"

@interface BaseViewController : UIViewController

@property (strong, nonatomic) NSArray *array;
@property (strong, nonatomic) NSString *dungeon;

@property (weak, nonatomic) IBOutlet OBShapedButton *button11;
@property (weak, nonatomic) IBOutlet OBShapedButton *button12;
@property (weak, nonatomic) IBOutlet OBShapedButton *button13;
@property (weak, nonatomic) IBOutlet OBShapedButton *button14;
@property (weak, nonatomic) IBOutlet OBShapedButton *button15;

@property (weak, nonatomic) IBOutlet OBShapedButton *button21;
@property (weak, nonatomic) IBOutlet OBShapedButton *button22;
@property (weak, nonatomic) IBOutlet OBShapedButton *button23;
@property (weak, nonatomic) IBOutlet OBShapedButton *button24;
@property (weak, nonatomic) IBOutlet OBShapedButton *button25;
@property (weak, nonatomic) IBOutlet OBShapedButton *button26;

@property (weak, nonatomic) IBOutlet OBShapedButton *button31;
@property (weak, nonatomic) IBOutlet OBShapedButton *button32;
@property (weak, nonatomic) IBOutlet OBShapedButton *button33;
@property (weak, nonatomic) IBOutlet OBShapedButton *button34;
@property (weak, nonatomic) IBOutlet OBShapedButton *button35;
@property (weak, nonatomic) IBOutlet OBShapedButton *button36;
@property (weak, nonatomic) IBOutlet OBShapedButton *button37;

@property (weak, nonatomic) IBOutlet OBShapedButton *button41;
@property (weak, nonatomic) IBOutlet OBShapedButton *button42;
@property (weak, nonatomic) IBOutlet OBShapedButton *button43;
@property (weak, nonatomic) IBOutlet OBShapedButton *button44;
@property (weak, nonatomic) IBOutlet OBShapedButton *button45;
@property (weak, nonatomic) IBOutlet OBShapedButton *button46;
@property (weak, nonatomic) IBOutlet OBShapedButton *button47;
@property (weak, nonatomic) IBOutlet OBShapedButton *button48;

@property (weak, nonatomic) IBOutlet OBShapedButton *button51;
@property (weak, nonatomic) IBOutlet OBShapedButton *button52;
@property (weak, nonatomic) IBOutlet OBShapedButton *button53;
@property (weak, nonatomic) IBOutlet OBShapedButton *button54;
@property (weak, nonatomic) IBOutlet OBShapedButton *button55;
@property (weak, nonatomic) IBOutlet OBShapedButton *button56;
@property (weak, nonatomic) IBOutlet OBShapedButton *button57;
@property (weak, nonatomic) IBOutlet OBShapedButton *button58;
@property (weak, nonatomic) IBOutlet OBShapedButton *button59;

@property (weak, nonatomic) IBOutlet OBShapedButton *button62;
@property (weak, nonatomic) IBOutlet OBShapedButton *button63;
@property (weak, nonatomic) IBOutlet OBShapedButton *button64;
@property (weak, nonatomic) IBOutlet OBShapedButton *button65;
@property (weak, nonatomic) IBOutlet OBShapedButton *button66;
@property (weak, nonatomic) IBOutlet OBShapedButton *button67;
@property (weak, nonatomic) IBOutlet OBShapedButton *button68;
@property (weak, nonatomic) IBOutlet OBShapedButton *button69;

@property (weak, nonatomic) IBOutlet OBShapedButton *button73;
@property (weak, nonatomic) IBOutlet OBShapedButton *button74;
@property (weak, nonatomic) IBOutlet OBShapedButton *button75;
@property (weak, nonatomic) IBOutlet OBShapedButton *button76;
@property (weak, nonatomic) IBOutlet OBShapedButton *button77;
@property (weak, nonatomic) IBOutlet OBShapedButton *button78;
@property (weak, nonatomic) IBOutlet OBShapedButton *button79;

@property (weak, nonatomic) IBOutlet OBShapedButton *button84;
@property (weak, nonatomic) IBOutlet OBShapedButton *button85;
@property (weak, nonatomic) IBOutlet OBShapedButton *button86;
@property (weak, nonatomic) IBOutlet OBShapedButton *button87;
@property (weak, nonatomic) IBOutlet OBShapedButton *button88;
@property (weak, nonatomic) IBOutlet OBShapedButton *button89;

@property (weak, nonatomic) IBOutlet OBShapedButton *button95;
@property (weak, nonatomic) IBOutlet OBShapedButton *button96;
@property (weak, nonatomic) IBOutlet OBShapedButton *button97;
@property (weak, nonatomic) IBOutlet OBShapedButton *button98;
@property (weak, nonatomic) IBOutlet OBShapedButton *button99;

-(void)animation: (UIImageView *) imageView;

@end
