@interface SharingInitiatorCertChain
- (SharingInitiatorCertChain)init;
@end

@implementation SharingInitiatorCertChain

- (SharingInitiatorCertChain)init
{
  v14.receiver = self;
  v14.super_class = SharingInitiatorCertChain;
  v2 = [(SharingInitiatorCertChain *)&v14 init];
  v3 = v2;
  if (v2)
  {
    firstSharerEndpointCertData = v2->_firstSharerEndpointCertData;
    v2->_firstSharerEndpointCertData = 0;

    firstSharerIntermediateCertData = v3->_firstSharerIntermediateCertData;
    v3->_firstSharerIntermediateCertData = 0;

    firstSharerExtCACertData = v3->_firstSharerExtCACertData;
    v3->_firstSharerExtCACertData = 0;

    firstSharerServiceProviderIdentifier = v3->_firstSharerServiceProviderIdentifier;
    v3->_firstSharerServiceProviderIdentifier = 0;

    additionalCertServiceProviderIdentifiers = v3->_additionalCertServiceProviderIdentifiers;
    v3->_additionalCertServiceProviderIdentifiers = 0;

    sharingInitiatorCertChainTlv = v3->_sharingInitiatorCertChainTlv;
    v3->_sharingInitiatorCertChainTlv = 0;

    lastSharerEndpointCertData = v3->_lastSharerEndpointCertData;
    v3->_lastSharerEndpointCertData = 0;

    endpointCertTlvArray = v3->_endpointCertTlvArray;
    v3->_endpointCertTlvArray = 0;

    versionInformation = v3->_versionInformation;
    v3->_versionInformation = 0;
  }

  return v3;
}

@end