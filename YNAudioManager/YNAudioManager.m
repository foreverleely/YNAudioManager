//
//  YNAudioManager.m
//  YNAudioManagerDemo
//
//  Created by liyangly on 2019/1/31.
//  Copyright © 2019 liyang. All rights reserved.
//

#import "YNAudioManager.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation YNAudioManager

+ (void)playSimpleAudioSoundWithFileName:(NSString *)fileName {
    
    // make sure that you have wirtten the file into the SandBox
    SystemSoundID soundID;
    NSString *docPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *filePath = [docPath stringByAppendingPathComponent:fileName];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:filePath], &soundID);
    AudioServicesPlaySystemSound(soundID);
}

+ (void)playFeedbackWithFeedbackStyle:(UIImpactFeedbackStyle)feedbackStyle {
    if (@available(iOS 10.0, *)) {
        UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: feedbackStyle];
        [generator prepare];
        [generator impactOccurred];
    } else {
        // Fallback on earlier versions
    }
}

@end
