@interface NSURL
- (BOOL)rd_isExcludedFromBackup;
- (void)setRd_isExcludedFromBackup:(BOOL)a3;
@end

@implementation NSURL

- (BOOL)rd_isExcludedFromBackup
{
  v2 = self;
  isExcludedFrom = NSURL.rd_isExcludedFromBackup.getter();

  return isExcludedFrom & 1;
}

- (void)setRd_isExcludedFromBackup:(BOOL)a3
{
  v4 = self;
  NSURL.rd_isExcludedFromBackup.setter(a3);
}

@end