@interface APPCPolicyData
- (APPCPolicyData)initWithCoder:(id)coder;
- (APPCPolicyData)initWithPolicyType:(int64_t)type policyValue:(id)value isXLFormat:(id)format;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APPCPolicyData

- (APPCPolicyData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(APPCPolicyData *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v5->_policyType = [coderCopy decodeIntForKey:@"policyType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"policyValue"];
    policyValue = v5->_policyValue;
    v5->_policyValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerType"];
    containerType = v5->_containerType;
    v5->_containerType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adType"];
    adType = v5->_adType;
    v5->_adType = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expression"];
    expression = v5->_expression;
    v5->_expression = v16;

    v18 = [coderCopy decodeObjectOfClasses:v7 forKey:@"targetingExpression"];
    targetingExpression = v5->_targetingExpression;
    v5->_targetingExpression = v18;

    v20 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dataAdapters"];
    dataAdapters = v5->_dataAdapters;
    v5->_dataAdapters = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placementDescriptor"];
    placementDescriptor = v5->_placementDescriptor;
    v5->_placementDescriptor = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adFormatType"];
    adFormatType = v5->_adFormatType;
    v5->_adFormatType = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userStatus"];
    userStatus = v5->_userStatus;
    v5->_userStatus = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isXLFormat"];
    isXLFormat = v5->_isXLFormat;
    v5->_isXLFormat = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[APPCPolicyData policyType](self forKey:{"policyType"), @"policyType"}];
  policyValue = [(APPCPolicyData *)self policyValue];
  [coderCopy encodeObject:policyValue forKey:@"policyValue"];

  containerType = [(APPCPolicyData *)self containerType];
  [coderCopy encodeObject:containerType forKey:@"containerType"];

  adType = [(APPCPolicyData *)self adType];
  [coderCopy encodeObject:adType forKey:@"adType"];

  expression = [(APPCPolicyData *)self expression];
  [coderCopy encodeObject:expression forKey:@"expression"];

  targetingExpression = [(APPCPolicyData *)self targetingExpression];
  [coderCopy encodeObject:targetingExpression forKey:@"targetingExpression"];

  dataAdapters = [(APPCPolicyData *)self dataAdapters];
  [coderCopy encodeObject:dataAdapters forKey:@"dataAdapters"];

  placementDescriptor = [(APPCPolicyData *)self placementDescriptor];
  [coderCopy encodeObject:placementDescriptor forKey:@"placementDescriptor"];

  adFormatType = [(APPCPolicyData *)self adFormatType];
  [coderCopy encodeObject:adFormatType forKey:@"adFormatType"];

  userStatus = [(APPCPolicyData *)self userStatus];
  [coderCopy encodeObject:userStatus forKey:@"userStatus"];

  isXLFormat = [(APPCPolicyData *)self isXLFormat];
  [coderCopy encodeObject:isXLFormat forKey:@"isXLFormat"];
}

- (APPCPolicyData)initWithPolicyType:(int64_t)type policyValue:(id)value isXLFormat:(id)format
{
  valueCopy = value;
  formatCopy = format;
  v14.receiver = self;
  v14.super_class = APPCPolicyData;
  v11 = [(APPCPolicyData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_policyType = type;
    objc_storeStrong(&v11->_policyValue, value);
    objc_storeStrong(&v12->_isXLFormat, format);
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:LODWORD(self->_policyType)];
  [v3 setObject:v4 forKeyedSubscript:@"policyType"];

  [v3 setObject:self->_policyValue forKeyedSubscript:@"policyValue"];
  [v3 setObject:self->_isXLFormat forKeyedSubscript:@"isXLFormat"];
  [v3 setValue:self->_containerType forKey:@"containerType"];
  [v3 setValue:self->_adType forKey:@"adType"];
  [v3 setValue:self->_expression forKey:@"expression"];
  [v3 setValue:self->_placementDescriptor forKey:@"placementDescriptor"];
  [v3 setValue:self->_adFormatType forKey:@"adFormatType"];
  [v3 setValue:self->_userStatus forKey:@"userStatus"];
  [v3 setValue:self->_targetingExpression forKey:@"targetingExpression"];
  [v3 setValue:self->_dataAdapters forKey:@"dataAdapters"];

  return v3;
}

@end