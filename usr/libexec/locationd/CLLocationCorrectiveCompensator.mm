@interface CLLocationCorrectiveCompensator
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLLocationCorrectiveCompensator)init;
- (void)snapLocation:(id)a3 withReply:(id)a4;
@end

@implementation CLLocationCorrectiveCompensator

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_10265A5E8 != -1)
  {
    sub_10194F8E4();
  }

  return qword_10265A5E0;
}

- (CLLocationCorrectiveCompensator)init
{
  v3.receiver = self;
  v3.super_class = CLLocationCorrectiveCompensator;
  return [(CLLocationCorrectiveCompensator *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLLocationCorrectiveCompensatorProtocol outboundProtocol:&OBJC_PROTOCOL___CLLocationCorrectiveCompensatorClientProtocol];
}

- (void)snapLocation:(id)a3 withReply:(id)a4
{
  if (a3)
  {
    [a3 clientLocation];
  }

  else
  {
    v36 = 0u;
    memset(v37, 0, 28);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    memset(buf, 0, sizeof(buf));
  }

  v28 = v35;
  v29 = v36;
  v30[0] = v37[0];
  *(v30 + 12) = *(v37 + 12);
  *&v27[32] = *&buf[32];
  *&v27[48] = v32;
  *&v27[64] = v33;
  *&v27[80] = v34;
  *v27 = *buf;
  *&v27[16] = *&buf[16];
  v7 = [[GEOLocation alloc] initWithGEOCoordinate:{COERCE_DOUBLE(*buf >> 32), *&v27[12]}];
  v8 = v7;
  if (v7)
  {
    [v7 setTimestamp:*&v27[76]];
    [v8 setAltitude:*&v27[28]];
    [v8 setHorizontalAccuracy:*&v27[20]];
    [v8 setVerticalAccuracy:*&v27[36]];
    if (DWORD1(v30[0]) == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (DWORD1(v30[0]) == 2);
    }

    [v8 setReferenceFrame:v9];
    if (*&v27[44] > -1.0)
    {
      [v8 setSpeed:*&v27[44]];
    }

    if (*&v27[60] < 360.0 && *&v27[60] >= 0.0)
    {
      [v8 setCourse:?];
    }
  }

  v10 = v8;
  if (v10)
  {
    v11 = v10;
    if (qword_1025D47A0 != -1)
    {
      sub_10194F8F8();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = LocationLogEncryptionDataSize();
      v14 = LocationLogEncryptionEncryptData();
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = v13;
      *&buf[24] = 2098;
      *&buf[26] = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Location #compensation gonna be Snapping, Input:%{public, location:Encrypted_CLClientLocation}.*P}", buf, 0x22u);
    }

    coarseLocationProvider = self->_coarseLocationProvider;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100831DF0;
    v17[3] = &unk_102475DE0;
    v24 = v28;
    v25 = v29;
    v26[0] = v30[0];
    *(v26 + 12) = *(v30 + 12);
    v20 = *&v27[32];
    v21 = *&v27[48];
    v22 = *&v27[64];
    v23 = *&v27[80];
    v18 = *v27;
    v19 = *&v27[16];
    v17[4] = a3;
    v17[5] = a4;
    -[GEOCoarseLocationProvider fetchCoarseEquivalentForLocation:callbackQueue:callback:](coarseLocationProvider, "fetchCoarseEquivalentForLocation:callbackQueue:callback:", v11, [objc_msgSend(-[CLLocationCorrectiveCompensator universe](self "universe")], v17);
  }

  else
  {
    v16 = [CLLocation alloc];
    v35 = xmmword_101CE6D38;
    v36 = xmmword_101CE6D48;
    memset(v37, 0, 28);
    *&buf[32] = xmmword_101CE6CF8;
    v32 = xmmword_101CE6D08;
    v33 = xmmword_101CE6D18;
    v34 = xmmword_101CE6D28;
    *buf = xmmword_101CE6CD8;
    *&buf[16] = xmmword_101CE6CE8;
    (*(a4 + 2))(a4, [v16 initWithClientLocation:buf], 1, 0);
  }
}

@end