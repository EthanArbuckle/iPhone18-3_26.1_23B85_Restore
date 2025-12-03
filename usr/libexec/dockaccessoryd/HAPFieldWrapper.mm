@interface HAPFieldWrapper
- (HAPFieldWrapper)initWithTlvId:(unint64_t)id name:(id)name;
@end

@implementation HAPFieldWrapper

- (HAPFieldWrapper)initWithTlvId:(unint64_t)id name:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = HAPFieldWrapper;
  v8 = [(HAPFieldWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_tlvid = id;
    objc_storeStrong(&v8->_name, name);
  }

  return v9;
}

@end