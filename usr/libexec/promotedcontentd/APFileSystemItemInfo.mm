@interface APFileSystemItemInfo
- (BOOL)isEqual:(id)equal;
@end

@implementation APFileSystemItemInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    sub_1003956B8(self, equalCopy, &v7);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end