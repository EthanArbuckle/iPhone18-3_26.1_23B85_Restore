@interface HomeKitProxy
- (_TtC17proximitycontrold12HomeKitProxy)init;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddUser:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveUser:(id)a4;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation HomeKitProxy

- (_TtC17proximitycontrold12HomeKitProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100113134(v6, v7, &unk_100309158, sub_10011432C, &unk_100309170);
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100113134(v6, v7, &unk_100309108, sub_1001142BC, &unk_100309120);
}

- (void)home:(id)a3 didAddUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100113134(v6, v7, &unk_1003090B8, sub_100114294, &unk_1003090D0);
}

- (void)home:(id)a3 didRemoveUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100113134(v6, v7, &unk_100309068, sub_10011426C, &unk_100309080);
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100113CCC();
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100113F78(v7, &unk_100308FC8, sub_100114240, &unk_100308FE0);
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100113F78(v7, &unk_100308F78, sub_10011421C, &unk_100308F90);
}

@end