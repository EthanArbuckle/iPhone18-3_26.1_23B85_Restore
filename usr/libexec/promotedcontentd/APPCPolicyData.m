@interface APPCPolicyData
- (APPCPolicyData)initWithCoder:(id)a3;
- (APPCPolicyData)initWithPolicyType:(int64_t)a3 policyValue:(id)a4 isXLFormat:(id)a5;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APPCPolicyData

- (APPCPolicyData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APPCPolicyData *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v5->_policyType = [v4 decodeIntForKey:@"policyType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"policyValue"];
    policyValue = v5->_policyValue;
    v5->_policyValue = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerType"];
    containerType = v5->_containerType;
    v5->_containerType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adType"];
    adType = v5->_adType;
    v5->_adType = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expression"];
    expression = v5->_expression;
    v5->_expression = v16;

    v18 = [v4 decodeObjectOfClasses:v7 forKey:@"targetingExpression"];
    targetingExpression = v5->_targetingExpression;
    v5->_targetingExpression = v18;

    v20 = [v4 decodeObjectOfClasses:v9 forKey:@"dataAdapters"];
    dataAdapters = v5->_dataAdapters;
    v5->_dataAdapters = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placementDescriptor"];
    placementDescriptor = v5->_placementDescriptor;
    v5->_placementDescriptor = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adFormatType"];
    adFormatType = v5->_adFormatType;
    v5->_adFormatType = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userStatus"];
    userStatus = v5->_userStatus;
    v5->_userStatus = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isXLFormat"];
    isXLFormat = v5->_isXLFormat;
    v5->_isXLFormat = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[APPCPolicyData policyType](self forKey:{"policyType"), @"policyType"}];
  v5 = [(APPCPolicyData *)self policyValue];
  [v4 encodeObject:v5 forKey:@"policyValue"];

  v6 = [(APPCPolicyData *)self containerType];
  [v4 encodeObject:v6 forKey:@"containerType"];

  v7 = [(APPCPolicyData *)self adType];
  [v4 encodeObject:v7 forKey:@"adType"];

  v8 = [(APPCPolicyData *)self expression];
  [v4 encodeObject:v8 forKey:@"expression"];

  v9 = [(APPCPolicyData *)self targetingExpression];
  [v4 encodeObject:v9 forKey:@"targetingExpression"];

  v10 = [(APPCPolicyData *)self dataAdapters];
  [v4 encodeObject:v10 forKey:@"dataAdapters"];

  v11 = [(APPCPolicyData *)self placementDescriptor];
  [v4 encodeObject:v11 forKey:@"placementDescriptor"];

  v12 = [(APPCPolicyData *)self adFormatType];
  [v4 encodeObject:v12 forKey:@"adFormatType"];

  v13 = [(APPCPolicyData *)self userStatus];
  [v4 encodeObject:v13 forKey:@"userStatus"];

  v14 = [(APPCPolicyData *)self isXLFormat];
  [v4 encodeObject:v14 forKey:@"isXLFormat"];
}

- (APPCPolicyData)initWithPolicyType:(int64_t)a3 policyValue:(id)a4 isXLFormat:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = APPCPolicyData;
  v11 = [(APPCPolicyData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_policyType = a3;
    objc_storeStrong(&v11->_policyValue, a4);
    objc_storeStrong(&v12->_isXLFormat, a5);
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