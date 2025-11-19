@interface KmlEndpointCreationConfig
- (KmlEndpointCreationConfig)init;
@end

@implementation KmlEndpointCreationConfig

- (KmlEndpointCreationConfig)init
{
  v19.receiver = self;
  v19.super_class = KmlEndpointCreationConfig;
  v2 = [(KmlEndpointCreationConfig *)&v19 init];
  if (v2)
  {
    v3 = +[NSMutableData data];
    apduData = v2->_apduData;
    v2->_apduData = v3;

    v5 = +[NSMutableData data];
    attestationData = v2->_attestationData;
    v2->_attestationData = v5;

    publicKeyCertData = v2->_publicKeyCertData;
    v2->_publicKeyCertData = 0;

    chainCertsData = v2->_chainCertsData;
    v2->_chainCertsData = 0;

    rootCertData = v2->_rootCertData;
    v2->_rootCertData = 0;

    mailboxMappingData = v2->_mailboxMappingData;
    v2->_mailboxMappingData = 0;

    deviceConfigData = v2->_deviceConfigData;
    v2->_deviceConfigData = 0;

    endpointCreationData = v2->_endpointCreationData;
    v2->_endpointCreationData = 0;

    endpointCreationTLVs = v2->_endpointCreationTLVs;
    v2->_endpointCreationTLVs = 0;

    deviceConfigTlvs = v2->_deviceConfigTlvs;
    v2->_deviceConfigTlvs = 0;

    v2->_keyConfigReceived = 0;
    v2->_receivedEndOfKeyConfigTag = 0;
    vehicleReaderIdentifier = v2->_vehicleReaderIdentifier;
    v2->_vehicleReaderIdentifier = 0;

    v16 = [[NSSet alloc] initWithArray:&off_1004DC830];
    endpointConfigurationRequiredTagsSet = v2->_endpointConfigurationRequiredTagsSet;
    v2->_endpointConfigurationRequiredTagsSet = v16;
  }

  return v2;
}

@end