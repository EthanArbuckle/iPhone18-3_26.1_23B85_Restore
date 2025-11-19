@interface TResult
- (BOOL)isVoid;
- (NSError)failure;
- (_TtC9securityd7TResult)init;
- (_TtC9securityd7TResult)initWithFailure:(id)a3;
- (id)success;
@end

@implementation TResult

- (_TtC9securityd7TResult)initWithFailure:(id)a3
{
  v4 = type metadata accessor for TResult();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC9securityd7TResult_result];
  *v6 = a3;
  v6[8] = 1;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = a3;
  v8 = [(TResult *)&v10 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (id)success
{
  v2 = self + OBJC_IVAR____TtC9securityd7TResult_result;
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9securityd7TResult_result);
  if (v2[8])
  {
    sub_10002ACB8(&qword_10039B270, &qword_1002941E0);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v4 = swift_unknownObjectRetain();
  }

  return v4;
}

- (NSError)failure
{
  if (self->result[OBJC_IVAR____TtC9securityd7TResult_result] == 1)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC9securityd7TResult_result);
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    sub_10002BB48(v3, 1);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isVoid
{
  if (self->result[OBJC_IVAR____TtC9securityd7TResult_result])
  {
    return 0;
  }

  v3 = *(&self->super.isa + OBJC_IVAR____TtC9securityd7TResult_result);
  type metadata accessor for TResult.VoidWrapper();
  return swift_dynamicCastClass() != 0;
}

- (_TtC9securityd7TResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end