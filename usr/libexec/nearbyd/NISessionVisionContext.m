@interface NISessionVisionContext
- (NISessionVisionContext)init;
@end

@implementation NISessionVisionContext

- (NISessionVisionContext)init
{
  v7.receiver = self;
  v7.super_class = NISessionVisionContext;
  v2 = [(NISessionVisionContext *)&v7 init];
  v3 = v2;
  if (v2)
  {
    arSession = v2->_arSession;
    v2->_arSession = 0;

    latestARFrame = v3->_latestARFrame;
    v3->_arSessionState = 0;
    v3->_latestARFrame = 0;
    *&v3->_cameraAssistanceEnabled = 0;
    v3->_arSessionInClientProcess = 1;
  }

  return v3;
}

@end