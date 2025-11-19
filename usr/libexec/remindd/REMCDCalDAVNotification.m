@interface REMCDCalDAVNotification
- (BOOL)isConnectedToAccountObject:(id)a3;
@end

@implementation REMCDCalDAVNotification

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = [(REMCDCalDAVNotification *)self owner];
  v6 = [v5 isConnectedToAccountObject:v4];

  return v6;
}

@end