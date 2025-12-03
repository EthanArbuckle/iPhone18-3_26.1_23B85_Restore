@interface CKKSSQLWhereColumn
+ (id)op:(unint64_t)op column:(unint64_t)column;
- (CKKSSQLWhereColumn)initWithOperation:(unint64_t)operation columnName:(unint64_t)name;
@end

@implementation CKKSSQLWhereColumn

- (CKKSSQLWhereColumn)initWithOperation:(unint64_t)operation columnName:(unint64_t)name
{
  v7.receiver = self;
  v7.super_class = CKKSSQLWhereColumn;
  result = [(CKKSSQLWhereColumn *)&v7 init];
  if (result)
  {
    result->_sqlOp = operation;
    result->_columnName = name;
  }

  return result;
}

+ (id)op:(unint64_t)op column:(unint64_t)column
{
  v4 = [[CKKSSQLWhereColumn alloc] initWithOperation:op columnName:column];

  return v4;
}

@end