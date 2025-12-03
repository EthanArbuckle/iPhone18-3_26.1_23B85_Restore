@interface MessagingError
- (_TtC25keychainsharingmessagingd14MessagingError)initWithCoder:(id)coder;
- (_TtC25keychainsharingmessagingd14MessagingError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation MessagingError

- (_TtC25keychainsharingmessagingd14MessagingError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  if (info)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    domainCopy = domain;
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    domainCopy2 = domain;
    v9.super.isa = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for MessagingError();
  v11 = [(MessagingError *)&v13 initWithDomain:domain code:code userInfo:v9.super.isa];

  return v11;
}

- (_TtC25keychainsharingmessagingd14MessagingError)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MessagingError();
  coderCopy = coder;
  v5 = [(MessagingError *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end