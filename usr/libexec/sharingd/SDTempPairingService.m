@interface SDTempPairingService
- (void)handleRapportIdentitiesChanged;
@end

@implementation SDTempPairingService

- (void)handleRapportIdentitiesChanged
{
  v2 = *&self->_anon_0[OBJC_IVAR____TtC16DaemoniOSLibrary20SDTempPairingService_client];
  if (v2)
  {

    v3 = v2;
    sub_100421110(v3);
  }
}

@end