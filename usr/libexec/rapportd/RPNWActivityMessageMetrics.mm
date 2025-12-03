@interface RPNWActivityMessageMetrics
- (NSString)peerDeviceModel;
- (NSString)peerOSVersion;
- (id)_metricsDictionary;
- (int)linkType;
- (int)messageType;
- (unint64_t)messageSize;
- (void)setLinkType:(int)type;
- (void)setMessageSize:(unint64_t)size;
- (void)setMessageType:(int)type;
- (void)setPeerDeviceModel:(id)model;
- (void)setPeerOSVersion:(id *)version;
@end

@implementation RPNWActivityMessageMetrics

- (int)messageType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100073E10;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  sub_10011C82C(self, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)messageSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100073EFC;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  sub_10011C82C(self, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int)linkType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100073FEC;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  sub_10011C82C(self, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSString)peerDeviceModel
{
  v5 = 0;
  v6[0] = &v5;
  v6[1] = 0x3032000000;
  v6[2] = sub_100002A0C;
  v6[3] = sub_10000319C;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100074100;
  v3[3] = &unk_1001AD1A0;
  v4[0] = self;
  v4[1] = &v5;
  sub_10011C82C(self, v3);
  sub_10000D5F4(v6, v4, &v5, &v7, &v8);
  return v8;
}

- (NSString)peerOSVersion
{
  v5 = 0;
  v6[0] = &v5;
  v6[1] = 0x3032000000;
  v6[2] = sub_100002A0C;
  v6[3] = sub_10000319C;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007425C;
  v3[3] = &unk_1001AD1A0;
  v4[0] = self;
  v4[1] = &v5;
  sub_10011C82C(self, v3);
  sub_10000D5F4(v6, v4, &v5, &v7, &v8);
  return v8;
}

- (id)_metricsDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  messageType = [(RPNWActivityMessageMetrics *)self messageType];
  if (messageType > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1001AD1E8[messageType];
  }

  v6 = [NSString stringWithUTF8String:v5];
  [v3 setObject:v6 forKeyedSubscript:@"messageType"];

  v7 = [NSNumber numberWithUnsignedLong:[(RPNWActivityMessageMetrics *)self messageSize]];
  [v3 setObject:v7 forKeyedSubscript:@"bytesOut"];

  linkType = [(RPNWActivityMessageMetrics *)self linkType];
  if (linkType > 0xB)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1001AD208[linkType];
  }

  v10 = [NSString stringWithUTF8String:v9];
  [v3 setObject:v10 forKeyedSubscript:@"linkType"];

  peerDeviceModel = [(RPNWActivityMessageMetrics *)self peerDeviceModel];
  if (peerDeviceModel)
  {
    [v3 setObject:peerDeviceModel forKeyedSubscript:@"peerModel"];
  }

  peerOSVersion = [(RPNWActivityMessageMetrics *)self peerOSVersion];
  if (peerOSVersion)
  {
    [v3 setObject:peerOSVersion forKeyedSubscript:@"peerOSVersion"];
  }

  return v3;
}

- (void)setMessageType:(int)type
{
  sub_1000035B0();
  sub_100003DC8();
  sub_1000746BC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

- (void)setMessageSize:(unint64_t)size
{
  sub_1000035B0();
  sub_100003DC8();
  sub_10000D514(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

- (void)setLinkType:(int)type
{
  sub_1000035B0();
  sub_100003DC8();
  sub_1000746BC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

- (void)setPeerDeviceModel:(id)model
{
  modelCopy = model;
  sub_1000035B0();
  sub_100003DC8();
  v15 = v5;
  v6 = v5;
  sub_10000D198(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)setPeerOSVersion:(id *)version
{
  sub_1000035B0();
  sub_100003DC8();
  v5[2] = sub_10007411C;
  v5[3] = &unk_1001AD1C8;
  v5[4] = v3;
  v6 = *v4;
  v7 = *(v4 + 2);
  sub_10011C82C(v3, v5);
}

@end