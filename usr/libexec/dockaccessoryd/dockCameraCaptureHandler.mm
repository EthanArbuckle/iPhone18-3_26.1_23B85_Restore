@interface dockCameraCaptureHandler
- (void)getAccessoryDiagnosticsWithInfo:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)updateCameraSessionWithSession:(id)a3 new:(BOOL)a4 completion:(id)a5;
@end

@implementation dockCameraCaptureHandler

- (void)updateCameraSessionWithSession:(id)a3 new:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_1000B6D18(v9, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)getAccessoryDiagnosticsWithInfo:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  v8 = a3;
  v9 = self;
  sub_1000B9D3C(v9, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end