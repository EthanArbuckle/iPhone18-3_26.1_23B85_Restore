@interface NFRoutingConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NFRoutingConfig

- (id)description
{
  fieldDetectType = self->_fieldDetectType;
  v4 = off_100316270[[(NFRoutingConfig *)self cardEmulationType]];
  wantsExpress = self->_wantsExpress;
  pollingType = self->_pollingType;
  hostMode = self->_hostMode;
  embeddedMode = self->_embeddedMode;
  pollingDuration = self->_pollingDuration;
  wantsIsoDepToHost = [(NFRoutingConfig *)self wantsIsoDepToHost];
  lpcdEcpFrame = self->_lpcdEcpFrame;
  if (!lpcdEcpFrame)
  {
    lpcdEcpFrame = &stru_10031EA18;
  }

  v12 = "no";
  if (self->_wantsSEReader)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  if (wantsIsoDepToHost)
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  if (pollingType == 2)
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  if (wantsExpress)
  {
    v12 = "yes";
  }

  return [NSString stringWithFormat:@"fieldDetect=%lu cardType=%s express=%s lpcd=%s pollingType=%lu duration=%d host=%lu embedded=%lu isoDepToHostEnable=%s wantsESEReader=%s lpcdEcpFrame=%@", fieldDetectType, v4, v12, v15, pollingType, pollingDuration, hostMode, embeddedMode, v14, v13, lpcdEcpFrame];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy || [(NFRoutingConfig *)equalCopy isMemberOfClass:objc_opt_class()]&& sub_10004B630(self, equalCopy) && self->_fieldDetectType == equalCopy->_fieldDetectType;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NFRoutingConfig allocWithZone:zone];
  selfCopy = self;
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NFRoutingConfig;
    v6 = [(NFRoutingConfig *)&v8 init];
    v4 = v6;
    if (v6)
    {
      v6->_wantsSEReader = selfCopy->_wantsSEReader;
      v6->_wantsExpress = selfCopy->_wantsExpress;
      v6->_wantsDisableStandbyInExpress = selfCopy->_wantsDisableStandbyInExpress;
      v6->_pollingType = selfCopy->_pollingType;
      v6->_cardEmulationType = selfCopy->_cardEmulationType;
      v6->_hostMode = selfCopy->_hostMode;
      v6->_embeddedMode = selfCopy->_embeddedMode;
      v6->_fieldDetectType = selfCopy->_fieldDetectType;
      v6->_pollingDuration = selfCopy->_pollingDuration;
      v6->_polling = selfCopy->_polling;
      v6->_tagDiscoveryConfig = selfCopy->_tagDiscoveryConfig;
      v6->_fdOn = selfCopy->_fdOn;
      objc_storeStrong(&v6->_lpcdEcpFrame, selfCopy->_lpcdEcpFrame);
    }
  }

  return v4;
}

@end