//
//  ViewController.m
//  YNAudioManagerDemo
//
//  Created by liyangly on 2019/1/31.
//  Copyright © 2019 liyang. All rights reserved.
//

#import "ViewController.h"

#import "YNAudioManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 44);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    button.center = self.view.center;
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(0, 0, 100, 44);
    button2.backgroundColor = [UIColor redColor];
    [self.view addSubview:button2];
    button2.center = CGPointMake(self.view.center.x, self.view.center.y + 100);
    [button2 addTarget:self action:@selector(button2Click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonClick {
    [YNAudioManager playSimpleAudioSoundWithFileName:@"5726.mp3"];
}

- (void)button2Click {
    [YNAudioManager playFeedbackWithFeedbackStyle:UIImpactFeedbackStyleLight];
}

@end
