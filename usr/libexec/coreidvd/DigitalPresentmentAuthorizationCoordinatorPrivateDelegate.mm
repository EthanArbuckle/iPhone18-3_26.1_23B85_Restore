@interface DigitalPresentmentAuthorizationCoordinatorPrivateDelegate
- (_TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate)init;
- (uint64_t)paymentAuthorizationCoordinatorDidFinish:;
- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didAuthorizeContextWithHandler:(id)handler;
- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didAuthorizePayment:(PKPayment *)payment handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didSelectPaymentMethod:(PKPaymentMethod *)method handler:(id)handler;
- (void)paymentAuthorizationCoordinator:(id)coordinator willFinishWithError:(id)error;
@end

@implementation DigitalPresentmentAuthorizationCoordinatorPrivateDelegate

- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didAuthorizePayment:(PKPayment *)payment handler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = coordinator;
  v14[3] = payment;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006D91C8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006D91D0;
  v17[5] = v16;
  coordinatorCopy = coordinator;
  paymentCopy = payment;
  selfCopy = self;
  sub_100500D54(0, 0, v12, &unk_1006D91D8, v17);
}

- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didSelectPaymentMethod:(PKPaymentMethod *)method handler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = coordinator;
  v14[3] = method;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006D91A0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006D91A8;
  v17[5] = v16;
  coordinatorCopy = coordinator;
  methodCopy = method;
  selfCopy = self;
  sub_100500D54(0, 0, v12, &unk_1006D91B0, v17);
}

- (void)paymentAuthorizationCoordinator:(id)coordinator willFinishWithError:(id)error
{
  coordinatorCopy = coordinator;
  selfCopy = self;
  errorCopy = error;
  sub_100121450(coordinator, error);
}

- (void)paymentAuthorizationCoordinator:(PKPaymentAuthorizationCoordinator *)coordinator didAuthorizeContextWithHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = coordinator;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006D9178;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006D9180;
  v15[5] = v14;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_100500D54(0, 0, v10, &unk_1006E13D0, v15);
}

- (_TtC8coreidvd57DigitalPresentmentAuthorizationCoordinatorPrivateDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)paymentAuthorizationCoordinatorDidFinish:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "DigitalPresentmentAuthorizationCoordinatorPrivateDelegate paymentAuthorizationCoordinator paymentAuthorizationCoordinatorDidFinish invoked.", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

@end