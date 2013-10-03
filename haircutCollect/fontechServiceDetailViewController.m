//
//  fontechServiceDetailViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/26/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechServiceDetailViewController.h"

@interface fontechServiceDetailViewController ()

@end

@implementation fontechServiceDetailViewController

@synthesize titleArray = _titleArray;
@synthesize subTitleArray = _subTitleArray;

- (id)initWithTitleArray:(NSArray *)titleArray subTitleArray:(NSArray *)subTitleArray {
    if (self) {
        self = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"fontechServiceDetailViewController"];
        self.titleArray = [NSArray arrayWithArray:titleArray];
        self.subTitleArray = [NSArray arrayWithArray:subTitleArray];
    }
    
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    
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

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 11.0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [self.titleArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"serviceDetailCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    UILabel *itemLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 200, 15)];
    itemLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    UILabel *detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 60, 300, 15)];
    detailLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:10];
    
    itemLabel.text = [self.titleArray objectAtIndex:indexPath.section];
    detailLabel.text = [self.subTitleArray objectAtIndex:indexPath.section];
    
    [cell addSubview:itemLabel];
    [cell addSubview:detailLabel];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    fontechServiceDetailPriceViewController *serviceDetailPriceViewController = [[fontechServiceDetailPriceViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:serviceDetailPriceViewController animated:YES];
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
