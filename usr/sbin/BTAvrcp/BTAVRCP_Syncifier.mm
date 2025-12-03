@interface BTAVRCP_Syncifier
- (BOOL)wait:(double)wait;
- (BTAVRCP_Syncifier)init;
- (id)createSwitcher;
@end

@implementation BTAVRCP_Syncifier

- (BTAVRCP_Syncifier)init
{
  v6.receiver = self;
  v6.super_class = BTAVRCP_Syncifier;
  v2 = [(BTAVRCP_Syncifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCondition);
    condition = v2->_condition;
    v2->_condition = v3;

    v2->_pendingSwitchers = 0;
  }

  return v2;
}

- (id)createSwitcher
{
  [(BTAVRCP_Syncifier *)self setPendingSwitchers:[(BTAVRCP_Syncifier *)self pendingSwitchers]+ 1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000011E0;
  v5[3] = &unk_1000187D8;
  v5[4] = self;
  v3 = objc_retainBlock(v5);

  return v3;
}

- (BOOL)wait:(double)wait
{
  v4 = [NSDate dateWithTimeIntervalSinceNow:wait];
  condition = [(BTAVRCP_Syncifier *)self condition];
  [condition lock];

  while (1)
  {
    pendingSwitchers = [(BTAVRCP_Syncifier *)self pendingSwitchers];
    if (!pendingSwitchers)
    {
      break;
    }

    condition2 = [(BTAVRCP_Syncifier *)self condition];
    v8 = [condition2 waitUntilDate:v4];

    if ((v8 & 1) == 0)
    {
      [(BTAVRCP_Syncifier *)self setPendingSwitchers:0];
      break;
    }
  }

  condition3 = [(BTAVRCP_Syncifier *)self condition];
  [condition3 unlock];

  return pendingSwitchers == 0;
}

@end