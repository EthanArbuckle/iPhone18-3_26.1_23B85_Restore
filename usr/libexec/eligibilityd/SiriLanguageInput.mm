@interface SiriLanguageInput
- (BOOL)isEqual:(id)a3;
- (NSString)language;
- (SiriLanguageInput)init;
- (SiriLanguageInput)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriLanguageInput

- (id)description
{
  v3 = [(SiriLanguageInput *)self language];
  v7.receiver = self;
  v7.super_class = SiriLanguageInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[SiriLanguageInput language:%@ %@]", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SiriLanguageInput;
  if ([(EligibilityInput *)&v7 isEqual:v4])
  {
    if (v4 == self)
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = SiriLanguageInput;
  return [(EligibilityInput *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = SiriLanguageInput;
  return [(EligibilityInput *)&v4 copyWithZone:a3];
}

- (SiriLanguageInput)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SiriLanguageInput;
  return [(EligibilityInput *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SiriLanguageInput;
  [(EligibilityInput *)&v3 encodeWithCoder:a3];
}

- (SiriLanguageInput)init
{
  v3.receiver = self;
  v3.super_class = SiriLanguageInput;
  return [(EligibilityInput *)&v3 initWithInputType:10 status:0 process:@"eligibilityd"];
}

- (NSString)language
{
  v2 = +[GlobalConfiguration sharedInstance];
  v3 = [v2 currentUsername];

  if (v3)
  {
    v4 = CFPreferencesCopyValue(@"Session Language", @"com.apple.assistant.backedup", v3, kCFPreferencesAnyHost);
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end