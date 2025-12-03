@interface RPAssertionInfo
+ (id)assertionWithType:(unint64_t)type processName:(id)name;
- (BOOL)isEqual:(id)equal;
- (NSDate)startDate;
- (NSString)processName;
- (OS_dispatch_queue)handlerQueue;
- (double)expirationDuration;
- (id)_description;
- (id)_descriptionWithLevel:(int)level;
- (id)_initWithType:(unint64_t)type processName:(id)name;
- (id)descriptionWithLevel:(int)level;
- (id)expiredHandler;
- (id)startHandler;
- (id)stopHandler;
- (unint64_t)assertionType;
- (unint64_t)hash;
- (unint64_t)state;
- (void)_invokeHandler:(id)handler onQueue:(id)queue;
- (void)_withLock:(id)lock;
- (void)setExpiredHandler:(id)handler;
- (void)setHandlerQueue:(id)queue;
- (void)setStartHandler:(id)handler;
- (void)setStopHandler:(id)handler;
- (void)trackerCheckAssertion;
- (void)trackerStartAssertion;
- (void)trackerStopAssertion;
@end

@implementation RPAssertionInfo

- (id)_initWithType:(unint64_t)type processName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = RPAssertionInfo;
  v7 = [(RPAssertionInfo *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = +[NSUUID UUID];
    assertionIdentifier = v8->_assertionIdentifier;
    v8->_assertionIdentifier = v9;

    v8->_assertionType = type;
    v11 = [nameCopy copy];
    processName = v8->_processName;
    v8->_processName = v11;

    v8->_state = 0;
  }

  return v8;
}

+ (id)assertionWithType:(unint64_t)type processName:(id)name
{
  nameCopy = name;
  v6 = [[RPAssertionInfo alloc] _initWithType:type processName:nameCopy];

  return v6;
}

- (unint64_t)assertionType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009135C;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  [(RPAssertionInfo *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (double)expirationDuration
{
  assertionType = [(RPAssertionInfo *)self assertionType];
  if (assertionType - 1 > 6)
  {
    return 180.0;
  }

  else
  {
    return dbl_100148E90[assertionType - 1];
  }
}

- (id)expiredHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000914AC;
  v9 = sub_1000914D8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000914E0;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  [(RPAssertionInfo *)self _withLock:v4];
  v2 = objc_retainBlock(v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setExpiredHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000915C0;
  v4[3] = &unk_1001ABA80;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(RPAssertionInfo *)selfCopy _withLock:v4];
}

- (OS_dispatch_queue)handlerQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100002A2C;
  v9 = sub_1000031AC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091704;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  [(RPAssertionInfo *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setHandlerQueue:(id)queue
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000917AC;
  v4[3] = &unk_1001AB488;
  selfCopy = self;
  queueCopy = queue;
  v3 = queueCopy;
  [(RPAssertionInfo *)selfCopy _withLock:v4];
}

- (NSString)processName
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100002A2C;
  v9 = sub_1000031AC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000918B8;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  [(RPAssertionInfo *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDate)startDate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100002A2C;
  v9 = sub_1000031AC;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000919CC;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  [(RPAssertionInfo *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)startHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000914AC;
  v9 = sub_1000914D8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091AE0;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  [(RPAssertionInfo *)self _withLock:v4];
  v2 = objc_retainBlock(v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setStartHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091BC0;
  v4[3] = &unk_1001ABA80;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(RPAssertionInfo *)selfCopy _withLock:v4];
}

- (unint64_t)state
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091CC0;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  [(RPAssertionInfo *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)stopHandler
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000914AC;
  v9 = sub_1000914D8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091DD4;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  [(RPAssertionInfo *)self _withLock:v4];
  v2 = objc_retainBlock(v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setStopHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091EB4;
  v4[3] = &unk_1001ABA80;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(RPAssertionInfo *)selfCopy _withLock:v4];
}

- (unint64_t)hash
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100091FB4;
  v4[3] = &unk_1001AD1A0;
  v4[4] = self;
  v4[5] = &v5;
  [(RPAssertionInfo *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v7 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100092114;
    v9[3] = &unk_1001AE4C0;
    v6 = v5;
    selfCopy = self;
    v12 = &v13;
    v10 = v6;
    [(RPAssertionInfo *)self _withLock:v9];
    v7 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

LABEL_7:

  return v7 & 1;
}

- (void)trackerStartAssertion
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000914AC;
  v14 = sub_1000914D8;
  v15 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100002A2C;
  v8 = sub_1000031AC;
  v9 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100092480;
  v3[3] = &unk_1001AE4E8;
  v3[4] = self;
  v3[5] = &v10;
  v3[6] = &v4;
  [(RPAssertionInfo *)self _withLock:v3];
  [(RPAssertionInfo *)self _invokeHandler:v11[5] onQueue:v5[5]];
  _Block_object_dispose(&v4, 8);

  _Block_object_dispose(&v10, 8);
}

- (void)trackerCheckAssertion
{
  [(RPAssertionInfo *)self expirationDuration];
  if (v3 > 0.0)
  {
    v4 = v3;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000914AC;
    v21 = sub_1000914D8;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100002A2C;
    v15 = sub_1000031AC;
    v16 = 0;
    +[NSDate now];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000926E8;
    v6[3] = &unk_1001AE510;
    v6[4] = self;
    v5 = v10 = v4;
    v7 = v5;
    v8 = &v17;
    v9 = &v11;
    [(RPAssertionInfo *)self _withLock:v6];
    [(RPAssertionInfo *)self _invokeHandler:v18[5] onQueue:v12[5]];

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v17, 8);
  }
}

- (void)trackerStopAssertion
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000914AC;
  v14 = sub_1000914D8;
  v15 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100002A2C;
  v8 = sub_1000031AC;
  v9 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100092958;
  v3[3] = &unk_1001AE4E8;
  v3[4] = self;
  v3[5] = &v10;
  v3[6] = &v4;
  [(RPAssertionInfo *)self _withLock:v3];
  [(RPAssertionInfo *)self _invokeHandler:v11[5] onQueue:v5[5]];
  _Block_object_dispose(&v4, 8);

  _Block_object_dispose(&v10, 8);
}

- (id)_description
{
  os_unfair_lock_assert_owner(&self->_lock);

  return [(RPAssertionInfo *)self _descriptionWithLevel:50];
}

- (id)descriptionWithLevel:(int)level
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100002A2C;
  v11 = sub_1000031AC;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100092B54;
  v5[3] = &unk_1001AE538;
  v5[4] = self;
  v5[5] = &v7;
  levelCopy = level;
  [(RPAssertionInfo *)self _withLock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (id)_descriptionWithLevel:(int)level
{
  os_unfair_lock_assert_owner(&self->_lock);
  NSAppendPrintF();
  v18 = 0;
  assertionIdentifier = self->_assertionIdentifier;
  NSAppendPrintF();
  v4 = v18;

  assertionType = self->_assertionType;
  NSAppendPrintF();
  v5 = v4;

  processName = self->_processName;
  NSAppendPrintF();
  v6 = v5;

  state = self->_state;
  if (state > 3)
  {
    v8 = "?";
  }

  else
  {
    v8 = (&off_1001AE558)[state];
  }

  v17 = v8;
  NSAppendPrintF();
  v9 = v6;

  startDate = self->_startDate;
  if (startDate)
  {
    v11 = startDate;
    [(NSDate *)v11 timeIntervalSinceNow];
    NSAppendPrintF();
    v12 = v9;

    v9 = v12;
  }

  return v9;
}

- (void)_invokeHandler:(id)handler onQueue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  v8 = queueCopy;
  if (handlerCopy)
  {
    if (queueCopy)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100092DF8;
      v9[3] = &unk_1001AD898;
      v9[4] = self;
      v10 = handlerCopy;
      dispatch_async(v8, v9);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, self);
    }
  }
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

@end