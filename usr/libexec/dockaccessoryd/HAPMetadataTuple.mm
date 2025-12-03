@interface HAPMetadataTuple
- (BOOL)isEqual:(id)equal;
- (HAPMetadataTuple)initWithCharacteristicType:(id)type serviceType:(id)serviceType;
- (unint64_t)hash;
@end

@implementation HAPMetadataTuple

- (HAPMetadataTuple)initWithCharacteristicType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  v9 = serviceTypeCopy;
  selfCopy = 0;
  if (typeCopy && serviceTypeCopy)
  {
    v16.receiver = self;
    v16.super_class = HAPMetadataTuple;
    v11 = [(HAPMetadataTuple *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_characteristicType, type);
      objc_storeStrong(&v12->_serviceType, serviceType);
      typeCopy = [NSString stringWithFormat:@"%@+%@", v9, typeCopy];
      index = v12->_index;
      v12->_index = typeCopy;
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    index = [v6 index];
    index2 = [(HAPMetadataTuple *)self index];
    v10 = [index isEqual:index2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  index = [(HAPMetadataTuple *)self index];
  v3 = [index hash];

  return v3;
}

@end