
#import "TabBarController.h"


@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(bool)tabBar:(UITabBar *)aTabBar didSelectItem:(UITabBarItem *)item{
    NSUInteger selectedIndex = [aTabBar.items indexOfObject:item];
    if (selectedIndex==1) {
        [GlobalValues setStartFileName:@"index.html"];
        [GlobalValues setFolderName:@"www"];
        
    }
    if (selectedIndex==2){
        [GlobalValues setStartFileName:@"index.html"];
        [GlobalValues setFolderName:@"www/custom_cordova"];
        
    }
    if (selectedIndex==0){
        
    }
    return YES;
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
