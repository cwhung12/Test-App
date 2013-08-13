//
//  MTFeebackViewController.m
//  Multe App
//
//  Created by Hung Tran on 8/13/13.
//
//

#import "MTFeebackViewController.h"

@interface MTFeebackViewController ()

@end

@implementation MTFeebackViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"Notifcation-Feedback";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIndentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier];
        
        UIButton *buttonAdd = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [buttonAdd setFrame:CGRectMake(cell.bounds.size.width - 80.0f, 7.0f, 30.0f, 30.0f)];
        [buttonAdd setTitle:@"+" forState:UIControlStateNormal];
        [cell addSubview:buttonAdd];
        
        UIButton *buttonM = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [buttonM setFrame:CGRectMake(CGRectGetMaxX(buttonAdd.frame) + 5.0f, buttonAdd.frame.origin.y, buttonAdd.frame.size.width, buttonAdd.frame.size.height)];
        [buttonM setTitle:@"-" forState:UIControlStateNormal];
        [cell addSubview:buttonM];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Message %d (score: %d)", indexPath.row, indexPath.row %2];
    
    return cell;
}

@end
