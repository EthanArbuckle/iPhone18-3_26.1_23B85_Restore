@interface KmlTestClientCallbackInfo
- (KmlTestClientCallbackInfo)init;
@end

@implementation KmlTestClientCallbackInfo

- (KmlTestClientCallbackInfo)init
{
  v10.receiver = self;
  v10.super_class = KmlTestClientCallbackInfo;
  v2 = [(KmlTestClientCallbackInfo *)&v10 init];
  v3 = v2;
  if (v2)
  {
    ownerCompletionHandler = v2->_ownerCompletionHandler;
    v2->_ownerCompletionHandler = 0;

    v5 = +[NSMutableSet set];
    invitationSet = v3->_invitationSet;
    v3->_invitationSet = v5;

    v7 = +[NSMutableDictionary dictionary];
    results = v3->_results;
    v3->_results = v7;
  }

  return v3;
}

@end