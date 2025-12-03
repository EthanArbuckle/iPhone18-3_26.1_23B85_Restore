@interface DIPDeviceInfo
- (void)phoneNumberChanged:(id)changed;
@end

@implementation DIPDeviceInfo

- (void)phoneNumberChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_100594FC8(changedCopy);
}

@end