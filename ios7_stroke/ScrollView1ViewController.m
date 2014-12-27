//
//  ScrollView1ViewController.m
//  ios7_stroke
//
//  Created by Robert Guthrie on 4/23/14.
//  Copyright (c) 2014 Robert Guthrie. All rights reserved.
//

#import "ScrollView1ViewController.h"

@interface ScrollView1ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *ButtonOutlet;

@end

@implementation ScrollView1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableAttributedString *title =
        [[NSMutableAttributedString  alloc] initWithString:self.ButtonOutlet.currentTitle];
    
    
    
#if 0
    [title setAttributes:@{  NSStrokeWidthAttributeName : @3,
                             NSStrokeColorAttributeName : self.ButtonOutlet.tintColor }
                   range:NSMakeRange(0, [title length])];
#endif
    
    [title setAttributes:@{  NSStrokeWidthAttributeName : @3 }
                   range:NSMakeRange(0, [title length])];
 
    
    
    [self.ButtonOutlet setAttributedTitle:title forState:UIControlStateNormal];
}

@end
