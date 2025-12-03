@interface APPCIdentifierProvider
- (APPCIdentifierProvider)init;
- (APPCIdentifierProvider)initWithIdentifierProvider:(id)provider;
- (id)getIdentifiersWithType:(int64_t)type source:(int64_t)source processId:(id)id;
@end

@implementation APPCIdentifierProvider

- (APPCIdentifierProvider)initWithIdentifierProvider:(id)provider
{
  ObjectType = swift_getObjectType();
  result = [swift_unknownObjectRetain() provider];
  if (result)
  {
    *(&self->super.isa + OBJC_IVAR___APPCIdentifierProvider_identifierProvider) = result;
    v7.receiver = self;
    v7.super_class = ObjectType;
    v6 = [(APPCIdentifierProvider *)&v7 init];
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)getIdentifiersWithType:(int64_t)type source:(int64_t)source processId:(id)id
{
  sub_100398F58();
  selfCopy = self;
  PCIdentifierProvider.getIdentifiers(type:source:processId:)(type);

  type metadata accessor for PCRotatingIdentifier();
  v8.super.isa = sub_100399178().super.isa;

  return v8.super.isa;
}

- (APPCIdentifierProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end