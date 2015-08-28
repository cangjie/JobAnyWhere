//
//  ContactsCell.h
//  JobAnyWhere
//
//  Created by 苍杰 on 8/19/15.
//
//

#import <UIKit/UIKit.h>

@interface ContactsCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *headImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end
