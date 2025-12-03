@interface NSURL
- (BOOL)rd_isExcludedFromBackup;
- (void)setRd_isExcludedFromBackup:(BOOL)backup;
@end

@implementation NSURL

- (BOOL)rd_isExcludedFromBackup
{
  selfCopy = self;
  isExcludedFrom = NSURL.rd_isExcludedFromBackup.getter();

  return isExcludedFrom & 1;
}

- (void)setRd_isExcludedFromBackup:(BOOL)backup
{
  selfCopy = self;
  NSURL.rd_isExcludedFromBackup.setter(backup);
}

@end