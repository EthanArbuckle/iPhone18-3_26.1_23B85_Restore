@interface REMCDSharee
- (BOOL)isConnectedToAccountObject:(id)a3;
@end

@implementation REMCDSharee

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = [(REMCDSharee *)self list];
  v6 = [v5 isConnectedToAccountObject:v4];

  return v6;
}

@end