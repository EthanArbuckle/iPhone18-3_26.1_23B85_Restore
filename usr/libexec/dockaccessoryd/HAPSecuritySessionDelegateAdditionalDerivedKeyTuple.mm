@interface HAPSecuritySessionDelegateAdditionalDerivedKeyTuple
+ (id)new;
- (HAPSecuritySessionDelegateAdditionalDerivedKeyTuple)init;
- (HAPSecuritySessionDelegateAdditionalDerivedKeyTuple)initWithName:(id)name saltData:(id)data infoData:(id)infoData;
@end

@implementation HAPSecuritySessionDelegateAdditionalDerivedKeyTuple

+ (id)new
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (HAPSecuritySessionDelegateAdditionalDerivedKeyTuple)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (HAPSecuritySessionDelegateAdditionalDerivedKeyTuple)initWithName:(id)name saltData:(id)data infoData:(id)infoData
{
  nameCopy = name;
  dataCopy = data;
  infoDataCopy = infoData;
  v19.receiver = self;
  v19.super_class = HAPSecuritySessionDelegateAdditionalDerivedKeyTuple;
  v11 = [(HAPSecuritySessionDelegateAdditionalDerivedKeyTuple *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [dataCopy copy];
    saltData = v11->_saltData;
    v11->_saltData = v14;

    v16 = [infoDataCopy copy];
    infoData = v11->_infoData;
    v11->_infoData = v16;
  }

  return v11;
}

@end