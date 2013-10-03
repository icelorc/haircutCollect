//
//  fontechVoguesViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/13/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechVoguesViewController.h"

@interface fontechVoguesViewController ()

@end

@implementation fontechVoguesViewController

@synthesize itemArray = _itemArray;
@synthesize detailArray = _detailArray;


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
    self.itemArray = [NSArray arrayWithObjects:@"剪", @"燙", @"染", nil];
    self.detailArray =[NSArray arrayWithObjects:@"剪髮、洗髮、造型", @"燙髮項目、護髮像髮", @"染髮項目、護髮項目", nil];
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
    return [self.itemArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"voguesCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    UILabel *itemLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 30, 15)];
    itemLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    UILabel *telLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 200, 15)];
    telLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:10];
    UILabel *detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 60, 200, 15)];
    detailLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:10];
    
    itemLabel.text = [self.itemArray objectAtIndex:indexPath.section];
    telLabel.text = @"預約專線：02-2702-7088";
    detailLabel.text = [self.detailArray objectAtIndex:indexPath.section];
    
    [cell addSubview:itemLabel];
    [cell addSubview:telLabel];
    [cell addSubview: detailLabel];
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSArray *titleArray;
    NSArray *subTitleArray;
    switch (indexPath.section) {
        case 0:
            titleArray = [NSArray arrayWithObjects:@"Cut 剪髮",@"Shampoo Blowdrying 洗髮 ", @"Dressing 造型", nil];
            subTitleArray = [NSArray arrayWithObjects:@"Stylist, Senior Stylist, Top Stylist, Artistic team", @"Stylist, Senior Stylist, Top Stylist, Artistic team", @"Stylist, Senior Stylist, Top Stylist, Artistic team", nil];
            break;
        case 1:
            titleArray = [NSArray arrayWithObjects:@"燙髮項目", @"護髮項目", nil];
            subTitleArray = [NSArray arrayWithObjects:@"局部燙髮、直燙髮、彈性燙髮、直立燙髮、特殊燙髮", @"染燙前後護理、一般燙髮、魚子醬護髮", nil];
            break;
        case 2:
            titleArray = [NSArray arrayWithObjects:@"染髮項目", @"護髮項目", nil];
            subTitleArray = [NSArray arrayWithObjects:@"挑染、局部染、挑+底染、創意染、洗色、護染", @"染燙前後護理、一把護髮、魚子醬護髮", nil];
            
            break;
        default:
            break;
    }
    
    
    fontechServiceDetailViewController *serviceDetailViewController = [[fontechServiceDetailViewController alloc] initWithTitleArray:titleArray subTitleArray:subTitleArray];
    [self.navigationController pushViewController:serviceDetailViewController animated:YES];
    
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
