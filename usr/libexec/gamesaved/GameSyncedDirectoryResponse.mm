@interface GameSyncedDirectoryResponse
- (GameSyncedDirectoryResponse)init;
- (GameSyncedDirectoryResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GameSyncedDirectoryResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_10000F408(coderCopy);
}

- (GameSyncedDirectoryResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_100010A6C(coderCopy);

  return v4;
}

- (GameSyncedDirectoryResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end