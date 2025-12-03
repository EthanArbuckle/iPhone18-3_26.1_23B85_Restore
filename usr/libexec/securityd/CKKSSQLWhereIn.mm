@interface CKKSSQLWhereIn
- (CKKSSQLWhereIn)initWithValues:(id)values;
@end

@implementation CKKSSQLWhereIn

- (CKKSSQLWhereIn)initWithValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = CKKSSQLWhereIn;
  v6 = [(CKKSSQLWhereIn *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, values);
  }

  return v7;
}

@end