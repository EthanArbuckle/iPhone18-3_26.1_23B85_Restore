@interface ApplicationServiceInstance
- (void)refreshAutoShortcutSubstitution:(NSArray *)a3 spans:(NSArray *)a4 parameterPresentationSubstitutions:(NSArray *)a5 reply:(id)a6;
- (void)setIntentEnabled:(NSString *)a3 enabled:(BOOL)a4 reply:(id)a5;
@end

@implementation ApplicationServiceInstance

- (void)refreshAutoShortcutSubstitution:(NSArray *)a3 spans:(NSArray *)a4 parameterPresentationSubstitutions:(NSArray *)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_100006240(&unk_10014FD88, v11);
}

- (void)setIntentEnabled:(NSString *)a3 enabled:(BOOL)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  v10 = a3;
  v11 = self;

  sub_100006240(&unk_10014FCF0, v9);
}

@end