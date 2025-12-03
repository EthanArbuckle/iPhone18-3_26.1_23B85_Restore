@interface HomeKitProxy
- (_TtC17proximitycontrold12HomeKitProxy)init;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeKitProxy

- (_TtC17proximitycontrold12HomeKitProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_100113134(homeCopy, accessoryCopy, &unk_100309158, sub_10011432C, &unk_100309170);
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_100113134(homeCopy, accessoryCopy, &unk_100309108, sub_1001142BC, &unk_100309120);
}

- (void)home:(id)home didAddUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_100113134(homeCopy, userCopy, &unk_1003090B8, sub_100114294, &unk_1003090D0);
}

- (void)home:(id)home didRemoveUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_100113134(homeCopy, userCopy, &unk_100309068, sub_10011426C, &unk_100309080);
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_100113CCC();
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_100113F78(homeCopy, &unk_100308FC8, sub_100114240, &unk_100308FE0);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  sub_100113F78(homeCopy, &unk_100308F78, sub_10011421C, &unk_100308F90);
}

@end