@interface MIBUNetworkInfo
+ (id)queryNetworkInfo;
- (MIBUNetworkInfo)init;
- (id)description;
@end

@implementation MIBUNetworkInfo

- (MIBUNetworkInfo)init
{
  v5.receiver = self;
  v5.super_class = MIBUNetworkInfo;
  v2 = [(MIBUNetworkInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUNetworkInfo *)v2 setNetworkName:0];
    [(MIBUNetworkInfo *)v3 setBSSID:0];
    [(MIBUNetworkInfo *)v3 setRSSI:0];
    [(MIBUNetworkInfo *)v3 setNoise:0];
    [(MIBUNetworkInfo *)v3 setChannel:-1];
    [(MIBUNetworkInfo *)v3 setChannelWidth:0];
    [(MIBUNetworkInfo *)v3 setChannelBand:0];
    [(MIBUNetworkInfo *)v3 setPHYMode:0];
    [(MIBUNetworkInfo *)v3 setNumberOfSpatialStreams:0];
    [(MIBUNetworkInfo *)v3 setMCSIndex:0];
    [(MIBUNetworkInfo *)v3 setIPV4Address:0];
    [(MIBUNetworkInfo *)v3 setIPV6Address:0];
  }

  return v3;
}

+ (id)queryNetworkInfo
{
  v2 = objc_alloc_init(MIBUNetworkInfo);
  v3 = objc_alloc_init(CWFInterface);
  [v3 activate];
  v4 = [v3 networkName];
  [(MIBUNetworkInfo *)v2 setNetworkName:v4];

  v5 = [v3 BSSID];
  [(MIBUNetworkInfo *)v2 setBSSID:v5];

  -[MIBUNetworkInfo setRSSI:](v2, "setRSSI:", [v3 RSSI]);
  -[MIBUNetworkInfo setNoise:](v2, "setNoise:", [v3 noise]);
  -[MIBUNetworkInfo setPHYMode:](v2, "setPHYMode:", [v3 PHYMode]);
  -[MIBUNetworkInfo setNumberOfSpatialStreams:](v2, "setNumberOfSpatialStreams:", [v3 numberOfSpatialStreams]);
  -[MIBUNetworkInfo setMCSIndex:](v2, "setMCSIndex:", [v3 MCSIndex]);
  v6 = [v3 MACAddress];
  [(MIBUNetworkInfo *)v2 setMACAddress:v6];

  v7 = [v3 IPv4Addresses];
  v8 = [v7 firstObject];
  [(MIBUNetworkInfo *)v2 setIPV4Address:v8];

  v9 = [v3 IPv6Addresses];
  v10 = [v9 firstObject];
  [(MIBUNetworkInfo *)v2 setIPV6Address:v10];

  v11 = [v3 channel];

  if (v11)
  {
    v12 = [v3 channel];
    -[MIBUNetworkInfo setChannel:](v2, "setChannel:", [v12 channel]);

    v13 = [v3 channel];
    -[MIBUNetworkInfo setChannelWidth:](v2, "setChannelWidth:", [v13 width]);

    v14 = [v3 channel];
    -[MIBUNetworkInfo setChannelBand:](v2, "setChannelBand:", [v14 band]);
  }

  [v3 invalidate];

  return v2;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"<%@ : \n", v5];
  [v3 appendString:v6];

  v7 = [(MIBUNetworkInfo *)self networkName];
  v8 = [NSString stringWithFormat:@"\tNetwork Name : %@\n", v7];
  [v3 appendString:v8];

  v9 = [(MIBUNetworkInfo *)self BSSID];
  v10 = [NSString stringWithFormat:@"\tBSSID : %@\n", v9];
  [v3 appendString:v10];

  v11 = [NSNumber numberWithInteger:[(MIBUNetworkInfo *)self RSSI]];
  v12 = [NSString stringWithFormat:@"\tRSSI : %@\n", v11];
  [v3 appendString:v12];

  v13 = [NSNumber numberWithInteger:[(MIBUNetworkInfo *)self noise]];
  v14 = [NSString stringWithFormat:@"\tNoise : %@\n", v13];
  [v3 appendString:v14];

  v15 = [NSString stringWithFormat:@"\tPHYMode : 0x%lX\n", [(MIBUNetworkInfo *)self PHYMode]];
  [v3 appendString:v15];

  v16 = [NSNumber numberWithUnsignedInteger:[(MIBUNetworkInfo *)self numberOfSpatialStreams]];
  v17 = [NSString stringWithFormat:@"\t#SpatialStreams : %@\n", v16];
  [v3 appendString:v17];

  v18 = [NSNumber numberWithUnsignedInteger:[(MIBUNetworkInfo *)self MCSIndex]];
  v19 = [NSString stringWithFormat:@"\tMCSIndex : %@\n", v18];
  [v3 appendString:v19];

  v20 = [NSNumber numberWithInteger:[(MIBUNetworkInfo *)self channel]];
  v21 = [NSString stringWithFormat:@"\tChannel : %@\n", v20];
  [v3 appendString:v21];

  v22 = [NSNumber numberWithUnsignedInteger:[(MIBUNetworkInfo *)self channelWidth]];
  v23 = [NSString stringWithFormat:@"\tChannel Width: %@\n", v22];
  [v3 appendString:v23];

  v24 = [NSNumber numberWithUnsignedInteger:[(MIBUNetworkInfo *)self channelBand]];
  v25 = [NSString stringWithFormat:@"\tChannel Band: %@\n", v24];
  [v3 appendString:v25];

  v26 = [(MIBUNetworkInfo *)self MACAddress];
  v27 = [NSString stringWithFormat:@"\tMACAddress : %@\n", v26];
  [v3 appendString:v27];

  v28 = [(MIBUNetworkInfo *)self iPV4Address];
  v29 = [NSString stringWithFormat:@"\tIPv4 : %@\n", v28];
  [v3 appendString:v29];

  v30 = [(MIBUNetworkInfo *)self iPV6Address];
  v31 = [NSString stringWithFormat:@"\tIPv6 : %@\n", v30];
  [v3 appendString:v31];

  v32 = [NSString stringWithFormat:@">"];
  [v3 appendString:v32];

  v33 = [NSString stringWithString:v3];

  return v33;
}

@end