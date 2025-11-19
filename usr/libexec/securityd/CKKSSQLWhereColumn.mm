@interface CKKSSQLWhereColumn
+ (id)op:(unint64_t)a3 column:(unint64_t)a4;
- (CKKSSQLWhereColumn)initWithOperation:(unint64_t)a3 columnName:(unint64_t)a4;
@end

@implementation CKKSSQLWhereColumn

- (CKKSSQLWhereColumn)initWithOperation:(unint64_t)a3 columnName:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CKKSSQLWhereColumn;
  result = [(CKKSSQLWhereColumn *)&v7 init];
  if (result)
  {
    result->_sqlOp = a3;
    result->_columnName = a4;
  }

  return result;
}

+ (id)op:(unint64_t)a3 column:(unint64_t)a4
{
  v4 = [[CKKSSQLWhereColumn alloc] initWithOperation:a3 columnName:a4];

  return v4;
}

@end