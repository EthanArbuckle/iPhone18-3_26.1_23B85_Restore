@interface CAFDAsyncCarManager
- (_TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager)init;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
@end

@implementation CAFDAsyncCarManager

- (_TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  CAFDAsyncCarManager.carManager(_:didUpdateCurrentCar:)(managerCopy, car);
}

@end