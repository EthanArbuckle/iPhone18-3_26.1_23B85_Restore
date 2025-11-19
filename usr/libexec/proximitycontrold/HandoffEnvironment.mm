@interface HandoffEnvironment
- (id)interruptionHandler;
- (id)invalidationHandler;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)setDispatchQueue:(id)a3;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation HandoffEnvironment

- (void)setDispatchQueue:(id)a3
{
  v4 = *(self + 2);
  *(self + 2) = a3;
  v3 = a3;
}

- (id)invalidationHandler
{
  if (*(self + 3))
  {
    v2 = *(self + 4);
    v5[4] = *(self + 3);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100018AB8;
    v5[3] = &unk_10030AB60;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v7 = *(self + 3);
  v8 = *(self + 4);
  *(self + 3) = v6;
  *(self + 4) = v4;

  sub_10002689C(v7);
}

- (id)interruptionHandler
{
  if (*(self + 5))
  {
    v2 = *(self + 6);
    v5[4] = *(self + 5);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100018AB8;
    v5[3] = &unk_10030AB10;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v7 = *(self + 5);
  v8 = *(self + 6);
  *(self + 5) = v6;
  *(self + 6) = v4;

  sub_10002689C(v7);
}

- (void)activateWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_100144B00(sub_100104000, v4);
}

- (void)invalidate
{

  sub_100145E7C();
}

@end