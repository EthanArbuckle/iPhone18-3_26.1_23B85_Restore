@interface GenerativeModelSystemInput
- (BOOL)isEqual:(id)equal;
- (GenerativeModelSystemInput)init;
- (GenerativeModelSystemInput)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GenerativeModelSystemInput

- (NSString)description
{
  if ([(GenerativeModelSystemInput *)self supportsGenerativeModelSystems])
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  v7.receiver = self;
  v7.super_class = GenerativeModelSystemInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[GenerativeModelSystemInput supportsGenerativeModelSystems:%@ %@]", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = GenerativeModelSystemInput;
  if (![(EligibilityInput *)&v11 isEqual:equalCopy])
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v9 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    supportsGenerativeModelSystems = [(GenerativeModelSystemInput *)self supportsGenerativeModelSystems];
    v7 = supportsGenerativeModelSystems ^ [(GenerativeModelSystemInput *)v5 supportsGenerativeModelSystems];
    if (v7 == 1)
    {
      v8 = sub_10001F638();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[GenerativeModelSystemInput isEqual:]";
        v14 = 2080;
        v15 = "supportsGenerativeModelSystems";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Property %s did not match", buf, 0x16u);
      }
    }

    v9 = v7 ^ 1;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = GenerativeModelSystemInput;
  v3 = [(EligibilityInput *)&v5 hash];
  return v3 ^ [(GenerativeModelSystemInput *)self supportsGenerativeModelSystems];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = GenerativeModelSystemInput;
  v4 = [(EligibilityInput *)&v6 copyWithZone:zone];
  [v4 setSupportsGenerativeModelSystems:{-[GenerativeModelSystemInput supportsGenerativeModelSystems](self, "supportsGenerativeModelSystems")}];
  return v4;
}

- (GenerativeModelSystemInput)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GenerativeModelSystemInput;
  v3 = [(EligibilityInput *)&v5 initWithInputType:8 status:0 process:@"eligibilityd"];
  if (v3)
  {
    v3->_supportsGenerativeModelSystems = +[GenerativeModelSystemInput _mgSupportsGenerativeModelSystems];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = GenerativeModelSystemInput;
  [(EligibilityInput *)&v3 encodeWithCoder:coder];
}

- (GenerativeModelSystemInput)init
{
  v4.receiver = self;
  v4.super_class = GenerativeModelSystemInput;
  v2 = [(EligibilityInput *)&v4 initWithInputType:8 status:0 process:@"eligibilityd"];
  if (v2)
  {
    v2->_supportsGenerativeModelSystems = +[GenerativeModelSystemInput _mgSupportsGenerativeModelSystems];
  }

  return v2;
}

@end