@interface REMCDSharee
- (BOOL)isConnectedToAccountObject:(id)object;
@end

@implementation REMCDSharee

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  list = [(REMCDSharee *)self list];
  v6 = [list isConnectedToAccountObject:objectCopy];

  return v6;
}

@end