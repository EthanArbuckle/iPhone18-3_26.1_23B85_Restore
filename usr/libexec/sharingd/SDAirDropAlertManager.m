@interface SDAirDropAlertManager
- (void)activate;
- (void)removedTransfer:(id)a3;
- (void)updatedTransfer:(id)a3;
@end

@implementation SDAirDropAlertManager

- (void)activate
{
  v2 = self;
  sub_1004CDDB8();
}

- (void)updatedTransfer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004CE414(v4);
}

- (void)removedTransfer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004D01A0(v4);
}

@end