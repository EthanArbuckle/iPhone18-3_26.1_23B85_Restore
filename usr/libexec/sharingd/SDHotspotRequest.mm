@interface SDHotspotRequest
- (void)dealloc;
@end

@implementation SDHotspotRequest

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_companionLinkClient setInvalidationHandler:0];
  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  logCategory = self->_logCategory;
  if (logCategory && (logCategory->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_logCategory = 0;
  }

  v5.receiver = self;
  v5.super_class = SDHotspotRequest;
  [(SDHotspotRequest *)&v5 dealloc];
}

@end