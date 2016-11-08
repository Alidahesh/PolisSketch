//
//  LPSSketchesDataSource.m
//  PoliceSketch
//
//  Created by Ali Dahesh on 2016-11-07.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LPSSketchesDataSource.h"

@interface LPSSketchesDataSource ()

@property (nonatomic, strong) NSArray* eyesArray;
@property (nonatomic, strong) NSArray* nosesArray;
@property (nonatomic, strong) NSArray* mouthsArray;

@property (nonatomic, readwrite) UIImage * currentEyes;
@property (nonatomic, readwrite) UIImage * currentNoses;
@property (nonatomic, readwrite) UIImage * currentMouths;

@end

@implementation LPSSketchesDataSource

- (instancetype)init {
    self = [super init];
    if (self) {
        _eyesArray = @[[UIImage imageNamed : @"eyes_1.jpg"],
                       [UIImage imageNamed : @"eyes_2.jpg"],
                       [UIImage imageNamed : @"eyes_3.jpg"],
                       [UIImage imageNamed : @"eyes_4.jpg"],
                       [UIImage imageNamed : @"eyes_5.jpg"]];
        _nosesArray = @[[UIImage imageNamed : @"nose_1.jpg"],
                        [UIImage imageNamed : @"nose_2.jpg"],
                        [UIImage imageNamed : @"nose_3.jpg"],
                        [UIImage imageNamed : @"nose_4.jpg"],
                        [UIImage imageNamed : @"nose_5.jpg"],];
        _mouthsArray = @[[UIImage imageNamed : @"mouth_1.jpg"],
                         [UIImage imageNamed : @"mouth_2.jpg"],
                         [UIImage imageNamed : @"mouth_3.jpg"],
                         [UIImage imageNamed : @"mouth_4.jpg"],
                         [UIImage imageNamed : @"mouth_5.jpg"],];
        
        _currentEyes = _eyesArray.firstObject;
        _currentNoses = _nosesArray.firstObject;
        _currentMouths = _mouthsArray.firstObject;
    }
    return self;
}

- (UIImage *)nextEyes {
    NSUInteger currentEyesIndex = [self.eyesArray indexOfObject:self.currentEyes];
    NSUInteger nextEyesIndex = MIN(currentEyesIndex + 1, self.eyesArray.count - 1);
    UIImage * next =  [self.eyesArray objectAtIndex:nextEyesIndex];
   // UIImage *next = _eyesArray[nextEyesIndex];
    self.currentEyes = next;
    return next;
}

- (UIImage *)nextNoses {
    NSUInteger currentNosesIndex = [self.eyesArray indexOfObject:self.currentNoses];
    NSUInteger nextNosesIndex = MIN(currentNosesIndex + 1, self.nosesArray.count - 1);
    UIImage * next =  [self.nosesArray objectAtIndex:nextNosesIndex];
    // UIImage *next = _nosesArray[nextNosesIndex];
    self.currentNoses = next;
    return next;
}

- (UIImage *)nextMouths {
    NSUInteger currentMouthsIndex = [self.mouthsArray indexOfObject:self.currentMouths];
    NSUInteger nextMouthsIndex = MIN(currentMouthsIndex + 1, self.mouthsArray.count - 1);
    UIImage * next =  [self.mouthsArray objectAtIndex:nextMouthsIndex];
    // UIImage *next = _mouthsArray[nextmouthsIndex];
    self.currentMouths = next;
    return next;
}

- (UIImage *)previousEyes {
    
    NSUInteger currentEyesIndex = [self.eyesArray indexOfObject:self.currentEyes];
    
    if (currentEyesIndex == 0)
        return self.eyesArray[0];
    
    else {
    
    NSUInteger previousEyesIndex = MAX(currentEyesIndex - 1, 0);
    UIImage * previous =  [self.eyesArray objectAtIndex:previousEyesIndex];
    // UIImage *next = _eyesArray[previousEyesIndex];
    self.currentEyes = previous;
    return previous;
        }

}



- (UIImage *)previousNoses {
    
    NSUInteger currentNosesIndex = [self.nosesArray indexOfObject:self.currentNoses];
   
    if (currentNosesIndex == 0)
        return self.nosesArray[0];
    
    else{

    NSUInteger previousNosesIndex = MAX(currentNosesIndex - 1, 0);
    UIImage * previous =  [self.nosesArray objectAtIndex:previousNosesIndex];
    // UIImage *next = _eyesArray[previousEyesIndex];
    self.currentNoses = previous;
    return previous;
    
    }
}


- (UIImage *)previousMouths {
    
    NSUInteger currentMouthsIndex = [self.mouthsArray indexOfObject:self.currentMouths];
    
    if (currentMouthsIndex == 0)
        return self.mouthsArray[0];
    else{
        
    NSUInteger currentMouthsIndex = [self.mouthsArray indexOfObject:self.currentMouths];
    NSUInteger previousMouthesIndex = MAX(currentMouthsIndex - 1, 0);
    UIImage * previous =  [self.mouthsArray objectAtIndex:previousMouthesIndex];
    // UIImage *next = _mouthsArray[previousMouthsIndex];
    self.currentMouths = previous;
    return previous;
    
    }
}


@end
