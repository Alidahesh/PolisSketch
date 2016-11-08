//
//  LPSViewController.h
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LPSViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *eyesImageView;
@property (weak, nonatomic) IBOutlet UIButton *eyesLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *eyesRightButton;


@property (weak, nonatomic) IBOutlet UIImageView *nosesImageView;
@property (weak, nonatomic) IBOutlet UIButton *nosesLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *nosesRightButton;



@property (weak, nonatomic) IBOutlet UIImageView *mouthsImageView;
@property (weak, nonatomic) IBOutlet UIButton *mouthsLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *mouthsRightButton;

@end
