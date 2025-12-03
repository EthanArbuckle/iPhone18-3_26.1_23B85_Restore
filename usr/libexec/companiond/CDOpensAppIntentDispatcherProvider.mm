@interface CDOpensAppIntentDispatcherProvider
+ (id)dispatcherWithRequestTypeData:(id)data error:(id *)error;
- (_TtC10companiond34CDOpensAppIntentDispatcherProvider)init;
@end

@implementation CDOpensAppIntentDispatcherProvider

+ (id)dispatcherWithRequestTypeData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = sub_10002467C(v5, v7);
  sub_100025410(v5, v7);

  return v8;
}

- (_TtC10companiond34CDOpensAppIntentDispatcherProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CDOpensAppIntentDispatcherProvider();
  return [(CDOpensAppIntentDispatcherProvider *)&v3 init];
}

@end