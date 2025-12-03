@interface RWIRemotePairingDeviceAuxiliaryMetadataProvider
+ (void)registerBoolMetadataWithDomain:(id)domain key:(id)key value:(BOOL)value;
- (RWIRemotePairingDeviceAuxiliaryMetadataProvider)init;
@end

@implementation RWIRemotePairingDeviceAuxiliaryMetadataProvider

+ (void)registerBoolMetadataWithDomain:(id)domain key:(id)key value:(BOOL)value
{
  domainCopy = domain;
  keyCopy = key;
  _s13webinspectord47RWIRemotePairingDeviceAuxiliaryMetadataProviderC012registerBoolF06domain3key5valueySo8NSStringC_AISbtFZ_0(domainCopy, keyCopy, value);
}

- (RWIRemotePairingDeviceAuxiliaryMetadataProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RWIRemotePairingDeviceAuxiliaryMetadataProvider();
  return [(RWIRemotePairingDeviceAuxiliaryMetadataProvider *)&v3 init];
}

@end