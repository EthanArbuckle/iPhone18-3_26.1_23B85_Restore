@interface RPClientProxy
- (id)interruptionHandler;
- (id)invalidationHandler;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)setDispatchQueue:(id)queue;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation RPClientProxy

- (void)setDispatchQueue:(id)queue
{
  v4 = *(self + 5);
  *(self + 5) = queue;
  queueCopy = queue;
}

- (id)invalidationHandler
{
  if (*(self + 6))
  {
    v2 = *(self + 7);
    v5[4] = *(self + 6);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100018AB8;
    v5[3] = &unk_10030F9C0;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInvalidationHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001042DC;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(self + 6);
  v8 = *(self + 7);
  *(self + 6) = v6;
  *(self + 7) = v4;

  sub_10002689C(v7);
}

- (id)interruptionHandler
{
  if (*(self + 8))
  {
    v2 = *(self + 9);
    v5[4] = *(self + 8);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100018AB8;
    v5[3] = &unk_10030F970;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInterruptionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100104014;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(self + 8);
  v8 = *(self + 9);
  *(self + 8) = v6;
  *(self + 9) = v4;

  sub_10002689C(v7);
}

- (void)activateWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  _Block_copy(v3);

  sub_1001AE248(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)invalidate
{

  sub_1001AD5FC();
}

@end