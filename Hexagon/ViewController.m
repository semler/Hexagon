//
//  ViewController.m
//  Hexagon
//
//  Created by semler on 14-11-14.
//  Copyright (c) 2014年 semler. All rights reserved.
//

#import "ViewController.h"
#import "PurchaseManager.h"
#import "DungeonOneViewController.h"

@interface ViewController ()

@property (nonatomic) BOOL purchaseFlg;

@property (weak, nonatomic) IBOutlet UIButton *dungeonOneButton;
@property (weak, nonatomic) IBOutlet UIButton *dungeonTwoButton;
@property (weak, nonatomic) IBOutlet UIButton *dungeonXButton;

- (IBAction)dungeonOnePresssed:(id)sender;
- (IBAction)dungeonTwoPresssed:(id)sender;
- (IBAction)dungeonXPressed:(id)sender;
- (IBAction)restorePressed:(id)sender;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    if([userDefaults boolForKey:@"dungeon_two"] == YES){
        [self.dungeonTwoButton setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
        self.dungeonTwoButton.enabled = YES;
    } else {
        [self.dungeonTwoButton setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
        self.dungeonTwoButton.enabled = NO;
    }
    
//    if([userDefaults boolForKey:@"dungeon_three"] == YES){
//        [self.dungeonTwoButton setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
//        self.dungeonTwoButton.enabled = YES;
//    } else {
//        [self.dungeonTwoButton setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
//        self.dungeonTwoButton.enabled = NO;
//    }
    
    if([userDefaults boolForKey:@"dungeon_x"] == YES){
        [self.dungeonXButton setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
        self.purchaseFlg = YES;
    } else {
        [self.dungeonXButton setImage:[UIImage imageNamed:@"button2.png"] forState:UIControlStateNormal];
        self.purchaseFlg = NO;
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if([self respondsToSelector:@selector(setNeedsStatusBarAppearanceUpdate)]){
        [self prefersStatusBarHidden];
        [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
    } else {
        [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    }
}

- (BOOL) prefersStatusBarHidden
{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)dungeonOnePresssed:(id)sender {
    BaseViewController *controller = [[DungeonOneViewController alloc] initWithNibName:@"DungeonOneViewController" bundle:nil];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)dungeonTwoPresssed:(id)sender {
    //
}

- (IBAction)dungeonXPressed:(id)sender {
    if(self.purchaseFlg){
        //
    } else {
        [[PurchaseManager sharedManager] showAleart];
    }
    
}

- (IBAction)restorePressed:(id)sender {
    [[PurchaseManager sharedManager] restore];
}






@end
