@interface DAWiFiScanDescriptor
- (DAWiFiScanDescriptor)initWithPrefix:(id)prefix;
- (DAWiFiScanDescriptor)initWithSSID:(id)d;
- (DAWiFiScanDescriptor)initWithServiceName:(id)name vendorNameMatch:(id)match modelNameMatch:(id)nameMatch;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (id)scanResultPredicate;
@end

@implementation DAWiFiScanDescriptor

- (DAWiFiScanDescriptor)initWithSSID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = DAWiFiScanDescriptor;
  v5 = [(DAWiFiScanDescriptor *)&v10 init];
  if (v5)
  {
    v6 = [dCopy copy];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v8 = v5;
  }

  return v5;
}

- (DAWiFiScanDescriptor)initWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  v10.receiver = self;
  v10.super_class = DAWiFiScanDescriptor;
  v5 = [(DAWiFiScanDescriptor *)&v10 init];
  if (v5)
  {
    v6 = [prefixCopy copy];
    prefix = v5->_prefix;
    v5->_prefix = v6;

    v8 = v5;
  }

  return v5;
}

- (DAWiFiScanDescriptor)initWithServiceName:(id)name vendorNameMatch:(id)match modelNameMatch:(id)nameMatch
{
  nameCopy = name;
  matchCopy = match;
  nameMatchCopy = nameMatch;
  v20.receiver = self;
  v20.super_class = DAWiFiScanDescriptor;
  v11 = [(DAWiFiScanDescriptor *)&v20 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    serviceName = v11->_serviceName;
    v11->_serviceName = v12;

    v14 = [matchCopy copy];
    wifiAwareVendorNameMatch = v11->_wifiAwareVendorNameMatch;
    v11->_wifiAwareVendorNameMatch = v14;

    v16 = [nameMatchCopy copy];
    wifiAwareModelNameMatch = v11->_wifiAwareModelNameMatch;
    v11->_wifiAwareModelNameMatch = v16;

    v18 = v11;
  }

  return v11;
}

- (id)scanResultPredicate
{
  sSID = [(DAWiFiScanDescriptor *)self SSID];

  if (sSID)
  {
    v4 = @"SELF.networkName ==[c] %@";
    v5 = 40;
LABEL_5:
    v7 = [NSPredicate predicateWithFormat:v4, *(&self->super.isa + v5)];
    goto LABEL_6;
  }

  prefix = [(DAWiFiScanDescriptor *)self prefix];

  if (prefix)
  {
    v4 = @"SELF.networkName beginswith %@";
    v5 = 32;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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