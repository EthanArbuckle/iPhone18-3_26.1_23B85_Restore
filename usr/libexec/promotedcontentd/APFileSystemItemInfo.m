@interface APFileSystemItemInfo
- (BOOL)isEqual:(id)a3;
@end

@implementation APFileSystemItemInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    sub_1003956B8(self, v4, &v7);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end