@interface WifiScanResult
- (WifiScanResult)init;
- (WifiScanResult)initWithAge:(duration<long)long bssid:()std:(1000000000>>)std :(id)a4 ratio<1 ssid:(id)ssid channel:(int)channel rssi:(int)rssi flags:(unsigned int)flags adHoc:(BOOL)hoc personalHotspot:(BOOL)self0 captive:(BOOL)self1 mode:(int)self2;
@end

@implementation WifiScanResult

- (WifiScanResult)init
{
  [(WifiScanResult *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (WifiScanResult)initWithAge:(duration<long)long bssid:()std:(1000000000>>)std :(id)a4 ratio<1 ssid:(id)ssid channel:(int)channel rssi:(int)rssi flags:(unsigned int)flags adHoc:(BOOL)hoc personalHotspot:(BOOL)self0 captive:(BOOL)self1 mode:(int)self2
{
  v19 = a4;
  ssidCopy = ssid;
  v25.receiver = self;
  v25.super_class = WifiScanResult;
  v21 = [(WifiScanResult *)&v25 init];
  v22 = v21;
  if (v21)
  {
    v21->_age = std;
    objc_storeStrong(&v21->_bssid, a4);
    objc_storeStrong(&v22->_ssid, ssid);
    v22->_rssi = rssi;
    v22->_channelFlags = flags;
    v22->_adHoc = hoc;
    v22->_personalHotspot = hotspot;
    v22->_captive = captive;
    v22->_channel = channel;
    v22->_mode = mode;
    v23 = v22;
  }

  return v22;
}

@end