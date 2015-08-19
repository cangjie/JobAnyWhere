//
//  LoginViewController.m
//  JobAnyWhere
//
//  Created by 苍杰 on 8/14/15.
//
//

#import "LoginViewController.h"
#import "MyImageDownloader.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    static BOOL added = NO;
    if (!added) {
        added = YES;
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(imageDownloaded:) name:@"imageDownloaded" object:nil];
    }

    
    NSString* headImageUrl = @"http://www.luqinwenda.com/data/upload/avatar/ca/43/10/original_90_90.jpg?v1406010809";
    
    NSURLRequest* req = [NSURLRequest requestWithURL:[NSURL URLWithString:headImageUrl] cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:10];
    MyImageDownloader* idl = [[MyImageDownloader alloc] initWithRequest:req];
    _headImageView.image = idl.image;
 }



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) imageDownloaded: (NSNotification*) n {
    MyImageDownloader* d = [n object];
    _headImageView.image = d.image;
}

@end
