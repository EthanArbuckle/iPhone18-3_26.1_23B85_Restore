@interface HAPFieldWrapper
- (HAPFieldWrapper)initWithTlvId:(unint64_t)a3 name:(id)a4;
@end

@implementation HAPFieldWrapper

- (HAPFieldWrapper)initWithTlvId:(unint64_t)a3 name:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HAPFieldWrapper;
  v8 = [(HAPFieldWrapper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_tlvid = a3;
    objc_storeStrong(&v8->_name, a4);
  }

  return v9;
}

@end