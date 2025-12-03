@interface SDAirDropAlertManager
- (void)activate;
- (void)removedTransfer:(id)transfer;
- (void)updatedTransfer:(id)transfer;
@end

@implementation SDAirDropAlertManager

- (void)activate
{
  selfCopy = self;
  sub_1004CDDB8();
}

- (void)updatedTransfer:(id)transfer
{
  transferCopy = transfer;
  selfCopy = self;
  sub_1004CE414(transferCopy);
}

- (void)removedTransfer:(id)transfer
{
  transferCopy = transfer;
  selfCopy = self;
  sub_1004D01A0(transferCopy);
}

@end