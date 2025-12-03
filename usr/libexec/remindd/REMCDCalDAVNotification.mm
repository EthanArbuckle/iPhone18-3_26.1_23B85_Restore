@interface REMCDCalDAVNotification
- (BOOL)isConnectedToAccountObject:(id)object;
@end

@implementation REMCDCalDAVNotification

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  owner = [(REMCDCalDAVNotification *)self owner];
  v6 = [owner isConnectedToAccountObject:objectCopy];

  return v6;
}

@end