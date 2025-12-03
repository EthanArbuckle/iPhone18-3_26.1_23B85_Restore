@interface CKKSSQLWhereValue
+ (id)op:(unint64_t)op value:(id)value;
- (CKKSSQLWhereValue)initWithOperation:(unint64_t)operation value:(id)value;
@end

@implementation CKKSSQLWhereValue

- (CKKSSQLWhereValue)initWithOperation:(unint64_t)operation value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = CKKSSQLWhereValue;
  v8 = [(CKKSSQLWhereValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_sqlOp = operation;
    objc_storeStrong(&v8->_value, value);
  }

  return v9;
}

+ (id)op:(unint64_t)op value:(id)value
{
  valueCopy = value;
  v6 = [[CKKSSQLWhereValue alloc] initWithOperation:op value:valueCopy];

  return v6;
}

@end