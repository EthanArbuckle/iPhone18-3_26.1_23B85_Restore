@interface DAWiFiScanDescriptor
- (DAWiFiScanDescriptor)initWithPrefix:(id)a3;
- (DAWiFiScanDescriptor)initWithSSID:(id)a3;
- (DAWiFiScanDescriptor)initWithServiceName:(id)a3 vendorNameMatch:(id)a4 modelNameMatch:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)scanResultPredicate;
@end

@implementation DAWiFiScanDescriptor

- (DAWiFiScanDescriptor)initWithSSID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DAWiFiScanDescriptor;
  v5 = [(DAWiFiScanDescriptor *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v8 = v5;
  }

  return v5;
}

- (DAWiFiScanDescriptor)initWithPrefix:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DAWiFiScanDescriptor;
  v5 = [(DAWiFiScanDescriptor *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    prefix = v5->_prefix;
    v5->_prefix = v6;

    v8 = v5;
  }

  return v5;
}

- (DAWiFiScanDescriptor)initWithServiceName:(id)a3 vendorNameMatch:(id)a4 modelNameMatch:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = DAWiFiScanDescriptor;
  v11 = [(DAWiFiScanDescriptor *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    serviceName = v11->_serviceName;
    v11->_serviceName = v12;

    v14 = [v9 copy];
    wifiAwareVendorNameMatch = v11->_wifiAwareVendorNameMatch;
    v11->_wifiAwareVendorNameMatch = v14;

    v16 = [v10 copy];
    wifiAwareModelNameMatch = v11->_wifiAwareModelNameMatch;
    v11->_wifiAwareModelNameMatch = v16;

    v18 = v11;
  }

  return v11;
}

- (id)scanResultPredicate
{
  v3 = [(DAWiFiScanDescriptor *)self SSID];

  if (v3)
  {
    v4 = @"SELF.networkName ==[c] %@";
    v5 = 40;
LABEL_5:
    v7 = [NSPredicate predicateWithFormat:v4, *(&self->super.isa + v5)];
    goto LABEL_6;
  }

  v6 = [(DAWiFiScanDescriptor *)self prefix];

  if (v6)
  {
    v4 = @"SELF.networkName beginswith %@";
    v5 = 32;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
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

  SSID = self->_SSID;
  if (SSID)
  {
    v16 = SSID;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  prefix = self->_prefix;
  if (prefix)
  {
    v17 = prefix;
    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    v18 = bundleID;
    CUAppendF();
    v10 = v4;

    v4 = v10;
  }

  associationIdentifier = self->_associationIdentifier;
  if (associationIdentifier)
  {
    v19 = associationIdentifier;
    CUAppendF();
    v12 = v4;

    v4 = v12;
  }

  v13 = &stru_10005A2C8;
  if (v4)
  {
    v13 = v4;
  }

  v14 = v13;

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSString *)self->_associationIdentifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_bundleID copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(DADiscoveryConfiguration *)self->_configuration copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSString *)self->_SSID copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_prefix copy];
  v14 = v4[4];
  v4[4] = v13;

  return v4;
}

@end