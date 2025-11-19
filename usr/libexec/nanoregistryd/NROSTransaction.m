@interface NROSTransaction
+ (NROSTransaction)transactionWithName:(id)a3;
- (NROSTransaction)initWithName:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation NROSTransaction

- (id)description
{
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"none";
  }

  return [@"NROSTransaction: " stringByAppendingString:name];
}

+ (NROSTransaction)transactionWithName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithName:v4];

  return v5;
}

- (NROSTransaction)initWithName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NROSTransaction;
  v5 = [(NROSTransaction *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v6 UUIDString];
    v8 = [v7 substringToIndex:4];
    v9 = [NSString stringWithFormat:@"%@.%@", v4, v8];
    name = v5->_name;
    v5->_name = v9;

    v11 = +[NROSTransactionLogger sharedInstance];
    v12 = [v11 addTransaction:v5];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NROSTransactionLogger sharedInstance];
  [v3 removeTransaction:self];

  v4.receiver = self;
  v4.super_class = NROSTransaction;
  [(NROSTransaction *)&v4 dealloc];
}

@end