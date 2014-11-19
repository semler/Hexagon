//
//  BaseViewController.m
//  Hexagon
//
//  Created by semler on 14-11-14.
//  Copyright (c) 2014年 semler. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@property (strong, nonatomic) NSArray *arrayArrow;
@property (strong, nonatomic) UIAlertView *returnAlert;
@property (strong, nonatomic) UIAlertView *gameOverAlert;
@property (strong, nonatomic) UIAlertView *gameClearAlert;

- (IBAction)button11Pressed:(id)sender;
- (IBAction)button12Pressed:(id)sender;
- (IBAction)button13Pressed:(id)sender;
- (IBAction)button14Pressed:(id)sender;
- (IBAction)button15Pressed:(id)sender;

- (IBAction)button21Pressed:(id)sender;
- (IBAction)button22Pressed:(id)sender;
- (IBAction)button23Pressed:(id)sender;
- (IBAction)button24Pressed:(id)sender;
- (IBAction)button25Pressed:(id)sender;
- (IBAction)button26Pressed:(id)sender;

- (IBAction)button31Pressed:(id)sender;
- (IBAction)button32Pressed:(id)sender;
- (IBAction)button33Pressed:(id)sender;
- (IBAction)button34Pressed:(id)sender;
- (IBAction)button35Pressed:(id)sender;
- (IBAction)button36Pressed:(id)sender;
- (IBAction)button37Pressed:(id)sender;

- (IBAction)button41Pressed:(id)sender;
- (IBAction)button42Pressed:(id)sender;
- (IBAction)button43Pressed:(id)sender;
- (IBAction)button44Pressed:(id)sender;
- (IBAction)button45Pressed:(id)sender;
- (IBAction)button46Pressed:(id)sender;
- (IBAction)button47Pressed:(id)sender;
- (IBAction)button48Pressed:(id)sender;

- (IBAction)button51Pressed:(id)sender;
- (IBAction)button52Pressed:(id)sender;
- (IBAction)button53Pressed:(id)sender;
- (IBAction)button54Pressed:(id)sender;
- (IBAction)button55Pressed:(id)sender;
- (IBAction)button56Pressed:(id)sender;
- (IBAction)button57Pressed:(id)sender;
- (IBAction)button58Pressed:(id)sender;
- (IBAction)button59Pressed:(id)sender;

- (IBAction)button62Pressed:(id)sender;
- (IBAction)button63Pressed:(id)sender;
- (IBAction)button64Pressed:(id)sender;
- (IBAction)button65Pressed:(id)sender;
- (IBAction)button66Pressed:(id)sender;
- (IBAction)button67Pressed:(id)sender;
- (IBAction)button68Pressed:(id)sender;
- (IBAction)button69Pressed:(id)sender;

- (IBAction)button73Pressed:(id)sender;
- (IBAction)button74Pressed:(id)sender;
- (IBAction)button75Pressed:(id)sender;
- (IBAction)button76Pressed:(id)sender;
- (IBAction)button77Pressed:(id)sender;
- (IBAction)button78Pressed:(id)sender;
- (IBAction)button79Pressed:(id)sender;

- (IBAction)button84Pressed:(id)sender;
- (IBAction)button85Pressed:(id)sender;
- (IBAction)button86Pressed:(id)sender;
- (IBAction)button87Pressed:(id)sender;
- (IBAction)button88Pressed:(id)sender;
- (IBAction)button89Pressed:(id)sender;

- (IBAction)button95Pressed:(id)sender;
- (IBAction)button96Pressed:(id)sender;
- (IBAction)button97Pressed:(id)sender;
- (IBAction)button98Pressed:(id)sender;
- (IBAction)button99Pressed:(id)sender;

- (IBAction)resetPressed:(id)sender;

- (IBAction)backPressed:(id)sender;

- (IBAction)returnPressed:(id)sender;

@end

@implementation BaseViewController

int arrow;
int passed = 0;
int backupArray[11][11];
int backupArrow[11][11];

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self backup];
    
    [self animation:self.button44.imageView];
    [self animation:self.button54.imageView];
    [self animation:self.button45.imageView];
    [self animation:self.button56.imageView];
    [self animation:self.button65.imageView];
    [self animation:self.button66.imageView];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button11Pressed:(id)sender {
    if(self.button11.status != 0 || self.button11.arrow == 0){
        return;
    }
    
    [self move: self.button11.x y: self.button11.y arrow: self.button11.arrow];
}

- (IBAction)button12Pressed:(id)sender {
    if(self.button12.status != 0 || self.button12.arrow == 0){
        return;
    }
    
    [self move: self.button12.x y: self.button12.y arrow: self.button12.arrow];
}

- (IBAction)button13Pressed:(id)sender {
    if(self.button13.status != 0 || self.button13.arrow == 0){
        return;
    }
    
    [self move: self.button13.x y: self.button13.y arrow: self.button13.arrow];
}

- (IBAction)button14Pressed:(id)sender {
    if(self.button14.status != 0 || self.button14.arrow == 0){
        return;
    }
    
    [self move: self.button14.x y: self.button14.y arrow: self.button14.arrow];
}

- (IBAction)button15Pressed:(id)sender {
    if(self.button15.status != 0 || self.button15.arrow == 0){
        return;
    }
    
    [self move: self.button15.x y: self.button15.y arrow: self.button15.arrow];
}

- (IBAction)button21Pressed:(id)sender {
    if(self.button21.status != 0 || self.button21.arrow == 0){
        return;
    }
    
    [self move: self.button21.x y: self.button21.y arrow: self.button21.arrow];
}

- (IBAction)button22Pressed:(id)sender {
    if(self.button22.status != 0 || self.button22.arrow == 0){
        return;
    }
    
    [self move: self.button22.x y: self.button22.y arrow: self.button22.arrow];
}

- (IBAction)button23Pressed:(id)sender {
    if(self.button23.status != 0 || self.button23.arrow == 0){
        return;
    }
    
    [self move: self.button23.x y: self.button23.y arrow: self.button23.arrow];
}

- (IBAction)button24Pressed:(id)sender {
    if(self.button24.status != 0 || self.button24.arrow == 0){
        return;
    }
    
    [self move: self.button24.x y: self.button24.y arrow: self.button24.arrow];
}

- (IBAction)button25Pressed:(id)sender {
    if(self.button25.status != 0 || self.button25.arrow == 0){
        return;
    }
    
    [self move: self.button25.x y: self.button25.y arrow: self.button25.arrow];
}

- (IBAction)button26Pressed:(id)sender {
    if(self.button26.status != 0 || self.button26.arrow == 0){
        return;
    }
    
    [self move: self.button26.x y: self.button26.y arrow: self.button26.arrow];
}

- (IBAction)button31Pressed:(id)sender {
    if(self.button31.status != 0 || self.button31.arrow == 0){
        return;
    }
    
    [self move: self.button31.x y: self.button31.y arrow: self.button31.arrow];
}

- (IBAction)button32Pressed:(id)sender {
    if(self.button32.status != 0 || self.button32.arrow == 0){
        return;
    }
    
    [self move: self.button32.x y: self.button32.y arrow: self.button32.arrow];
}

- (IBAction)button33Pressed:(id)sender {
    if(self.button33.status != 0 || self.button33.arrow == 0){
        return;
    }
    
    [self move: self.button33.x y: self.button33.y arrow: self.button33.arrow];
}

- (IBAction)button34Pressed:(id)sender {
    if(self.button34.status != 0 || self.button34.arrow == 0){
        return;
    }
    
    [self move: self.button34.x y: self.button34.y arrow: self.button34.arrow];
}

- (IBAction)button35Pressed:(id)sender {
    if(self.button35.status != 0 || self.button35.arrow == 0){
        return;
    }
    
    [self move: self.button35.x y: self.button35.y arrow: self.button35.arrow];
}

- (IBAction)button36Pressed:(id)sender {
    if(self.button36.status != 0 || self.button36.arrow == 0){
        return;
    }
    
    [self move: self.button36.x y: self.button36.y arrow: self.button36.arrow];
}

- (IBAction)button37Pressed:(id)sender {
    if(self.button37.status != 0 || self.button37.arrow == 0){
        return;
    }
    
    [self move: self.button37.x y: self.button37.y arrow: self.button37.arrow];
}

- (IBAction)button41Pressed:(id)sender {
    if(self.button41.status != 0 || self.button41.arrow == 0){
        return;
    }
    
    [self move: self.button41.x y: self.button41.y arrow: self.button41.arrow];
}

- (IBAction)button42Pressed:(id)sender {
    if(self.button42.status != 0 || self.button42.arrow == 0){
        return;
    }
    
    [self move: self.button42.x y: self.button42.y arrow: self.button42.arrow];
}

- (IBAction)button43Pressed:(id)sender {
    if(self.button43.status != 0 || self.button43.arrow == 0){
        return;
    }
    
    [self move: self.button43.x y: self.button43.y arrow: self.button43.arrow];
}

- (IBAction)button44Pressed:(id)sender {
    if(self.button44.status != 0 || self.button44.arrow == 0){
        return;
    }
    
    [self move: self.button44.x y: self.button44.y arrow: self.button44.arrow];
}

- (IBAction)button45Pressed:(id)sender {
    if(self.button45.status != 0 || self.button45.arrow == 0){
        return;
    }
    
    [self move: self.button45.x y: self.button45.y arrow: self.button45.arrow];
}

- (IBAction)button46Pressed:(id)sender {
    if(self.button46.status != 0 || self.button46.arrow == 0){
        return;
    }
    
    [self move: self.button46.x y: self.button46.y arrow: self.button46.arrow];
}

- (IBAction)button47Pressed:(id)sender {
    if(self.button47.status != 0 || self.button47.arrow == 0){
        return;
    }
    
    [self move: self.button47.x y: self.button47.y arrow: self.button47.arrow];
}

- (IBAction)button48Pressed:(id)sender {
    if(self.button48.status != 0 || self.button48.arrow == 0){
        return;
    }
    
    [self move: self.button48.x y: self.button48.y arrow: self.button48.arrow];
}

- (IBAction)button51Pressed:(id)sender {
    if(self.button51.status != 0 || self.button51.arrow == 0){
        return;
    }
    
    [self move: self.button51.x y: self.button51.y arrow: self.button51.arrow];
}

- (IBAction)button52Pressed:(id)sender {
    if(self.button52.status != 0 || self.button52.arrow == 0){
        return;
    }
    
    [self move: self.button52.x y: self.button52.y arrow: self.button52.arrow];
}

- (IBAction)button53Pressed:(id)sender {
    if(self.button53.status != 0 || self.button53.arrow == 0){
        return;
    }
    
    [self move: self.button53.x y: self.button53.y arrow: self.button53.arrow];
}

- (IBAction)button54Pressed:(id)sender {
    if(self.button54.status != 0 || self.button54.arrow == 0){
        return;
    }
    
    [self move: self.button54.x y: self.button54.y arrow: self.button54.arrow];
}

- (IBAction)button55Pressed:(id)sender {
    if(self.button55.status != 0 || self.button55.arrow == 0){
        return;
    }
    
    [self move: self.button55.x y: self.button55.y arrow: self.button55.arrow];
}

- (IBAction)button56Pressed:(id)sender {
    if(self.button56.status != 0 || self.button56.arrow == 0){
        return;
    }
    
    [self move: self.button56.x y: self.button56.y arrow: self.button56.arrow];
}

- (IBAction)button57Pressed:(id)sender {
    if(self.button57.status != 0 || self.button57.arrow == 0){
        return;
    }
    
    [self move: self.button57.x y: self.button57.y arrow: self.button57.arrow];
}

- (IBAction)button58Pressed:(id)sender {
    if(self.button58.status != 0 || self.button58.arrow == 0){
        return;
    }
    
    [self move: self.button58.x y: self.button58.y arrow: self.button58.arrow];
}

- (IBAction)button59Pressed:(id)sender {
    if(self.button59.status != 0 || self.button59.arrow == 0){
        return;
    }
    
    [self move: self.button59.x y: self.button59.y arrow: self.button59.arrow];
}

- (IBAction)button62Pressed:(id)sender {
    if(self.button62.status != 0 || self.button62.arrow == 0){
        return;
    }
    
    [self move: self.button62.x y: self.button62.y arrow: self.button62.arrow];
}

- (IBAction)button63Pressed:(id)sender {
    if(self.button63.status != 0 || self.button63.arrow == 0){
        return;
    }
    
    [self move: self.button63.x y: self.button63.y arrow: self.button63.arrow];
}

- (IBAction)button64Pressed:(id)sender {
    if(self.button64.status != 0 || self.button64.arrow == 0){
        return;
    }
    
    [self move: self.button64.x y: self.button64.y arrow: self.button64.arrow];
}

- (IBAction)button65Pressed:(id)sender {
    if(self.button65.status != 0 || self.button65.arrow == 0){
        return;
    }
    
    [self move: self.button65.x y: self.button65.y arrow: self.button65.arrow];
}

- (IBAction)button66Pressed:(id)sender {
    if(self.button66.status != 0 || self.button66.arrow == 0){
        return;
    }
    
    [self move: self.button66.x y: self.button66.y arrow: self.button66.arrow];
}

- (IBAction)button67Pressed:(id)sender {
    if(self.button67.status != 0 || self.button67.arrow == 0){
        return;
    }
    
    [self move: self.button67.x y: self.button67.y arrow: self.button67.arrow];
}

- (IBAction)button68Pressed:(id)sender {
    if(self.button68.status != 0 || self.button68.arrow == 0){
        return;
    }
    
    [self move: self.button68.x y: self.button68.y arrow: self.button68.arrow];
}

- (IBAction)button69Pressed:(id)sender {
    if(self.button69.status != 0 || self.button69.arrow == 0){
        return;
    }
    
    [self move: self.button69.x y: self.button69.y arrow: self.button69.arrow];
}

- (IBAction)button73Pressed:(id)sender {
    if(self.button73.status != 0 || self.button73.arrow == 0){
        return;
    }
    
    [self move: self.button73.x y: self.button73.y arrow: self.button73.arrow];
}

- (IBAction)button74Pressed:(id)sender {
    if(self.button74.status != 0 || self.button74.arrow == 0){
        return;
    }
    
    [self move: self.button74.x y: self.button74.y arrow: self.button74.arrow];
}

- (IBAction)button75Pressed:(id)sender {
    if(self.button75.status != 0 || self.button75.arrow == 0){
        return;
    }
    
    [self move: self.button75.x y: self.button75.y arrow: self.button75.arrow];
}

- (IBAction)button76Pressed:(id)sender {
    if(self.button76.status != 0 || self.button76.arrow == 0){
        return;
    }
    
    [self move: self.button76.x y: self.button76.y arrow: self.button76.arrow];
}

- (IBAction)button77Pressed:(id)sender {
    if(self.button77.status != 0 || self.button77.arrow == 0){
        return;
    }
    
    [self move: self.button77.x y: self.button77.y arrow: self.button77.arrow];
}

- (IBAction)button78Pressed:(id)sender {
    if(self.button78.status != 0 || self.button78.arrow == 0){
        return;
    }
    
    [self move: self.button78.x y: self.button78.y arrow: self.button78.arrow];
}

- (IBAction)button79Pressed:(id)sender {
    if(self.button79.status != 0 || self.button79.arrow == 0){
        return;
    }
    
    [self move: self.button79.x y: self.button79.y arrow: self.button79.arrow];
}

- (IBAction)button84Pressed:(id)sender {
    if(self.button84.status != 0 || self.button84.arrow == 0){
        return;
    }
    
    [self move: self.button84.x y: self.button84.y arrow: self.button84.arrow];
}

- (IBAction)button85Pressed:(id)sender {
    if(self.button85.status != 0 || self.button85.arrow == 0){
        return;
    }
    
    [self move: self.button85.x y: self.button85.y arrow: self.button85.arrow];
}

- (IBAction)button86Pressed:(id)sender {
    if(self.button86.status != 0 || self.button86.arrow == 0){
        return;
    }
    
    [self move: self.button86.x y: self.button86.y arrow: self.button86.arrow];
}

- (IBAction)button87Pressed:(id)sender {
    if(self.button87.status != 0 || self.button87.arrow == 0){
        return;
    }
    
    [self move: self.button87.x y: self.button87.y arrow: self.button87.arrow];
}

- (IBAction)button88Pressed:(id)sender {
    if(self.button88.status != 0 || self.button88.arrow == 0){
        return;
    }
    
    [self move: self.button88.x y: self.button88.y arrow: self.button88.arrow];
}

- (IBAction)button89Pressed:(id)sender {
    if(self.button89.status != 0 || self.button89.arrow == 0){
        return;
    }
    
    [self move: self.button89.x y: self.button89.y arrow: self.button89.arrow];
}

- (IBAction)button95Pressed:(id)sender {
    if(self.button95.status != 0 || self.button95.arrow == 0){
        return;
    }
    
    [self move: self.button95.x y: self.button95.y arrow: self.button95.arrow];
}

- (IBAction)button96Pressed:(id)sender {
    if(self.button96.status != 0 || self.button96.arrow == 0){
        return;
    }
    
    [self move: self.button96.x y: self.button96.y arrow: self.button96.arrow];
}

- (IBAction)button97Pressed:(id)sender {
    if(self.button97.status != 0 || self.button97.arrow == 0){
        return;
    }
    
    [self move: self.button97.x y: self.button97.y arrow: self.button97.arrow];
}

- (IBAction)button98Pressed:(id)sender {
    if(self.button98.status != 0 || self.button98.arrow == 0){
        return;
    }
    
    [self move: self.button98.x y: self.button98.y arrow: self.button98.arrow];
}

- (IBAction)button99Pressed:(id)sender {
    if(self.button99.status != 0 || self.button99.arrow == 0){
        return;
    }
    
    [self move: self.button99.x y: self.button99.y arrow: self.button99.arrow];
}

-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if(self.returnAlert == alertView){
        switch (buttonIndex) {
            case 0:
                
                [self dismissViewControllerAnimated:YES completion:nil];
                
                break;
            case 1:
                break;
        }
    } else if(self.gameOverAlert == alertView){
        switch (buttonIndex) {
            case 0:
                break;
        }
    }
}

- (void) move:(int)x y:(int)y arrow:(int)arrow{
    
    //アニメーション停止
    [self stopAnimation];
    //backup
    [self backup];
    
    OBShapedButton *button;
    
    if(arrow == 1){
        button = self.array[x - 1][y];
        //元イメージクリア
        [self clearImage: button];
        //進む
        for(int i = x; i <= 10; i++){
            button = self.array[i][y];
            //未经过的button
            if(button != nil && button.status == 0){
                button.status = 1;
                button.arrow = 0;
                [self changeImage: button];
                passed ++;
                //到达不可的button
            } else {
                button = self.array[i - 1][y];
                button.status = 12;
                [self changeImage: button];
                [self makeArrow: button];
                break;
            }
        }
    } else if(arrow == 2){
        button = self.array[x - 1][y - 1];
        //元イメージクリア
        [self clearImage: button];
        //進む
        for(int i = x; i <= 10; i++){
            button = self.array[i][y + (i - x)];
            //未经过的button
            if(button != nil && button.status == 0){
                button.status = 1;
                button.arrow = 0;
                [self changeImage: button];
                passed ++;
                //到达不可的button
            } else {
                button = self.array[i - 1][(y + (i - x)) - 1];
                button.status = 12;
                [self changeImage: button];
                [self makeArrow: button];
                break;
            }
        }
    } else if(arrow == 3){
        button = self.array[x][y - 1];
        //元イメージクリア
        [self clearImage: button];
        //進む
        for(int i = y; i <= 10; i ++){
            button = self.array[x][i];
            //未经过的button
            if(button != nil && button.status == 0){
                button.status = 1;
                button.arrow = 0;
                [self changeImage: button];
                passed ++;
                //到达不可的button
            } else {
                button = self.array[x][i - 1];
                button.status = 12;
                [self changeImage: button];
                [self makeArrow: button];
                break;
            }
        }
    } else if(arrow == 4){
        button = self.array[x + 1][y];
        //元イメージクリア
        [self clearImage: button];
        //進む
        for(int i = x; i >= 0; i --){
            button = self.array[i][y];
            //未经过的button
            if(button != nil && button.status == 0){
                button.status = 1;
                button.arrow = 0;
                [self changeImage: button];
                passed ++;
                //到达不可的button
            } else {
                button = self.array[i + 1][y];
                button.status = 12;
                [self changeImage: button];
                [self makeArrow: button];
                break;
            }
        }
    } else if(arrow == 5){
        button = self.array[x + 1][y + 1];
        //元イメージクリア
        [self clearImage: button];
        //進む
        for(int i = x; i >= 0; i --){
            button = self.array[i][y - (x - i)];
            //未经过的button
            if(button != nil && button.status == 0){
                button.status = 1;
                button.arrow = 0;
                [self changeImage: button];
                passed ++;
                //到达不可的button
            } else {
                button = self.array[i + 1][(y - (x - i)) + 1];
                button.status = 12;
                [self changeImage: button];
                [self makeArrow: button];
                break;
            }
        }
    } else if(arrow == 6){
        button = self.array[x][y + 1];
        //元イメージクリア
        [self clearImage: button];
        //進む
        for(int i = y; i >= 0; i --){
            button = self.array[x][i];
            //未经过的button
            if(button != nil && button.status == 0){
                button.status = 1;
                button.arrow = 0;
                [self changeImage: button];
                passed ++;
                //到达不可的button
            } else {
                button = self.array[x][i + 1];
                button.status = 12;
                [self changeImage: button];
                [self makeArrow: button];
                break;
            }
        }
    }
}

//イメージクリア
- (void) clearImage: (OBShapedButton *)button {
    //イメージクリア
    button.status = 1;
    [button setImage:[UIImage imageNamed:@"button1.png"] forState:UIControlStateNormal];
    
    //矢印クリア
    OBShapedButton *button1 = self.array[button.x + 1][button.y];
    OBShapedButton *button2 = self.array[button.x + 1][button.y + 1];
    OBShapedButton *button3 = self.array[button.x][button.y + 1];
    OBShapedButton *button4 = self.array[button.x - 1][button.y];
    OBShapedButton *button5 = self.array[button.x - 1][button.y - 1];
    OBShapedButton *button6 = self.array[button.x][button.y - 1];
    if (button1 != nil && button1.status == 0){
        button1.arrow = 0;
        [button1 setImage:[UIImage imageNamed:@"button0.png"] forState:UIControlStateNormal];
    }
    if (button2 != nil && button2.status == 0){
        button2.arrow = 0;
        [button2 setImage:[UIImage imageNamed:@"button0.png"] forState:UIControlStateNormal];
    }
    if (button3 != nil && button3.status == 0){
        button3.arrow = 0;
        [button3 setImage:[UIImage imageNamed:@"button0.png"] forState:UIControlStateNormal];
    }
    if (button4 != nil && button4.status == 0){
        button4.arrow = 0;
        [button4 setImage:[UIImage imageNamed:@"button0.png"] forState:UIControlStateNormal];
    }
    if (button5 != nil && button5.status == 0){
        button5.arrow = 0;
        [button5 setImage:[UIImage imageNamed:@"button0.png"] forState:UIControlStateNormal];
    }
    if (button6 != nil && button6.status == 0){
        button6.arrow = 0;
        [button6 setImage:[UIImage imageNamed:@"button0.png"] forState:UIControlStateNormal];
    }
}

//ボタン画像イメージ変更
- (void) changeImage: (OBShapedButton *)button {
    if(button.status == 0){
        [button setImage:[UIImage imageNamed:@"button0.png"] forState:UIControlStateNormal];
    } else if(button.status == 1){
        [button setImage:[UIImage imageNamed:@"button1.png"] forState:UIControlStateNormal];
    } else if(button.status == 2){
        [button setImage:[UIImage imageNamed:@"button2.png"] forState:UIControlStateNormal];
    } else if(button.status == 12){
        [button setImage:[UIImage imageNamed:@"semler.png"] forState:UIControlStateNormal];
    }
    
}

//ボタンの周りの矢印画像変更
- (void) makeArrow: (OBShapedButton *)button {
    arrow = 0;
    
    OBShapedButton *button1 = self.array[button.x + 1][button.y];
    OBShapedButton *button2 = self.array[button.x + 1][button.y + 1];
    OBShapedButton *button3 = self.array[button.x][button.y + 1];
    OBShapedButton *button4 = self.array[button.x - 1][button.y];
    OBShapedButton *button5 = self.array[button.x - 1][button.y - 1];
    OBShapedButton *button6 = self.array[button.x][button.y - 1];
    if (button1 != nil && button1.status == 0){
        button1.arrow = 1;
        [button1 setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
        arrow ++;
        
        [self animation:button1.imageView];
    }
    if (button2 != nil && button2.status == 0){
        button2.arrow = 2;
        [button2 setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
        arrow ++;
        
        [self animation:button2.imageView];
    }
    if (button3 != nil && button3.status == 0){
        button3.arrow = 3;
        [button3 setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
        arrow ++;
        
        [self animation:button3.imageView];
    }
    if (button4 != nil && button4.status == 0){
        button4.arrow = 4;
        [button4 setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
        arrow ++;
        
        [self animation:button4.imageView];
    }
    if (button5 != nil && button5.status == 0){
        button5.arrow = 5;
        [button5 setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
        arrow ++;
        
        [self animation:button5.imageView];
    }
    if (button6 != nil && button6.status == 0){
        button6.arrow = 6;
        [button6 setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
        arrow ++;
        
        [self animation:button6.imageView];
    }
    
    if(arrow == 0){
        //if (passed == 53) {
            if (true) {
            self.gameOverAlert = [[UIAlertView alloc] init];
            self.gameOverAlert.delegate = self;
            self.gameOverAlert.title = nil;
            self.gameOverAlert.message = @"おめでとう!";
            [self.gameOverAlert addButtonWithTitle:@"OK"];
            [self.gameOverAlert show];
            
            [self resetUserDefaults];
        } else {
            self.gameOverAlert = [[UIAlertView alloc] init];
            self.gameOverAlert.delegate = self;
            self.gameOverAlert.title = nil;
            self.gameOverAlert.message = @"GAME OVER!";
            [self.gameOverAlert addButtonWithTitle:@"OK"];
            [self.gameOverAlert show];
        }
    }
}

-(void) resetUserDefaults {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([@"dungeon_one" isEqualToString:self.dungeon]) {
        [userDefaults setBool:YES forKey:@"dungeon_two"];
        [userDefaults synchronize];
    }
    else if ([@"dungeon_two" isEqualToString:self.dungeon]) {
        [userDefaults setBool:YES forKey:@"dungeon_three"];
        [userDefaults synchronize];
    }
}

-(void) resetImage: (NSArray *) array{
    OBShapedButton *button;
    for(int i = 0; i <= 10 ;i ++){
        for(int j = 0; j <= 10 ;j ++){
            button = array[i][j];
            if(button.status == 0){
                [button setImage:[UIImage imageNamed:@"button0.png"] forState:UIControlStateNormal];
            } else if(button.status == 1){
                [button setImage:[UIImage imageNamed:@"button1.png"] forState:UIControlStateNormal];
            } else if(button.status == 2){
                [button setImage:[UIImage imageNamed:@"button2.png"] forState:UIControlStateNormal];
            } else if(button.status == 12){
                [button setImage:[UIImage imageNamed:@"semler.png"] forState:UIControlStateNormal];
            }
            
            if(button.arrow == 1){
                [button setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
                
                [self animation:button.imageView];
            } else if(button.arrow == 2){
                [button setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
                
                [self animation:button.imageView];
            } else if(button.arrow == 3){
                [button setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
                
                [self animation:button.imageView];
            } else if(button.arrow == 4){
                [button setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
                
                [self animation:button.imageView];
            } else if(button.arrow == 5){
                [button setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
                
                [self animation:button.imageView];
            } else if(button.arrow == 6){
                [button setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
                
                [self animation:button.imageView];
            }
            
        }
    }
    
}

- (void)backup{
    
    OBShapedButton *button;
    
    for(int i = 0; i <= 10 ;i ++){
        for(int j = 0; j <= 10 ;j ++){
            
            button = self.array[i][j];
            backupArray[i][j] = button.status;
            backupArrow[i][j] = button.arrow;
        }
    }
}

- (void)writeToArray{
    OBShapedButton *button;
    
    for(int i = 0; i <= 10 ;i ++){
        for(int j = 0; j <= 10 ;j ++){
            
            button = self.array[i][j];
            button.status = backupArray[i][j];
            button.arrow = backupArrow[i][j];
        }
    }
}

-(void)animation: (UIImageView *) imageView {
    //なにがしかのUIViewからlayerを取得
    CALayer *layer = imageView.layer;
    
    //CABasicAnimationオブジェクトを生成
    //サンプルでは"position"をアニメーションさせる例。
    //他に、transformを変更したい場合は@"transform.translate.x"などと指定する
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
    //アニメーション時間
    animation.duration = 1.5;
    //アニメーションの繰り返し回数
    animation.repeatCount = MAXFLOAT;
    //アニメーションの開始時間
    animation.beginTime = CACurrentMediaTime(); //開始時間
    
    //アニメーション終了時に、逆方向にもアニメーションさせるか
    animation.autoreverses = NO; //YESにした場合はアニメーションが往復する
    
    //アニメーションのイージングを制御
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    // 拡大・縮小倍率を設定
    animation.fromValue = [NSNumber numberWithFloat:0.8]; // 開始時の倍率
    animation.toValue = [NSNumber numberWithFloat:1.0]; // 終了時の倍率
    
    //アニメーション終了時、元の状態に戻すか否かの設定（サンプルではアニメーション後はそのまま）
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    
    //アニメーションキーを設定（任意の名前）
    [layer addAnimation:animation forKey:@"arrow"];
}

-(void)stopAnimation{
    OBShapedButton *button;
    
    for(int i = 0; i < 11; i ++){
        for(int j = 0; j < 11; j ++){
            button = self.array[i][j];
            
            if(button.arrow != 0){
                [button.imageView.layer removeAnimationForKey:@"arrow"];
            }
        }
    }
}

- (IBAction)resetPressed:(id)sender {
    [self stopAnimation];
    [self viewWillAppear:YES];
    [self resetImage: self.array];
}

- (IBAction)backPressed:(id)sender {
    [self stopAnimation];
    [self writeToArray];
    [self resetImage:self.array];
}

- (IBAction)returnPressed:(id)sender {
    self.returnAlert = [[UIAlertView alloc] init];
    self.returnAlert.delegate = self;
    self.returnAlert.title = @"確認";
    self.returnAlert.message = @"諦めますか？";
    [self.returnAlert addButtonWithTitle:@"はい"];
    [self.returnAlert addButtonWithTitle:@"いいえ"];
    [self.returnAlert show];
}

@end
