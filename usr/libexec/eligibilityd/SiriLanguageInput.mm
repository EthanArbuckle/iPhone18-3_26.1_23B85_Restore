@interface SiriLanguageInput
- (BOOL)isEqual:(id)equal;
- (NSString)language;
- (SiriLanguageInput)init;
- (SiriLanguageInput)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriLanguageInput

- (id)description
{
  language = [(SiriLanguageInput *)self language];
  v7.receiver = self;
  v7.super_class = SiriLanguageInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[SiriLanguageInput language:%@ %@]", language, v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = SiriLanguageInput;
  if ([(EligibilityInput *)&v7 isEqual:equalCopy])
  {
    if (equalCopy == self)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = SiriLanguageInput;
  return [(EligibilityInput *)&v4 copyWithZone:zone];
}

- (SiriLanguageInput)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SiriLanguageInput;
  return [(EligibilityInput *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SiriLanguageInput;
  [(EligibilityInput *)&v3 encodeWithCoder:coder];
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
  currentUsername = [v2 currentUsername];

  if (currentUsername)
  {
    v4 = CFPreferencesCopyValue(@"Session Language", @"com.apple.assistant.backedup", currentUsername, kCFPreferencesAnyHost);
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