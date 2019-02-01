//
//  YNAudioManager.h
//  YNAudioManagerDemo
//
//  Created by liyangly on 2019/1/31.
//  Copyright © 2019 liyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YNAudioManager : NSObject

+ (void)playSimpleAudioSoundWithFileName:(NSString *)fileName;

// make sure that you device match the Feedback API
+ (void)playFeedbackWithFeedbackStyle:(UIImpactFeedbackStyle)feedbackStyle;

@end

NS_ASSUME_NONNULL_END
