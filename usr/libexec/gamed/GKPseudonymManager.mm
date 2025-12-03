@interface GKPseudonymManager
- (void)fetchPseudonymWithCompletionHandler:(id)handler;
- (void)revokePseudonym:(NSString *)pseudonym completionHandler:(id)handler;
@end

@implementation GKPseudonymManager

- (void)fetchPseudonymWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_10028022C(&unk_1002C6770, v5);
}

- (void)revokePseudonym:(NSString *)pseudonym completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = pseudonym;
  v7[3] = v6;
  v7[4] = self;
  pseudonymCopy = pseudonym;
  selfCopy = self;

  sub_10028022C(&unk_1002C6760, v7);
}

@end