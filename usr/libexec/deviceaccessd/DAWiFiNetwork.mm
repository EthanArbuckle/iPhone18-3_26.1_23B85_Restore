@interface DAWiFiNetwork
- (BOOL)isEqual:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (unint64_t)hash;
@end

@implementation DAWiFiNetwork

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if ([(DAWiFiNetwork *)v6 isMemberOfClass:objc_opt_class()])
    {
      if (self->_SSID)
      {
        v7 = [(DAWiFiNetwork *)v6 SSID];
        if ([v7 isEqualToString:self->_SSID])
        {
          v8 = [(DAWiFiNetwork *)v6 isUnsecured];
          LODWORD(self) = v8 ^ [(DAWiFiNetwork *)self isUnsecured]^ 1;
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
        v10 = [(DAWiFiNetwork *)v6 wifiAwarePairedID];
        v11 = [v10 UUIDString];

        self = [(DAWiFiNetwork *)self wifiAwarePairedID];
        v12 = [(DAWiFiNetwork *)self UUIDString];

        LOBYTE(self) = [v11 isEqualToString:v12];
      }

      else
      {
        signature = self->_signature;
        if (!signature)
        {
          v7 = [(DAWiFiNetwork *)v6 serviceName];
          v14 = [(DAWiFiNetwork *)self serviceName];
          if ([v7 isEqualToString:v14])
          {
            v15 = [(DAWiFiNetwork *)v6 wifiAwareVendorName];
            v16 = [(DAWiFiNetwork *)self wifiAwareVendorName];
            if ([v15 isEqualToString:v16])
            {
              v17 = [(DAWiFiNetwork *)v6 wifiAwareModelName];
              v18 = [(DAWiFiNetwork *)self wifiAwareModelName];
              if ([v17 isEqualToString:v18])
              {
                [(DAWiFiNetwork *)v6 wifiAwareOTAName];
                v19 = v22 = v17;
                v20 = [(DAWiFiNetwork *)self wifiAwareOTAName];
                LOBYTE(self) = [v19 isEqualToString:v20];

                v17 = v22;
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

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
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
    v18 = [(NSUUID *)v6 UUIDString];
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