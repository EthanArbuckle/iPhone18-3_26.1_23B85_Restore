@interface MessagingError
- (_TtC25keychainsharingmessagingd14MessagingError)initWithCoder:(id)a3;
- (_TtC25keychainsharingmessagingd14MessagingError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
@end

@implementation MessagingError

- (_TtC25keychainsharingmessagingd14MessagingError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  if (a5)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a3;
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10 = a3;
    v9.super.isa = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for MessagingError();
  v11 = [(MessagingError *)&v13 initWithDomain:a3 code:a4 userInfo:v9.super.isa];

  return v11;
}

- (_TtC25keychainsharingmessagingd14MessagingError)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MessagingError();
  v4 = a3;
  v5 = [(MessagingError *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end