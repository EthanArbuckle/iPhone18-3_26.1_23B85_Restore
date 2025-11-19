@interface KCSharingOutgoingRow
+ (NSSet)requiredAttributeKeys;
- (KCSharingOutgoingRow)initWithAttributes:(id)a3 error:(id *)a4;
- (KCSharingOutgoingRow)initWithOutgoingDatabaseItem:(SecDbItem *)a3 error:(id *)a4;
- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4;
@end

@implementation KCSharingOutgoingRow

+ (NSSet)requiredAttributeKeys
{
  if (qword_10039DB88 != -1)
  {
    dispatch_once(&qword_10039DB88, &stru_100334668);
  }

  v3 = qword_10039DB80;

  return v3;
}

- (id)attributesWithAccessGroups:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:0 userInfo:0];
  objc_exception_throw(v5);
}

- (KCSharingOutgoingRow)initWithAttributes:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:0 userInfo:0];
  objc_exception_throw(v5);
}

- (KCSharingOutgoingRow)initWithOutgoingDatabaseItem:(SecDbItem *)a3 error:(id *)a4
{
  v7 = [objc_opt_class() requiredAttributeKeys];
  v8 = sub_100017964(a3, v7, a4);

  if (v8)
  {
    self = [(KCSharingOutgoingRow *)self initWithAttributes:v8 error:a4];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v10;
}

@end