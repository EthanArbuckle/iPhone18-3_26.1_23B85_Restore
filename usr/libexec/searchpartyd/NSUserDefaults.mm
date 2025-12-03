@interface NSUserDefaults
- (BOOL)userHasAcknowledgedFindMy;
- (void)setUserHasAcknowledgedFindMy:(BOOL)my;
@end

@implementation NSUserDefaults

- (BOOL)userHasAcknowledgedFindMy
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (void)setUserHasAcknowledgedFindMy:(BOOL)my
{
  selfCopy = self;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [(NSUserDefaults *)selfCopy setValue:isa forKey:v4];
}

@end