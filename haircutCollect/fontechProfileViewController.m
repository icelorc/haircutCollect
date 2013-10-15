//
//  fontechProfileViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/17/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechProfileViewController.h"

@interface fontechProfileViewController ()

@end

@implementation fontechProfileViewController
@synthesize phoneButton = _phoneButton;
@synthesize addressButton = _addressButton;
@synthesize shareButton = _shareButton;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)phoneButtonAction:(id)sender {


    UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Flux Collection Hair Boutique" message: @"02-27027088" delegate: self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK",nil];
    
    [alert show];

}

- (IBAction)addressButtonAction:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://maps.apple.com/?daddr=2F.,+No.263,+Sec.+1,+Dunhua+S+Rd.,+Da'an+Dist,+Taipei+City"]];
    
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger )buttonIndex {
    
    if (buttonIndex == 0) {
      
    
    } else {
         [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:0227027088"]];
    }

}

- (IBAction) shareAction:(id)sender {

    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[@"TEST"] applicationActivities:nil];
    [self presentViewController:activityViewController animated:YES completion:nil];
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
