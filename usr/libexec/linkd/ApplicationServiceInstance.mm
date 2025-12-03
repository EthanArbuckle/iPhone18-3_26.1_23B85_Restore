@interface ApplicationServiceInstance
- (void)refreshAutoShortcutSubstitution:(NSArray *)substitution spans:(NSArray *)spans parameterPresentationSubstitutions:(NSArray *)substitutions reply:(id)reply;
- (void)setIntentEnabled:(NSString *)enabled enabled:(BOOL)a4 reply:(id)reply;
@end

@implementation ApplicationServiceInstance

- (void)refreshAutoShortcutSubstitution:(NSArray *)substitution spans:(NSArray *)spans parameterPresentationSubstitutions:(NSArray *)substitutions reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = substitution;
  v11[3] = spans;
  v11[4] = substitutions;
  v11[5] = v10;
  v11[6] = self;
  substitutionCopy = substitution;
  spansCopy = spans;
  substitutionsCopy = substitutions;
  selfCopy = self;

  sub_100006240(&unk_10014FD88, v11);
}

- (void)setIntentEnabled:(NSString *)enabled enabled:(BOOL)a4 reply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = enabled;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  enabledCopy = enabled;
  selfCopy = self;

  sub_100006240(&unk_10014FCF0, v9);
}

@end