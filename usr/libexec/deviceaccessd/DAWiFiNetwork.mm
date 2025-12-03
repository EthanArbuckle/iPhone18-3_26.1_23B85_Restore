@interface DAWiFiNetwork
- (BOOL)isEqual:(id)equal;
- (id)descriptionWithLevel:(int)level;
- (unint64_t)hash;
@end

@implementation DAWiFiNetwork

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if ([(DAWiFiNetwork *)v6 isMemberOfClass:objc_opt_class()])
    {
      if (self->_SSID)
      {
        sSID = [(DAWiFiNetwork *)v6 SSID];
        if ([sSID isEqualToString:self->_SSID])
        {
          isUnsecured = [(DAWiFiNetwork *)v6 isUnsecured];
          LODWORD(self) = isUnsecured ^ [(DAWiFiNetwork *)self isUnsecured]^ 1;
        }

        else
        {
          LOBYTE(self) = 0;
        }

LABEL_24:

        goto LABEL_25;
      }

      if (self->_wifiAwarePairedID && ([(DAWiFiNetwork *)v6 wifiAwarePairedID], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
      {
        wifiAwarePairedID = [(DAWiFiNetwork *)v6 wifiAwarePairedID];
        uUIDString = [wifiAwarePairedID UUIDString];

        self = [(DAWiFiNetwork *)self wifiAwarePairedID];
        uUIDString2 = [(DAWiFiNetwork *)self UUIDString];

        LOBYTE(self) = [uUIDString isEqualToString:uUIDString2];
      }

      else
      {
        signature = self->_signature;
        if (!signature)
        {
          sSID = [(DAWiFiNetwork *)v6 serviceName];
          serviceName = [(DAWiFiNetwork *)self serviceName];
          if ([sSID isEqualToString:serviceName])
          {
            wifiAwareVendorName = [(DAWiFiNetwork *)v6 wifiAwareVendorName];
            wifiAwareVendorName2 = [(DAWiFiNetwork *)self wifiAwareVendorName];
            if ([wifiAwareVendorName isEqualToString:wifiAwareVendorName2])
            {
              wifiAwareModelName = [(DAWiFiNetwork *)v6 wifiAwareModelName];
              wifiAwareModelName2 = [(DAWiFiNetwork *)self wifiAwareModelName];
              if ([wifiAwareModelName isEqualToString:wifiAwareModelName2])
              {
                [(DAWiFiNetwork *)v6 wifiAwareOTAName];
                v19 = v22 = wifiAwareModelName;
                wifiAwareOTAName = [(DAWiFiNetwork *)self wifiAwareOTAName];
                LOBYTE(self) = [v19 isEqualToString:wifiAwareOTAName];

                wifiAwareModelName = v22;
              }

              else
              {
                LOBYTE(self) = 0;
              }
            }

            else
            {
              LOBYTE(self) = 0;
            }
          }

          else
          {
            LOBYTE(self) = 0;
          }

          goto LABEL_24;
        }

        LOBYTE(self) = signature == [(DAWiFiNetwork *)v6 signature];
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }

LABEL_25:

    goto LABEL_26;
  }

  LOBYTE(self) = 1;
LABEL_26:

  return self;
}

- (unint64_t)hash
{
  serviceName = self->_serviceName;
  if (!serviceName)
  {
    serviceName = self->_SSID;
  }

  return [(NSString *)serviceName hash];
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  wifiAwarePairedID = self->_wifiAwarePairedID;
  if (wifiAwarePairedID)
  {
    v6 = wifiAwarePairedID;
    uUIDString = [(NSUUID *)v6 UUIDString];
    CUAppendF();
    v7 = v4;

    v4 = v7;
  }

  SSID = self->_SSID;
  if (SSID)
  {
    v19 = SSID;
    CUAppendF();
    v9 = v4;

    v4 = v9;
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    v20 = serviceName;
    CUAppendF();
    v11 = v4;

    v4 = v11;
  }

  wifiAwareOTAName = self->_wifiAwareOTAName;
  if (wifiAwareOTAName)
  {
    v21 = wifiAwareOTAName;
    CUAppendF();
    v13 = v4;

    v4 = v13;
  }

  if (self->_unsecured)
  {
    CUAppendF();
    v14 = v4;

    v4 = v14;
  }

  v15 = &stru_10005A2C8;
  if (v4)
  {
    v15 = v4;
  }

  v16 = v15;

  return v16;
}

@end