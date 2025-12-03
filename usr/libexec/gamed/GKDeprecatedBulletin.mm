@interface GKDeprecatedBulletin
- (GKDeprecatedBulletin)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKDeprecatedBulletin

- (GKDeprecatedBulletin)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = GKDeprecatedBulletin;
  return [(GKBulletin *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = GKDeprecatedBulletin;
  [(GKBulletin *)&v3 encodeWithCoder:coder];
}

@end