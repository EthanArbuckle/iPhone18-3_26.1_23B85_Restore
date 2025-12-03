@interface UNMutableNotificationCategory
- (void)addPrivateOptions:(unint64_t)options;
@end

@implementation UNMutableNotificationCategory

- (void)addPrivateOptions:(unint64_t)options
{
  v4 = [(UNMutableNotificationCategory *)self options]| options;

  [(UNMutableNotificationCategory *)self setOptions:v4];
}

@end