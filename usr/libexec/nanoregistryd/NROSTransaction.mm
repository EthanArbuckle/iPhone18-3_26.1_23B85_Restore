@interface NROSTransaction
+ (NROSTransaction)transactionWithName:(id)name;
- (NROSTransaction)initWithName:(id)name;
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

+ (NROSTransaction)transactionWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithName:nameCopy];

  return v5;
}

- (NROSTransaction)initWithName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = NROSTransaction;
  v5 = [(NROSTransaction *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_new();
    uUIDString = [v6 UUIDString];
    v8 = [uUIDString substringToIndex:4];
    v9 = [NSString stringWithFormat:@"%@.%@", nameCopy, v8];
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