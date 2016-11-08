//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "LPSSketchesDataSource.h"

@interface LPSViewController ()

@property (nonatomic, strong) LPSSketchesDataSource * sketchesDataSource;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Here is where you will create the buttons & image views and add them to the view.
    
    self.sketchesDataSource = [[LPSSketchesDataSource alloc] init];
    self.eyesImageView.image = self.sketchesDataSource.currentEyes;
}

- (IBAction)nextEyes:(UIButton *)sender {
    self.eyesImageView.image = self.sketchesDataSource.nextEyes;
}

- (IBAction)previousEyes:(UIButton *)sender {
    self.eyesImageView.image = self.sketchesDataSource.previousEyes;
}
    
- (IBAction)nextNoses:(UIButton *)sender {
        self.nosesImageView.image = self.sketchesDataSource.nextNoses;
    }
    
- (IBAction)previousNoses:(UIButton *)sender {
        self.nosesImageView.image = self.sketchesDataSource.previousNoses;
}
- (IBAction)nextMouths:(UIButton *)sender {
        self.mouthsImageView.image = self.sketchesDataSource.nextMouths;
    }
    
- (IBAction)previousMouths:(UIButton *)sender {
        self.mouthsImageView.image = self.sketchesDataSource.previousMouths;
}

@end
