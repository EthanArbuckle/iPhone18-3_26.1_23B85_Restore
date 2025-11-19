@interface GameSyncedDirectoryResponse
- (GameSyncedDirectoryResponse)init;
- (GameSyncedDirectoryResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GameSyncedDirectoryResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000F408(v4);
}

- (GameSyncedDirectoryResponse)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_100010A6C(v3);

  return v4;
}

- (GameSyncedDirectoryResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end