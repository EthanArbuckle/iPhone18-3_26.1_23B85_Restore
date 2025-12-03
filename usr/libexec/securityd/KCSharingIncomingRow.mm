@interface KCSharingIncomingRow
+ (NSSet)requiredAttributeKeys;
- (KCSharingIncomingRow)initWithAttributes:(id)attributes error:(id *)error;
- (KCSharingIncomingRow)initWithIncomingDatabaseItem:(SecDbItem *)item error:(id *)error;
- (id)attributesWithAccessGroups:(id)groups error:(id *)error;
@end

@implementation KCSharingIncomingRow

+ (NSSet)requiredAttributeKeys
{
  if (qword_10039DB68 != -1)
  {
    dispatch_once(&qword_10039DB68, &stru_100333CA8);
  }

  v3 = qword_10039DB60;

  return v3;
}

- (id)attributesWithAccessGroups:(id)groups error:(id *)error
{
  groupsCopy = groups;
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:0 userInfo:0];
  objc_exception_throw(v5);
}

- (KCSharingIncomingRow)initWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:0 userInfo:0];
  objc_exception_throw(v5);
}

- (KCSharingIncomingRow)initWithIncomingDatabaseItem:(SecDbItem *)item error:(id *)error
{
  requiredAttributeKeys = [objc_opt_class() requiredAttributeKeys];
  v8 = sub_100017964(item, requiredAttributeKeys, error);

  if (v8)
  {
    self = [(KCSharingIncomingRow *)self initWithAttributes:v8 error:error];
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