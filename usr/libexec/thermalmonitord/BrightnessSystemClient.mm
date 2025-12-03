@interface BrightnessSystemClient
- (id)monitorDisplayOnStateForReason:(id)reason handler:(id)handler;
- (id)monitorKeys:(id)keys forReason:(id)reason handler:(id)handler;
@end

@implementation BrightnessSystemClient

- (id)monitorDisplayOnStateForReason:(id)reason handler:(id)handler
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
  v6[4] = handler;
  v4 = [(BrightnessSystemClient *)self monitorKeys:&off_10008D8C0 forReason:reason handler:v6];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v9, 8);
  return v4;
}

- (id)monitorKeys:(id)keys forReason:(id)reason handler:(id)handler
{
  [(BrightnessSystemClient *)self registerNotificationBlock:handler forProperties:keys];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000265B8;
  v9[3] = &unk_100085C50;
  v9[4] = self;
  v9[5] = keys;
  return -[TMSimpleAssertion initWithIdentifier:forReason:invalidationBlock:]([TMSimpleAssertion alloc], "initWithIdentifier:forReason:invalidationBlock:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"BrightnessSystemClient keys (%@)", [keys componentsJoinedByString:@"|"]), reason, v9);
}

@end