@interface CAFDFramework
- (_TtC13caraccessoryd13CAFDFramework)init;
- (_TtC13caraccessoryd13CAFDFramework)initWithCarManager:(id)manager;
@end

@implementation CAFDFramework

- (_TtC13caraccessoryd13CAFDFramework)initWithCarManager:(id)manager
{
  managerCopy = manager;
  v4 = specialized CAFDFramework.init(carManager:)(managerCopy);

  return v4;
}

- (_TtC13caraccessoryd13CAFDFramework)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end