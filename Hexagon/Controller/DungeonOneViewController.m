//
//  DungeonOneViewController.m
//  Hexagon
//
//  Created by semler on 14-11-14.
//  Copyright (c) 2014年 semler. All rights reserved.
//

#import "DungeonOneViewController.h"

@interface DungeonOneViewController ()

@end

@implementation DungeonOneViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.dungeon = @"dungeon_one";
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //初始化status
    self.button11.status = 0;
    self.button12.status = 0;
    self.button13.status = 0;
    self.button14.status = 2;
    self.button15.status = 0;
    
    self.button21.status = 0;
    self.button22.status = 0;
    self.button23.status = 0;
    self.button24.status = 0;
    self.button25.status = 2;
    self.button26.status = 0;
    
    self.button31.status = 0;
    self.button32.status = 2;
    self.button33.status = 0;
    self.button34.status = 0;
    self.button35.status = 0;
    self.button36.status = 0;
    self.button37.status = 2;
    
    self.button41.status = 0;
    self.button42.status = 0;
    self.button43.status = 0;
    self.button44.status = 0;
    self.button45.status = 0;
    self.button46.status = 0;
    self.button47.status = 0;
    self.button48.status = 0;
    
    self.button51.status = 2;
    self.button52.status = 0;
    self.button53.status = 0;
    self.button54.status = 0;
    self.button55.status = 12;
    self.button56.status = 0;
    self.button57.status = 0;
    self.button58.status = 0;
    self.button59.status = 0;
    
    self.button62.status = 2;
    self.button63.status = 0;
    self.button64.status = 0;
    self.button65.status = 0;
    self.button66.status = 0;
    self.button67.status = 0;
    self.button68.status = 0;
    self.button69.status = 0;
    
    self.button73.status = 2;
    self.button74.status = 0;
    self.button75.status = 0;
    self.button76.status = 0;
    self.button77.status = 0;
    self.button78.status = 0;
    self.button79.status = 0;
    
    self.button84.status = 0;
    self.button85.status = 2;
    self.button86.status = 0;
    self.button87.status = 0;
    self.button88.status = 0;
    self.button89.status = 0;
    
    self.button95.status = 0;
    self.button96.status = 0;
    self.button97.status = 0;
    self.button98.status = 0;
    self.button99.status = 0;
    
    //初始化arrow
    self.button11.arrow = 0;
    self.button12.arrow = 0;
    self.button13.arrow = 0;
    self.button14.arrow = 0;
    self.button15.arrow = 0;
    
    self.button21.arrow = 0;
    self.button22.arrow = 0;
    self.button23.arrow = 0;
    self.button24.arrow = 0;
    self.button25.arrow = 0;
    self.button26.arrow = 0;
    
    self.button31.arrow = 0;
    self.button32.arrow = 0;
    self.button33.arrow = 0;
    self.button34.arrow = 0;
    self.button35.arrow = 0;
    self.button36.arrow = 0;
    self.button37.arrow = 0;
    
    self.button41.arrow = 0;
    self.button42.arrow = 0;
    self.button43.arrow = 0;
    self.button44.arrow = 5;
    self.button45.arrow = 4;
    self.button46.arrow = 0;
    self.button47.arrow = 0;
    self.button48.arrow = 0;
    
    self.button51.arrow = 0;
    self.button52.arrow = 0;
    self.button53.arrow = 0;
    self.button54.arrow = 6;
    self.button55.arrow = 0;
    self.button56.arrow = 3;
    self.button57.arrow = 0;
    self.button58.arrow = 0;
    self.button59.arrow = 0;
    
    self.button62.arrow = 0;
    self.button63.arrow = 0;
    self.button64.arrow = 0;
    self.button65.arrow = 1;
    self.button66.arrow = 2;
    self.button67.arrow = 0;
    self.button68.arrow = 0;
    self.button69.arrow = 0;
    
    self.button73.arrow = 0;
    self.button74.arrow = 0;
    self.button75.arrow = 0;
    self.button76.arrow = 0;
    self.button77.arrow = 0;
    self.button78.arrow = 0;
    self.button79.arrow = 0;
    
    self.button84.arrow = 0;
    self.button85.arrow = 0;
    self.button86.arrow = 0;
    self.button87.arrow = 0;
    self.button88.arrow = 0;
    self.button89.arrow = 0;
    
    self.button95.arrow = 0;
    self.button96.arrow = 0;
    self.button97.arrow = 0;
    self.button98.arrow = 0;
    self.button99.arrow = 0;
    
    //初始化座標x
    self.button11.x = 1;
    self.button12.x = 1;
    self.button13.x = 1;
    self.button14.x = 1;
    self.button15.x = 1;
    
    self.button21.x = 2;
    self.button22.x = 2;
    self.button23.x = 2;
    self.button24.x = 2;
    self.button25.x = 2;
    self.button26.x = 2;
    
    self.button31.x = 3;
    self.button32.x = 3;
    self.button33.x = 3;
    self.button34.x = 3;
    self.button35.x = 3;
    self.button36.x = 3;
    self.button37.x = 3;
    
    self.button41.x = 4;
    self.button42.x = 4;
    self.button43.x = 4;
    self.button44.x = 4;
    self.button45.x = 4;
    self.button46.x = 4;
    self.button47.x = 4;
    self.button48.x = 4;
    
    self.button51.x = 5;
    self.button52.x = 5;
    self.button53.x = 5;
    self.button54.x = 5;
    self.button55.x = 5;
    self.button56.x = 5;
    self.button57.x = 5;
    self.button58.x = 5;
    self.button59.x = 5;
    
    self.button62.x = 6;
    self.button63.x = 6;
    self.button64.x = 6;
    self.button65.x = 6;
    self.button66.x = 6;
    self.button67.x = 6;
    self.button68.x = 6;
    self.button69.x = 6;
    
    self.button73.x = 7;
    self.button74.x = 7;
    self.button75.x = 7;
    self.button76.x = 7;
    self.button77.x = 7;
    self.button78.x = 7;
    self.button79.x = 7;
    
    self.button84.x = 8;
    self.button85.x = 8;
    self.button86.x = 8;
    self.button87.x = 8;
    self.button88.x = 8;
    self.button89.x = 8;
    
    self.button95.x = 9;
    self.button96.x = 9;
    self.button97.x = 9;
    self.button98.x = 9;
    self.button99.x = 9;
    
    //初始化座標y
    self.button11.y = 1;
    self.button12.y = 2;
    self.button13.y = 3;
    self.button14.y = 4;
    self.button15.y = 5;
    
    self.button21.y = 1;
    self.button22.y = 2;
    self.button23.y = 3;
    self.button24.y = 4;
    self.button25.y = 5;
    self.button26.y = 6;
    
    self.button31.y = 1;
    self.button32.y = 2;
    self.button33.y = 3;
    self.button34.y = 4;
    self.button35.y = 5;
    self.button36.y = 6;
    self.button37.y = 7;
    
    self.button41.y = 1;
    self.button42.y = 2;
    self.button43.y = 3;
    self.button44.y = 4;
    self.button45.y = 5;
    self.button46.y = 6;
    self.button47.y = 7;
    self.button48.y = 8;
    
    self.button51.y = 1;
    self.button52.y = 2;
    self.button53.y = 3;
    self.button54.y = 4;
    self.button55.y = 5;
    self.button56.y = 6;
    self.button57.y = 7;
    self.button58.y = 8;
    self.button59.y = 9;
    
    self.button62.y = 2;
    self.button63.y = 3;
    self.button64.y = 4;
    self.button65.y = 5;
    self.button66.y = 6;
    self.button67.y = 7;
    self.button68.y = 8;
    self.button69.y = 9;
    
    self.button73.y = 3;
    self.button74.y = 4;
    self.button75.y = 5;
    self.button76.y = 6;
    self.button77.y = 7;
    self.button78.y = 8;
    self.button79.y = 9;
    
    self.button84.y = 4;
    self.button85.y = 5;
    self.button86.y = 6;
    self.button87.y = 7;
    self.button88.y = 8;
    self.button89.y = 9;
    
    self.button95.y = 5;
    self.button96.y = 6;
    self.button97.y = 7;
    self.button98.y = 8;
    self.button99.y = 9;
    
    //二维数组初始化
    OBShapedButton *side = [OBShapedButton alloc] ;
    side.status = 3;
    
    self.array = [[NSArray alloc] initWithObjects:
             [NSArray arrayWithObjects: side, side, side, side, side, side, side, side, side, side, side, nil],
             [NSArray arrayWithObjects: side, self.button11, self.button12, self.button13, self.button14, self.button15, side, side, side, side, side, nil],
             [NSArray arrayWithObjects: side, self.button21, self.button22, self.button23, self.button24, self.button25, self.button26, side, side, side, side, nil],
             [NSArray arrayWithObjects: side, self.button31, self.button32, self.button33, self.button34, self.button35, self.button36, self.button37, side, side, side, nil],
             [NSArray arrayWithObjects: side, self.button41, self.button42, self.button43, self.button44, self.button45, self.button46, self.button47, self.button48, side, side, nil],
             [NSArray arrayWithObjects: side, self.button51, self.button52, self.button53, self.button54, self.button55, self.button56, self.button57, self.button58, self.button59, side, nil],
             [NSArray arrayWithObjects: side, side, self.button62, self.button63, self.button64, self.button65, self.button66, self.button67, self.button68, self.button69, side, nil],
             [NSArray arrayWithObjects: side, side, side, self.button73, self.button74, self.button75, self.button76, self.button77, self.button78, self.button79, side, nil],
             [NSArray arrayWithObjects: side, side, side, side, self.button84, self.button85, self.button86, self.button87, self.button88, self.button89, side, nil],
             [NSArray arrayWithObjects: side, side, side, side, side, self.button95, self.button96, self.button97, self.button98, self.button99, side, nil],
             [NSArray arrayWithObjects: side, side, side, side, side, side, side, side, side, side, side, nil],
             nil];
    }

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (BOOL) prefersStatusBarHidden
{
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
