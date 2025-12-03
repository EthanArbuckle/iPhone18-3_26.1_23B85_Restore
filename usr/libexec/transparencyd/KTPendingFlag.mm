@interface KTPendingFlag
- (KTPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions after:(id)after;
- (KTPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions delayInSeconds:(double)seconds;
- (KTPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions scheduler:(id)scheduler;
- (KTPendingFlag)initWithFlag:(id)flag delayInSeconds:(double)seconds;
- (id)description;
@end

@implementation KTPendingFlag

- (KTPendingFlag)initWithFlag:(id)flag delayInSeconds:(double)seconds
{
  flagCopy = flag;
  v14.receiver = self;
  v14.super_class = KTPendingFlag;
  v8 = [(KTPendingFlag *)&v14 init];
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

- (KTPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions delayInSeconds:(double)seconds
{
  flagCopy = flag;
  v16.receiver = self;
  v16.super_class = KTPendingFlag;
  v10 = [(KTPendingFlag *)&v16 init];
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

- (KTPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions scheduler:(id)scheduler
{
  flagCopy = flag;
  schedulerCopy = scheduler;
  [schedulerCopy trigger];
  v17.receiver = self;
  v17.super_class = KTPendingFlag;
  v11 = [(KTPendingFlag *)&v17 init];
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

- (KTPendingFlag)initWithFlag:(id)flag conditions:(unint64_t)conditions after:(id)after
{
  flagCopy = flag;
  afterCopy = after;
  v15.receiver = self;
  v15.super_class = KTPendingFlag;
  v11 = [(KTPendingFlag *)&v15 init];
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

- (id)description
{
  fireTime = [(KTPendingFlag *)self fireTime];

  if (fireTime)
  {
    flag = [(KTPendingFlag *)self flag];
    fireTime2 = [(KTPendingFlag *)self fireTime];
LABEL_3:
    v6 = fireTime2;
    [NSString stringWithFormat:@"<KTPendingFlag: %@: %@>", flag, fireTime2];
    v7 = LABEL_4:;
    goto LABEL_5;
  }

  afterOperation = [(KTPendingFlag *)self afterOperation];

  if (!afterOperation)
  {
    flag = [(KTPendingFlag *)self flag];
    fireTime2 = sub_1001A2654([(KTPendingFlag *)self conditions]);
    goto LABEL_3;
  }

  conditions = [(KTPendingFlag *)self conditions];
  flag = [(KTPendingFlag *)self flag];
  afterOperation2 = [(KTPendingFlag *)self afterOperation];
  v6 = afterOperation2;
  if (!conditions)
  {
    [NSString stringWithFormat:@"<KTPendingFlag: %@: %@>", flag, afterOperation2];
    goto LABEL_4;
  }

  v12 = sub_1001A2654([(KTPendingFlag *)self conditions]);
  v7 = [NSString stringWithFormat:@"<KTPendingFlag: %@: %@ %@>", flag, v6, v12];

LABEL_5:

  return v7;
}

@end