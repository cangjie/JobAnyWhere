//
//  ChatViewController.h
//  JobAnyWhere
//
//  Created by 苍杰 on 8/28/15.
//
//

#import <UIKit/UIKit.h>
#import "UIBubbleTableViewDataSource.h"


@interface ChatViewController : UIViewController <UIBubbleTableViewDataSource>
@property (weak, nonatomic) IBOutlet UIBubbleTableView *bubbleTable;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIView *textInputView;

@end
