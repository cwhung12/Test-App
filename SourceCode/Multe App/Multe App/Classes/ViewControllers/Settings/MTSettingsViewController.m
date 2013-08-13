//
//  MTSettingsViewController.m
//  Multe App
//
//  Created by Hung Tran on 8/13/13.
//
//

#import "MTSettingsViewController.h"

@interface MTSettingsViewController ()

@property (weak, nonatomic) IBOutlet UISlider *sliderCustomizing;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentNotification;

- (IBAction)pressShareButton:(id)sender;
- (IBAction)pressLikeButton:(id)sender;
- (IBAction)segmentedChangedValue:(id)sender;

@end


@implementation MTSettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"Settings";
    
    _sliderCustomizing.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressShareButton:(id)sender {
}

- (IBAction)pressLikeButton:(id)sender {
}

- (IBAction)segmentedChangedValue:(id)sender {
    if (_segmentNotification.selectedSegmentIndex == 0) {
        _sliderCustomizing.hidden = YES;
    } else {
        _sliderCustomizing.hidden = NO;
    }
}

- (void)viewDidUnload {
    [self setSliderCustomizing:nil];
    [self setSegmentNotification:nil];
    [super viewDidUnload];
}
@end
