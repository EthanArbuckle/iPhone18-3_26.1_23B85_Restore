@interface NFRoutingConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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
  v10 = [(NFRoutingConfig *)self wantsIsoDepToHost];
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

  if (v10)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4 || [(NFRoutingConfig *)v4 isMemberOfClass:objc_opt_class()]&& sub_10004B630(self, v4) && self->_fieldDetectType == v4->_fieldDetectType;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NFRoutingConfig allocWithZone:a3];
  v5 = self;
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NFRoutingConfig;
    v6 = [(NFRoutingConfig *)&v8 init];
    v4 = v6;
    if (v6)
    {
      v6->_wantsSEReader = v5->_wantsSEReader;
      v6->_wantsExpress = v5->_wantsExpress;
      v6->_wantsDisableStandbyInExpress = v5->_wantsDisableStandbyInExpress;
      v6->_pollingType = v5->_pollingType;
      v6->_cardEmulationType = v5->_cardEmulationType;
      v6->_hostMode = v5->_hostMode;
      v6->_embeddedMode = v5->_embeddedMode;
      v6->_fieldDetectType = v5->_fieldDetectType;
      v6->_pollingDuration = v5->_pollingDuration;
      v6->_polling = v5->_polling;
      v6->_tagDiscoveryConfig = v5->_tagDiscoveryConfig;
      v6->_fdOn = v5->_fdOn;
      objc_storeStrong(&v6->_lpcdEcpFrame, v5->_lpcdEcpFrame);
    }
  }

  return v4;
}

@end