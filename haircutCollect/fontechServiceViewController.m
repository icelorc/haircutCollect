//
//  fontechServiceViewController.m
//  haircutCollect
//
//  Created by Robert Huang on 9/13/13.
//  Copyright (c) 2013 Robert Huang. All rights reserved.
//

#import "fontechServiceViewController.h"

@interface fontechServiceViewController ()

@end

@implementation fontechServiceViewController

@synthesize nameArray = _nameArray;
@synthesize titleArray = _titleArray;
@synthesize imageArray = _imageArray;

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
    
    self.nameArray = [NSArray arrayWithObjects:@"Ivan Huang", @"John Chen", @"Betty Yeh", @"Ging Shih", @"Louis Chen", nil];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [self.nameArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"serviceCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    UIImageView *designerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 0, 85, 85)];
    designerImageView.image = [UIImage imageNamed:@"image1.jpg"];

    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 15, 150, 15)];
    nameLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:14];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 35, 150, 15)];
    titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:10];
    UILabel *telLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 47, 150, 15)];
    telLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:10];
    
    nameLabel.text = [self.nameArray objectAtIndex:indexPath.section];
    titleLabel.text = @"Artistic Director";
    telLabel.text = @"預約專線：02 -2702-7088";
    
    
    [cell addSubview:designerImageView];
    [cell addSubview:nameLabel];
    [cell addSubview:titleLabel];
    [cell addSubview:telLabel];
    
    return cell;
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


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 

@end
