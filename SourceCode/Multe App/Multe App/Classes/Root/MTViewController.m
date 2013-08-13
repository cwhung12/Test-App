//
//  MTViewController.m
//  Multe App
//
//  Created by Hung Tran on 8/12/13.
//
//

#import "MTViewController.h"
#import "MTSettingsViewController.h"
#import "MTFeebackViewController.h"
#import "MTParkViewController.h"


@interface MTViewController ()

- (IBAction)pressParkManage:(id)sender;
- (IBAction)pressFeedback:(id)sender;
- (IBAction)pressSettings:(id)sender;

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"Main";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Actions

- (IBAction)pressParkManage:(id)sender {
    MTParkViewController *parkViewController = [[MTParkViewController alloc] init];
    [self.navigationController pushViewController:parkViewController animated:YES];
}

- (IBAction)pressFeedback:(id)sender {
    MTFeebackViewController *feebackViewController = [[MTFeebackViewController alloc] init];
    [self.navigationController pushViewController:feebackViewController animated:YES];
}

- (IBAction)pressSettings:(id)sender {
    MTSettingsViewController *settingsViewController = [[MTSettingsViewController alloc] init];
    [self.navigationController pushViewController:settingsViewController animated:YES];
}

@end
