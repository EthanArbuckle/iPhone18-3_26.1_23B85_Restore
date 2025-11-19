@interface NSUserDefaults
- (BOOL)userHasAcknowledgedFindMy;
- (void)setUserHasAcknowledgedFindMy:(BOOL)a3;
@end

@implementation NSUserDefaults

- (BOOL)userHasAcknowledgedFindMy
{
  v2 = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (void)setUserHasAcknowledgedFindMy:(BOOL)a3
{
  v5 = self;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)v5 setValue:isa forKey:v4];
}

@end