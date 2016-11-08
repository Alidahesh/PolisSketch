//
//  LPSSketchesDataSource.h
//  PoliceSketch
//
//  Created by Ali Dahesh on 2016-11-07.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LPSSketchesDataSource : NSObject

@property (nonatomic, readonly) UIImage * currentEyes;
- (UIImage *)nextEyes;
- (UIImage *)previousEyes;

@property (nonatomic, readonly) UIImage * currentNoses;
- (UIImage *)nextNoses;
- (UIImage *)previousNoses;

@property (nonatomic, readonly) UIImage * currentMouths;
- (UIImage *)nextMouths;
- (UIImage *)previousMouths;



@end
