@interface CKKSSQLWhereValue
+ (id)op:(unint64_t)a3 value:(id)a4;
- (CKKSSQLWhereValue)initWithOperation:(unint64_t)a3 value:(id)a4;
@end

@implementation CKKSSQLWhereValue

- (CKKSSQLWhereValue)initWithOperation:(unint64_t)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CKKSSQLWhereValue;
  v8 = [(CKKSSQLWhereValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_sqlOp = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

+ (id)op:(unint64_t)a3 value:(id)a4
{
  v5 = a4;
  v6 = [[CKKSSQLWhereValue alloc] initWithOperation:a3 value:v5];

  return v6;
}

@end