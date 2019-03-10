#import "LinkedInContactPhotoProvider.h"

@implementation LinkedInContactPhotoProvider
  - (DDNotificationContactPhotoPromiseOffer *)contactPhotoPromiseOfferForNotification:(DDUserNotification *)notification {
    NSString *imageURLStr = [notification.applicationUserInfo valueForKeyPath:@"apu"];
    if (!imageURLStr) return nil;

    NSURL *imageURL = [NSURL URLWithString:imageURLStr];
    if (!imageURL) return nil;

    return [NSClassFromString(@"DDNotificationContactPhotoPromiseOffer") offerDownloadingPromiseWithPhotoIdentifier:imageURLStr fromURL:imageURL];
  }
@end
