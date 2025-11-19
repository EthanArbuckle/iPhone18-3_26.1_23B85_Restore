@interface CLHarvestDataAccessPoint
- (CLHarvestDataAccessPoint)initWithAccessPoint:(AccessPoint *)a3;
- (CLHarvestDataAccessPoint)initWithCoder:(id)a3;
- (id)description;
- (id)jsonObject;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLHarvestDataAccessPoint

- (CLHarvestDataAccessPoint)initWithAccessPoint:(AccessPoint *)a3
{
  v10.receiver = self;
  v10.super_class = CLHarvestDataAccessPoint;
  v4 = [(CLHarvestDataAccessPoint *)&v10 init];
  if (v4)
  {
    __p[0] = a3->var0.var0;
    v4->_macAddress = sub_10018D3FC(__p);
    v5 = [NSString alloc];
    if (*(&a3->var1.__rep_.__l + 23) < 0)
    {
      sub_100007244(__p, a3->var1.__rep_.__l.__data_, a3->var1.__rep_.__l.__size_);
    }

    else
    {
      *__p = *a3->var1.__rep_.__s.__data_;
      v9 = *(&a3->var1.__rep_.__l + 2);
    }

    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v4->_ssid = [v5 initWithUTF8String:{v6, __p[0], __p[1], v9}];
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    v4->_rssi = a3[1].var0.var0;
    v4->_mode = HIDWORD(a3[1].var0.var0);
    v4->_channel = *a3[1].var1.__rep_.__s.__data_;
    *&v4->_age = a3[1].var1.__rep_.__l.__size_;
    v4->_timestamp = *(&a3[1].var1.__rep_.__l + 2);
    v4->_isApplePersonalHotspot = a3[2].var0.var0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLHarvestDataAccessPoint;
  [(CLHarvestDataAccessPoint *)&v3 dealloc];
}

- (CLHarvestDataAccessPoint)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLHarvestDataAccessPoint;
  v4 = [(CLHarvestDataAccessPoint *)&v8 init];
  if (v4)
  {
    v4->_macAddress = [a3 decodeInt64ForKey:@"MacAddressKey"];
    v4->_ssid = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"SsidKey"];
    v4->_rssi = [a3 decodeIntForKey:@"RssiKey"];
    v4->_channel = [a3 decodeIntForKey:@"ChannelKey"];
    [a3 decodeDoubleForKey:@"AgeKey"];
    v4->_age = v5;
    [a3 decodeDoubleForKey:@"ScanTimestampKey"];
    v4->_timestamp = v6;
    v4->_isApplePersonalHotspot = [a3 decodeBoolForKey:@"ApplePersonalHotspotKey"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_macAddress forKey:@"MacAddressKey"];
  [a3 encodeObject:self->_ssid forKey:@"SsidKey"];
  [a3 encodeInt:self->_rssi forKey:@"RssiKey"];
  [a3 encodeInt:self->_mode forKey:@"ModeKey"];
  [a3 encodeInt:self->_channel forKey:@"ChannelKey"];
  [a3 encodeDouble:@"AgeKey" forKey:self->_age];
  [a3 encodeDouble:@"ScanTimestampKey" forKey:self->_timestamp];
  isApplePersonalHotspot = self->_isApplePersonalHotspot;

  [a3 encodeBool:isApplePersonalHotspot forKey:@"ApplePersonalHotspotKey"];
}

- (id)jsonObject
{
  v4[0] = @"macAddress";
  v5[0] = [NSNumber numberWithUnsignedLongLong:[(CLHarvestDataAccessPoint *)self macAddress]];
  v4[1] = @"ssid";
  v5[1] = [(CLHarvestDataAccessPoint *)self ssid];
  v4[2] = @"rssi";
  v5[2] = [NSNumber numberWithInt:[(CLHarvestDataAccessPoint *)self rssi]];
  v4[3] = @"mode";
  v5[3] = [NSNumber numberWithInt:[(CLHarvestDataAccessPoint *)self mode]];
  v4[4] = @"channel";
  v5[4] = [NSNumber numberWithInt:[(CLHarvestDataAccessPoint *)self channel]];
  v4[5] = @"age";
  [(CLHarvestDataAccessPoint *)self age];
  v5[5] = [NSNumber numberWithDouble:?];
  v4[6] = @"scanTimestamp";
  [(CLHarvestDataAccessPoint *)self timestamp];
  v5[6] = [NSNumber numberWithDouble:?];
  v4[7] = @"isApplePersonalHotspot";
  v5[7] = [NSNumber numberWithBool:[(CLHarvestDataAccessPoint *)self isApplePersonalHotspot]];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];
}

- (id)description
{
  v2 = [[NSString alloc] initWithData:+[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization encoding:{"dataWithJSONObject:options:error:", -[CLHarvestDataAccessPoint jsonObject](self, "jsonObject"), 0, 0), 4}];

  return v2;
}

@end