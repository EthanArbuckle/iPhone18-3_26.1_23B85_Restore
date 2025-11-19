@interface BrightnessSystemClient
- (id)monitorDisplayOnStateForReason:(id)a3 handler:(id)a4;
- (id)monitorKeys:(id)a3 forReason:(id)a4 handler:(id)a5;
@end

@implementation BrightnessSystemClient

- (id)monitorDisplayOnStateForReason:(id)a3 handler:(id)a4
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026454;
  v6[3] = &unk_100085C28;
  v6[5] = v7;
  v6[6] = v9;
  v6[4] = a4;
  v4 = [(BrightnessSystemClient *)self monitorKeys:&off_10008D8C0 forReason:a3 handler:v6];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v9, 8);
  return v4;
}

- (id)monitorKeys:(id)a3 forReason:(id)a4 handler:(id)a5
{
  [(BrightnessSystemClient *)self registerNotificationBlock:a5 forProperties:a3];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000265B8;
  v9[3] = &unk_100085C50;
  v9[4] = self;
  v9[5] = a3;
  return -[TMSimpleAssertion initWithIdentifier:forReason:invalidationBlock:]([TMSimpleAssertion alloc], "initWithIdentifier:forReason:invalidationBlock:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"BrightnessSystemClient keys (%@)", [a3 componentsJoinedByString:@"|"]), a4, v9);
}

@end