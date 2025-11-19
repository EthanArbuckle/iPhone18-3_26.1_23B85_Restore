@interface WifiScanResult
- (WifiScanResult)init;
- (WifiScanResult)initWithAge:(duration<long)long bssid:()std:(1000000000>>)a3 :(id)a4 ratio<1 ssid:(id)a5 channel:(int)a6 rssi:(int)a7 flags:(unsigned int)a8 adHoc:(BOOL)a9 personalHotspot:(BOOL)a10 captive:(BOOL)a11 mode:(int)a12;
@end

@implementation WifiScanResult

- (WifiScanResult)init
{
  [(WifiScanResult *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (WifiScanResult)initWithAge:(duration<long)long bssid:()std:(1000000000>>)a3 :(id)a4 ratio<1 ssid:(id)a5 channel:(int)a6 rssi:(int)a7 flags:(unsigned int)a8 adHoc:(BOOL)a9 personalHotspot:(BOOL)a10 captive:(BOOL)a11 mode:(int)a12
{
  v19 = a4;
  v20 = a5;
  v25.receiver = self;
  v25.super_class = WifiScanResult;
  v21 = [(WifiScanResult *)&v25 init];
  v22 = v21;
  if (v21)
  {
    v21->_age = a3;
    objc_storeStrong(&v21->_bssid, a4);
    objc_storeStrong(&v22->_ssid, a5);
    v22->_rssi = a7;
    v22->_channelFlags = a8;
    v22->_adHoc = a9;
    v22->_personalHotspot = a10;
    v22->_captive = a11;
    v22->_channel = a6;
    v22->_mode = a12;
    v23 = v22;
  }

  return v22;
}

@end