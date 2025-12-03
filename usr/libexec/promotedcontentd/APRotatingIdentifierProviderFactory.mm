@interface APRotatingIdentifierProviderFactory
- (APRotatingIdentifierProvider)provider;
- (APRotatingIdentifierProviderFactory)init;
- (void)setProvider:(id)provider;
@end

@implementation APRotatingIdentifierProviderFactory

- (APRotatingIdentifierProvider)provider
{
  selfCopy = self;
  v3 = sub_100002E80();

  return v3;
}

- (void)setProvider:(id)provider
{
  v4 = *(&self->super.isa + OBJC_IVAR___APRotatingIdentifierProviderFactory____lazy_storage___provider);
  *(&self->super.isa + OBJC_IVAR___APRotatingIdentifierProviderFactory____lazy_storage___provider) = provider;
  providerCopy = provider;
}

- (APRotatingIdentifierProviderFactory)init
{
  *(&self->super.isa + OBJC_IVAR___APRotatingIdentifierProviderFactory____lazy_storage___provider) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RotatingIdentifierProviderFactory();
  return [(APRotatingIdentifierProviderFactory *)&v3 init];
}

@end