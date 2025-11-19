@interface GKPseudonymManager
- (void)fetchPseudonymWithCompletionHandler:(id)a3;
- (void)revokePseudonym:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation GKPseudonymManager

- (void)fetchPseudonymWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_10028022C(&unk_1002C6770, v5);
}

- (void)revokePseudonym:(NSString *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_10028022C(&unk_1002C6760, v7);
}

@end