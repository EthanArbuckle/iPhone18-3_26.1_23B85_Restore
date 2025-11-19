@interface KeySharingInvitation
- (KeySharingInvitation)init;
@end

@implementation KeySharingInvitation

- (KeySharingInvitation)init
{
  v12.receiver = self;
  v12.super_class = KeySharingInvitation;
  v2 = [(KeySharingInvitation *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(EndpointConfigForSharing);
    endpointConfig = v2->_endpointConfig;
    v2->_endpointConfig = v3;

    v5 = objc_alloc_init(SharingKeyConfig);
    keyConfig = v2->_keyConfig;
    v2->_keyConfig = v5;

    v7 = objc_alloc_init(SharingInitiatorCertChain);
    initiatorCertChain = v2->_initiatorCertChain;
    v2->_initiatorCertChain = v7;

    invitationTlv = v2->_invitationTlv;
    v2->_invitationTlv = 0;

    versionInformation = v2->_versionInformation;
    v2->_versionInformation = 0;
  }

  return v2;
}

@end