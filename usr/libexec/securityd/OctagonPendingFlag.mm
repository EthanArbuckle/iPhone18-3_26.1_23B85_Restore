@interface OctagonPendingFlag
- (OctagonPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions after:(id)after;
- (OctagonPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions delayInSeconds:(double)seconds;
- (OctagonPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions scheduler:(id)scheduler;
- (OctagonPendingFlag)initWithFlag:(id)flag delayInSeconds:(double)seconds;
- (id)description;
@end

@implementation OctagonPendingFlag

- (id)description
{
  fireTime = [(OctagonPendingFlag *)self fireTime];

  if (fireTime)
  {
    flag = [(OctagonPendingFlag *)self flag];
    fireTime2 = [(OctagonPendingFlag *)self fireTime];
LABEL_3:
    v6 = fireTime2;
    [NSString stringWithFormat:@"<OctagonPendingFlag: %@: %@>", flag, fireTime2];
    v7 = LABEL_4:;
    goto LABEL_5;
  }

  afterOperation = [(OctagonPendingFlag *)self afterOperation];

  if (!afterOperation)
  {
    flag = [(OctagonPendingFlag *)self flag];
    fireTime2 = sub_100143858([(OctagonPendingFlag *)self conditions]);
    goto LABEL_3;
  }

  conditions = [(OctagonPendingFlag *)self conditions];
  flag = [(OctagonPendingFlag *)self flag];
  afterOperation2 = [(OctagonPendingFlag *)self afterOperation];
  v6 = afterOperation2;
  if (!conditions)
  {
    [NSString stringWithFormat:@"<OctagonPendingFlag: %@: %@>", flag, afterOperation2];
    goto LABEL_4;
  }

  v12 = sub_100143858([(OctagonPendingFlag *)self conditions]);
  v7 = [NSString stringWithFormat:@"<OctagonPendingFlag: %@: %@ %@>", flag, v6, v12];

LABEL_5:

  return v7;
}

- (OctagonPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions after:(id)after
{
  flagCopy = flag;
  afterCopy = after;
  v15.receiver = self;
  v15.super_class = OctagonPendingFlag;
  v11 = [(OctagonPendingFlag *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_flag, flag);
    fireTime = v12->_fireTime;
    v12->_fireTime = 0;

    objc_storeStrong(&v12->_afterOperation, after);
    v12->_conditions = conditions;
  }

  return v12;
}

- (OctagonPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions scheduler:(id)scheduler
{
  flagCopy = flag;
  schedulerCopy = scheduler;
  [schedulerCopy trigger];
  v17.receiver = self;
  v17.super_class = OctagonPendingFlag;
  v11 = [(OctagonPendingFlag *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_flag, flag);
    fireTime = v12->_fireTime;
    v12->_fireTime = 0;

    objc_storeStrong(&v12->_scheduler, scheduler);
    operationDependency = [schedulerCopy operationDependency];
    afterOperation = v12->_afterOperation;
    v12->_afterOperation = operationDependency;

    v12->_conditions = conditions;
  }

  return v12;
}

- (OctagonPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions delayInSeconds:(double)seconds
{
  flagCopy = flag;
  v16.receiver = self;
  v16.super_class = OctagonPendingFlag;
  v10 = [(OctagonPendingFlag *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_flag, flag);
    if (seconds <= 0.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = [NSDate dateWithTimeIntervalSinceNow:seconds];
    }

    fireTime = v11->_fireTime;
    v11->_fireTime = v12;

    afterOperation = v11->_afterOperation;
    v11->_afterOperation = 0;

    v11->_conditions = conditions;
  }

  return v11;
}

- (OctagonPendingFlag)initWithFlag:(id)flag delayInSeconds:(double)seconds
{
  flagCopy = flag;
  v14.receiver = self;
  v14.super_class = OctagonPendingFlag;
  v8 = [(OctagonPendingFlag *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_flag, flag);
    v10 = [NSDate dateWithTimeIntervalSinceNow:seconds];
    fireTime = v9->_fireTime;
    v9->_fireTime = v10;

    afterOperation = v9->_afterOperation;
    v9->_afterOperation = 0;

    v9->_conditions = 0;
  }

  return v9;
}

@end