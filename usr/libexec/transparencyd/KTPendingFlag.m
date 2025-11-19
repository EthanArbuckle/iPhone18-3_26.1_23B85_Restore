@interface KTPendingFlag
- (KTPendingFlag)initWithFlag:(id)a3 conditions:(unint64_t)a4 after:(id)a5;
- (KTPendingFlag)initWithFlag:(id)a3 conditions:(unint64_t)a4 delayInSeconds:(double)a5;
- (KTPendingFlag)initWithFlag:(id)a3 conditions:(unint64_t)a4 scheduler:(id)a5;
- (KTPendingFlag)initWithFlag:(id)a3 delayInSeconds:(double)a4;
- (id)description;
@end

@implementation KTPendingFlag

- (KTPendingFlag)initWithFlag:(id)a3 delayInSeconds:(double)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = KTPendingFlag;
  v8 = [(KTPendingFlag *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_flag, a3);
    v10 = [NSDate dateWithTimeIntervalSinceNow:a4];
    fireTime = v9->_fireTime;
    v9->_fireTime = v10;

    afterOperation = v9->_afterOperation;
    v9->_afterOperation = 0;

    v9->_conditions = 0;
  }

  return v9;
}

- (KTPendingFlag)initWithFlag:(id)a3 conditions:(unint64_t)a4 delayInSeconds:(double)a5
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = KTPendingFlag;
  v10 = [(KTPendingFlag *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_flag, a3);
    if (a5 <= 0.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = [NSDate dateWithTimeIntervalSinceNow:a5];
    }

    fireTime = v11->_fireTime;
    v11->_fireTime = v12;

    afterOperation = v11->_afterOperation;
    v11->_afterOperation = 0;

    v11->_conditions = a4;
  }

  return v11;
}

- (KTPendingFlag)initWithFlag:(id)a3 conditions:(unint64_t)a4 scheduler:(id)a5
{
  v9 = a3;
  v10 = a5;
  [v10 trigger];
  v17.receiver = self;
  v17.super_class = KTPendingFlag;
  v11 = [(KTPendingFlag *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_flag, a3);
    fireTime = v12->_fireTime;
    v12->_fireTime = 0;

    objc_storeStrong(&v12->_scheduler, a5);
    v14 = [v10 operationDependency];
    afterOperation = v12->_afterOperation;
    v12->_afterOperation = v14;

    v12->_conditions = a4;
  }

  return v12;
}

- (KTPendingFlag)initWithFlag:(id)a3 conditions:(unint64_t)a4 after:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = KTPendingFlag;
  v11 = [(KTPendingFlag *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_flag, a3);
    fireTime = v12->_fireTime;
    v12->_fireTime = 0;

    objc_storeStrong(&v12->_afterOperation, a5);
    v12->_conditions = a4;
  }

  return v12;
}

- (id)description
{
  v3 = [(KTPendingFlag *)self fireTime];

  if (v3)
  {
    v4 = [(KTPendingFlag *)self flag];
    v5 = [(KTPendingFlag *)self fireTime];
LABEL_3:
    v6 = v5;
    [NSString stringWithFormat:@"<KTPendingFlag: %@: %@>", v4, v5];
    v7 = LABEL_4:;
    goto LABEL_5;
  }

  v9 = [(KTPendingFlag *)self afterOperation];

  if (!v9)
  {
    v4 = [(KTPendingFlag *)self flag];
    v5 = sub_1001A2654([(KTPendingFlag *)self conditions]);
    goto LABEL_3;
  }

  v10 = [(KTPendingFlag *)self conditions];
  v4 = [(KTPendingFlag *)self flag];
  v11 = [(KTPendingFlag *)self afterOperation];
  v6 = v11;
  if (!v10)
  {
    [NSString stringWithFormat:@"<KTPendingFlag: %@: %@>", v4, v11];
    goto LABEL_4;
  }

  v12 = sub_1001A2654([(KTPendingFlag *)self conditions]);
  v7 = [NSString stringWithFormat:@"<KTPendingFlag: %@: %@ %@>", v4, v6, v12];

LABEL_5:

  return v7;
}

@end