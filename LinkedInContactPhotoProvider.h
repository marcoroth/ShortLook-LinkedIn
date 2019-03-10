#import "ShortLook-API.h"

@interface LinkedInContactPhotoProvider : NSObject <DDNotificationContactPhotoProviding>
  - (DDNotificationContactPhotoPromiseOffer *)contactPhotoPromiseOfferForNotification:(DDUserNotification *)notification;
@end
