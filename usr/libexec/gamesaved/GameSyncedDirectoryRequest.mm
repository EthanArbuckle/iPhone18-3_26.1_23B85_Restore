@interface GameSyncedDirectoryRequest
- (GameSyncedDirectoryRequest)init;
- (GameSyncedDirectoryRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GameSyncedDirectoryRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_10000FC44(coderCopy);
}

- (GameSyncedDirectoryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_100010E5C(coderCopy);

  return v4;
}

- (GameSyncedDirectoryRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end