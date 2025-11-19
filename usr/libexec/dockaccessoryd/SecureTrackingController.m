@interface SecureTrackingController
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
@end

@implementation SecureTrackingController

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  sub_100095B94(0, &qword_1002A8EA8, AVMetadataObject_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_10010B9A0(v8);
}

@end