@interface RWIRemotePairingDeviceAuxiliaryMetadataProvider
+ (void)registerBoolMetadataWithDomain:(id)a3 key:(id)a4 value:(BOOL)a5;
- (RWIRemotePairingDeviceAuxiliaryMetadataProvider)init;
@end

@implementation RWIRemotePairingDeviceAuxiliaryMetadataProvider

+ (void)registerBoolMetadataWithDomain:(id)a3 key:(id)a4 value:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  _s13webinspectord47RWIRemotePairingDeviceAuxiliaryMetadataProviderC012registerBoolF06domain3key5valueySo8NSStringC_AISbtFZ_0(v7, v8, a5);
}

- (RWIRemotePairingDeviceAuxiliaryMetadataProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RWIRemotePairingDeviceAuxiliaryMetadataProvider();
  return [(RWIRemotePairingDeviceAuxiliaryMetadataProvider *)&v3 init];
}

@end