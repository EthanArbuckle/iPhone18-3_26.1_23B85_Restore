@interface APRotatingIdentifierProviderFactory
- (APRotatingIdentifierProvider)provider;
- (APRotatingIdentifierProviderFactory)init;
- (void)setProvider:(id)a3;
@end

@implementation APRotatingIdentifierProviderFactory

- (APRotatingIdentifierProvider)provider
{
  v2 = self;
  v3 = sub_100002E80();

  return v3;
}

- (void)setProvider:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___APRotatingIdentifierProviderFactory____lazy_storage___provider);
  *(&self->super.isa + OBJC_IVAR___APRotatingIdentifierProviderFactory____lazy_storage___provider) = a3;
  v3 = a3;
}

- (APRotatingIdentifierProviderFactory)init
{
  *(&self->super.isa + OBJC_IVAR___APRotatingIdentifierProviderFactory____lazy_storage___provider) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RotatingIdentifierProviderFactory();
  return [(APRotatingIdentifierProviderFactory *)&v3 init];
}

@end