@interface NESMProviderRegistration
- (BOOL)isEqual:(id)a3;
@end

@implementation NESMProviderRegistration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    v5 = 0;
    if (self)
    {
      goto LABEL_4;
    }

LABEL_9:
    token = 0;
    goto LABEL_5;
  }

  v5 = v4[1];
  if (!self)
  {
    goto LABEL_9;
  }

LABEL_4:
  token = self->_token;
LABEL_5:
  v7 = v5 == token;
LABEL_7:

  return v7;
}

@end