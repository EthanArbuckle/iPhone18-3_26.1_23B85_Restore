@interface UNMutableNotificationCategory
- (void)addPrivateOptions:(unint64_t)a3;
@end

@implementation UNMutableNotificationCategory

- (void)addPrivateOptions:(unint64_t)a3
{
  v4 = [(UNMutableNotificationCategory *)self options]| a3;

  [(UNMutableNotificationCategory *)self setOptions:v4];
}

@end