//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___FULLUSERNAME___
//

//___COPYRIGHT___
//
//加载到ViewController类中
//#if TARGET_IPHONE_SIMULATOR
//[KMCGeigerCounter sharedGeigerCounter].enabled = YES;
//#endif

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, KMCGeigerCounterPosition) {
    KMCGeigerCounterPositionLeft,
    KMCGeigerCounterPositionMiddle,
    KMCGeigerCounterPositionRight
};

@interface KMCGeigerCounter : NSObject

// Set [KMCGeigerCounter sharedGeigerCounter].enabled = YES from -application:didFinishLaunchingWithOptions:
@property (nonatomic, assign, getter = isEnabled) BOOL enabled;

// Draws over the status bar. Set it manually if your own custom windows obscure it.
@property (nonatomic, assign) UIWindowLevel windowLevel;
@property (nonatomic, assign) KMCGeigerCounterPosition position;

@property (nonatomic, readonly, getter = isRunning) BOOL running;
@property (nonatomic, readonly) NSInteger droppedFrameCountInLastSecond;
@property (nonatomic, readonly) NSInteger drawnFrameCountInLastSecond; // -1 until one second of frames have been collected

+ (instancetype)sharedGeigerCounter;

@end
