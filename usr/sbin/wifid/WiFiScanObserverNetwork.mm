@interface WiFiScanObserverNetwork
- (NSString)description;
- (WiFiScanObserverNetwork)initWithWiFiNetworkRef:(__WiFiNetwork *)ref;
- (void)dealloc;
@end

@implementation WiFiScanObserverNetwork

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [NSMutableString stringWithFormat:@"<%@ : %p ", NSStringFromClass(v3), self];
  [(NSMutableString *)v4 appendFormat:@"SSID='%@' ", [(WiFiScanObserverNetwork *)self SSID]];
  [(NSMutableString *)v4 appendFormat:@"BSSID='%@' ", [(WiFiScanObserverNetwork *)self BSSID]];
  [(NSMutableString *)v4 appendFormat:@"RSSI=%ld", [(WiFiScanObserverNetwork *)self RSSI]];
  [(NSMutableString *)v4 appendString:@">"];
  return &v4->super;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WiFiScanObserverNetwork;
  [(WiFiScanObserverNetwork *)&v3 dealloc];
}

- (WiFiScanObserverNetwork)initWithWiFiNetworkRef:(__WiFiNetwork *)ref
{
  v43.receiver = self;
  v43.super_class = WiFiScanObserverNetwork;
  v4 = [(WiFiScanObserverNetwork *)&v43 init];
  result = 0;
  if (ref)
  {
    if (v4)
    {
      result = sub_10000A878(ref);
      v4->_SSID = &result->super.isa;
      if (result)
      {
        v6 = result;
        v7 = sub_100013F70(ref);
        v8 = sub_100035044(v7);
        if (v8)
        {
          v4->_BSSID = v8;
        }

        v4->_scanProperties = sub_100017C00(ref);
        v9 = sub_100035140(ref);
        if (v9)
        {
          v10 = v9;
          v11 = [v9 count];
          if (v11)
          {
            v19 = sub_1000082E8(v11, v12, v13, v14, v15, v16, v17, v18, 0, 0, 0, 0, 0, 0, 0, 0, v41, v43.receiver, v43.super_class, v44);
            if (v19)
            {
              v20 = v19;
              v21 = 0;
              v22 = *v35;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v35 != v22)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v24 = sub_100035044(*(v34 + 8 * i));
                  if (v24)
                  {
                    v32 = v24;
                    v24 = [(NSString *)v4->_BSSID isEqualToString:v24];
                    if ((v24 & 1) == 0)
                    {
                      if (!v21)
                      {
                        v21 = objc_alloc_init(NSMutableArray);
                      }

                      v24 = [(NSArray *)v21 addObject:v32];
                    }
                  }
                }

                v20 = sub_1000082E8(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37, v38, v39, v40, v42, v43.receiver, v43.super_class, v44);
              }

              while (v20);
            }

            else
            {
              v21 = 0;
            }

            if ([(NSArray *)v21 count])
            {
              v4->_essMembers = v21;
            }

            else
            {
            }
          }
        }

        v4->_RSSI = sub_100035154(ref);
        return v4;
      }
    }
  }

  return result;
}

@end