@interface SecureTrackingController
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
@end

@implementation SecureTrackingController

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  sub_100095B94(0, &qword_1002A8EA8, AVMetadataObject_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  outputCopy = output;
  connectionCopy = connection;
  selfCopy = self;
  sub_10010B9A0(v8);
}

@end