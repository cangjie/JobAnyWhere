

#import <Foundation/Foundation.h>


@interface MyDownloader : NSObject {
    NSURLConnection* connection;
    NSURLRequest* request;
    NSMutableData* receivedData;
}
@property (nonatomic, strong) NSURLConnection* connection;
@property (nonatomic, copy) NSURLRequest* request;
@property (nonatomic, strong) NSMutableData* receivedData;
- (id) initWithRequest: (NSURLRequest*) req;
@end
