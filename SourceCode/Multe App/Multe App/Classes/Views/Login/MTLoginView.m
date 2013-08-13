//
//  MTLoginView.m
//  Multe App
//
//  Created by Hung Tran on 8/13/13.
//
//

#import "MTLoginView.h"

@interface MTLoginView ()

- (IBAction)doLogin:(id)sender;

@end


@implementation MTLoginView

+ (MTLoginView *)loginView {
    return (MTLoginView *)[[[NSBundle mainBundle] loadNibNamed:@"MTLoginView" owner:self options:nil] lastObject];
}

- (void)setUpLoginView {
    [self setFrameOriginY:20.0f]; 
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpLoginView];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setUpLoginView];
}


#pragma mark - Actions

- (IBAction)doLogin:(id)sender {
    [UIView animateWithDuration:0.3f delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.alpha = 0.0f;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

@end
