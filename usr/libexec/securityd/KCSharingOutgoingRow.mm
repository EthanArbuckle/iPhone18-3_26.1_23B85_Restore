@interface KCSharingOutgoingRow
+ (NSSet)requiredAttributeKeys;
- (KCSharingOutgoingRow)initWithAttributes:(id)attributes error:(id *)error;
- (KCSharingOutgoingRow)initWithOutgoingDatabaseItem:(SecDbItem *)item error:(id *)error;
- (id)attributesWithAccessGroups:(id)groups error:(id *)error;
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

- (id)attributesWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:0 userInfo:0];
  objc_exception_throw(v5);
}

- (KCSharingOutgoingRow)initWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:0 userInfo:0];
  objc_exception_throw(v5);
}

- (KCSharingOutgoingRow)initWithOutgoingDatabaseItem:(SecDbItem *)item error:(id *)error
{
  requiredAttributeKeys = [objc_opt_class() requiredAttributeKeys];
  v8 = sub_100017964(item, requiredAttributeKeys, error);

  if (v8)
  {
    self = [(KCSharingOutgoingRow *)self initWithAttributes:v8 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v10 = selfCopy;

  return v10;
}

@end