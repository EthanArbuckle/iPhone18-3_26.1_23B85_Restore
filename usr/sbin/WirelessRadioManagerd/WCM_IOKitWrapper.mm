@interface WCM_IOKitWrapper
- (WCM_IOKitWrapper)init;
- (WCM_IOKitWrapper)initWithPlatformId:(unint64_t)a3;
- (id).cxx_construct;
- (void)dealloc;
- (void)registerIOkitStateEvent;
@end

@implementation WCM_IOKitWrapper

- (WCM_IOKitWrapper)init
{
  v5.receiver = self;
  v5.super_class = WCM_IOKitWrapper;
  v2 = [(WCM_IOKitWrapper *)&v5 init];
  cntrl = v2->mIOKitNotifier.__cntrl_;
  v2->mIOKitNotifier.__ptr_ = 0;
  v2->mIOKitNotifier.__cntrl_ = 0;
  if (cntrl)
  {
    sub_100004250(cntrl);
  }

  v2->mPlatformId = 0;
  return v2;
}

- (WCM_IOKitWrapper)initWithPlatformId:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = WCM_IOKitWrapper;
  v4 = [(WCM_IOKitWrapper *)&v7 init];
  cntrl = v4->mIOKitNotifier.__cntrl_;
  v4->mIOKitNotifier.__ptr_ = 0;
  v4->mIOKitNotifier.__cntrl_ = 0;
  if (cntrl)
  {
    sub_100004250(cntrl);
  }

  v4->mPlatformId = a3;
  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCM_IOKitWrapper;
  [(WCM_IOKitWrapper *)&v2 dealloc];
}

- (void)registerIOkitStateEvent
{
  ptr = self->mIOKitNotifier.__ptr_;
  if (!ptr)
  {
    sub_100042F7C();
  }

  sub_100042FBC(ptr, [(WCM_IOKitWrapper *)self isFaceIdSupported]);
  sub_100042FC4(self->mIOKitNotifier.__ptr_, [(WCM_IOKitWrapper *)self isFrontCameraSupported]);
  sub_100042FCC(self->mIOKitNotifier.__ptr_, [(WCM_IOKitWrapper *)self isBackTeleCameraSupported]);
  sub_100042FDC(self->mIOKitNotifier.__ptr_, [(WCM_IOKitWrapper *)self isBackSuperWideCameraSupported]);
  sub_100042FD4(self->mIOKitNotifier.__ptr_, [(WCM_IOKitWrapper *)self isBackCameraSupported]);
  [WCM_Logging logLevel:3 message:@"IOKit state registration: register WCM_IOKitEventNotifier callback result: 0x%x", sub_10004355C(self->mIOKitNotifier.__ptr_)];
  if ([(WCM_IOKitWrapper *)self isPencilIndicationSupported])
  {
    [WCM_Logging logLevel:3 message:@"YYDebug_ Pencil Coex is supported 3"];
    sub_100042FE4(self->mIOKitNotifier.__ptr_, 1);
    sub_100043304(self->mIOKitNotifier.__ptr_);
  }

  else
  {
    sub_100042FE4(self->mIOKitNotifier.__ptr_, 0);
    [WCM_Logging logLevel:3 message:@"YYDebug_ Pencil Coex is not supported"];
  }

  [WCM_Logging logLevel:3 message:@"IOKit state registration: Start WCM_IOKitEventNotifier result: 0x%x", sub_100044288(self->mIOKitNotifier.__ptr_)];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end