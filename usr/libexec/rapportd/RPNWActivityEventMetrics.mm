@interface RPNWActivityEventMetrics
- (NSString)destination;
- (id)_metricsDictionary;
- (unint64_t)eventSize;
- (void)setDestination:(id)a3;
- (void)setEventSize:(unint64_t)a3;
@end

@implementation RPNWActivityEventMetrics

- (id)_metricsDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(RPNWActivityEventMetrics *)self destination];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"destination"];
  }

  v5 = [NSNumber numberWithUnsignedLong:[(RPNWActivityEventMetrics *)self eventSize]];
  [v3 setObject:v5 forKeyedSubscript:@"bytesOut"];

  return v3;
}

- (NSString)destination
{
  v5 = 0;
  v6[0] = &v5;
  v6[1] = 0x3032000000;
  v6[2] = sub_100002A0C;
  v6[3] = sub_10000319C;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000F658;
  v3[3] = &unk_1001AD1A0;
  v4[0] = self;
  v4[1] = &v5;
  sub_10011C82C(self, v3);
  sub_10000D5F4(v6, v4, &v5, &v7, &v8);
  return v8;
}

- (unint64_t)eventSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F730;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  sub_10011C82C(self, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setDestination:(id)a3
{
  v4 = a3;
  sub_1000035B0();
  sub_100003DC8();
  v15 = v5;
  v6 = v5;
  sub_10000D198(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)setEventSize:(unint64_t)a3
{
  sub_1000035B0();
  sub_100003DC8();
  sub_10000D514(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

@end