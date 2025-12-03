@interface dockCameraCaptureHandler
- (void)getAccessoryDiagnosticsWithInfo:(id)info options:(id)options completionHandler:(id)handler;
- (void)updateCameraSessionWithSession:(id)session new:(BOOL)new completion:(id)completion;
@end

@implementation dockCameraCaptureHandler

- (void)updateCameraSessionWithSession:(id)session new:(BOOL)new completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  sessionCopy = session;
  selfCopy = self;
  sub_1000B6D18(sessionCopy, new, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)getAccessoryDiagnosticsWithInfo:(id)info options:(id)options completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  _Block_copy(v7);
  infoCopy = info;
  selfCopy = self;
  sub_1000B9D3C(selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end