//
//  UILabel+PitchAnimatedLabel.m
//  iPitch V2
//
//  Created by Satheeshwaran on 7/15/13.
//  Copyright (c) 2013 Cognizant. All rights reserved.
//

#import "UILabel+PitchAnimatedLabel.h"

@implementation UILabel (PitchAnimatedLabel)


- (void)setText:(NSString *)text animated:(BOOL)animationParameter
{
    
    if(animationParameter && ![text isEqualToString:self.text])
    {
        [UIView beginAnimations:@"animateText" context:nil];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationDuration:0.5f];
        self.text=@"";
        [self setAlpha:0];
        self.text=text;
        [self setAlpha:1];
        [UIView commitAnimations];
    }
}
@end
