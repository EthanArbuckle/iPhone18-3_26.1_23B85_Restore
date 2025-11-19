@interface AccessoryServer
- (void)accessoryServer:(id)a3 authenticateUUID:(id)a4 token:(id)a5;
- (void)accessoryServer:(id)a3 confirmUUID:(id)a4 token:(id)a5;
- (void)accessoryServer:(id)a3 didDiscoverAccessories:(id)a4 transaction:(id)a5 error:(id)a6;
- (void)accessoryServer:(id)a3 didFinishAuth:(id)a4;
- (void)accessoryServer:(id)a3 didReceiveBadPasswordThrottleAttemptsWithDelay:(int64_t)a4;
- (void)accessoryServer:(id)a3 didStopPairingWithError:(id)a4;
- (void)accessoryServer:(id)a3 didUpdateCategory:(id)a4;
- (void)accessoryServer:(id)a3 didUpdateHasPairings:(BOOL)a4;
- (void)accessoryServer:(id)a3 didUpdateName:(id)a4;
- (void)accessoryServer:(id)a3 didUpdateValuesForCharacteristic:(id)a4 value:(id)a5;
- (void)accessoryServer:(id)a3 didUpdateValuesForCharacteristics:(id)a4 stateNumber:(id)a5 broadcast:(BOOL)a6;
- (void)accessoryServer:(id)a3 promptUserForPasswordWithType:(unint64_t)a4;
- (void)accessoryServer:(id)a3 requestUserPermission:(int64_t)a4 accessoryInfo:(id)a5 error:(id)a6;
- (void)accessoryServer:(id)a3 updatePairingProgress:(int64_t)a4;
- (void)accessoryServer:(id)a3 validateCert:(id)a4 model:(id)a5;
- (void)accessoryServer:(id)a3 validateUUID:(id)a4 token:(id)a5 model:(id)a6;
- (void)accessoryServerDidUpdateStateNumber:(id)a3;
- (void)accessoryServerNeedsOwnershipToken:(id)a3;
@end

@implementation AccessoryServer

- (void)accessoryServer:(id)a3 promptUserForPasswordWithType:(unint64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_100153470(a3, a4);
}

- (void)accessoryServer:(id)a3 requestUserPermission:(int64_t)a4 accessoryInfo:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = self;
  v14 = a6;
  sub_100162EB0(a3, a4);
}

- (void)accessoryServer:(id)a3 didReceiveBadPasswordThrottleAttemptsWithDelay:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_100169790("accessoryServer:didReceiveBadPasswordThrottleAttemptsWithDelay");
}

- (void)accessoryServer:(id)a3 didStopPairingWithError:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_1001543AC(a3, a4);
}

- (void)accessoryServer:(id)a3 updatePairingProgress:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_100169790("accessoryServer:updatePairingProgress");
}

- (void)accessoryServer:(id)a3 didDiscoverAccessories:(id)a4 transaction:(id)a5 error:(id)a6
{
  v8 = a4;
  if (a4)
  {
    sub_100095B94(0, &qword_1002A9C40, off_100271C50);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_100163DF8(a3, v8, a6);
}

- (void)accessoryServer:(id)a3 didUpdateValuesForCharacteristics:(id)a4 stateNumber:(id)a5 broadcast:(BOOL)a6
{
  if (a4)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a5;
  v12 = self;
  sub_1001655C8(a3, v9);
}

- (void)accessoryServer:(id)a3 didUpdateValuesForCharacteristic:(id)a4 value:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15 = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_10015F948(a3, a4, v12, v14);
  sub_1000A0D2C(v12, v14);
}

- (void)accessoryServer:(id)a3 didUpdateHasPairings:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100169790("accessoryServer:didUpdateHasPairings");
}

- (void)accessoryServerDidUpdateStateNumber:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100169790("accessoryServerDidUpdateStateNumber");
}

- (void)accessoryServer:(id)a3 didUpdateCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100169790("accessoryServer:didUpdateCategory");
}

- (void)accessoryServer:(id)a3 didUpdateName:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_100169790("accessoryServer:didUpdateName");
}

- (void)accessoryServer:(id)a3 validateUUID:(id)a4 token:(id)a5 model:(id)a6
{
  v11 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v28 - v13;
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  v17 = a3;
  if (!a5)
  {
    v26 = a6;
    v27 = self;
    v22 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v23 = 0;
    v25 = 0;
    goto LABEL_9;
  }

  v18 = a5;
  v19 = a6;
  v20 = self;
  a5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

LABEL_9:
  sub_100160974(v17, v14, a5, v22, v23, v25);

  sub_1000A452C(a5, v22);

  sub_100095C84(v14, &qword_1002A7AF0, &qword_10023C9D0);
}

- (void)accessoryServer:(id)a3 validateCert:(id)a4 model:(id)a5
{
  v6 = a4;
  if (a4)
  {
    v8 = a3;
    v9 = a5;
    v10 = self;
    v11 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v14 = a3;
  v15 = a5;
  v16 = self;
  v13 = 0xF000000000000000;
  if (a5)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_5:
  sub_100169790("accessoryServer:validateCert");

  sub_1000A452C(v6, v13);
}

- (void)accessoryServer:(id)a3 authenticateUUID:(id)a4 token:(id)a5
{
  v9 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  if (a5)
  {
    v16 = a5;
    v17 = self;
    a5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v20 = self;
    v19 = 0xF000000000000000;
  }

  sub_1001694C4(v15);
  sub_1000A452C(a5, v19);

  sub_100095C84(v12, &qword_1002A7AF0, &qword_10023C9D0);
}

- (void)accessoryServer:(id)a3 confirmUUID:(id)a4 token:(id)a5
{
  v9 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  if (a5)
  {
    v16 = a5;
    v17 = self;
    a5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v20 = self;
    v19 = 0xF000000000000000;
  }

  sub_100161618(v15, v12, a5, v19);
  sub_1000A452C(a5, v19);

  sub_100095C84(v12, &qword_1002A7AF0, &qword_10023C9D0);
}

- (void)accessoryServer:(id)a3 didFinishAuth:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_100161B78(a3, a4);
}

- (void)accessoryServerNeedsOwnershipToken:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100169790("accessoryServerNeedsOwnershipToken");
}

@end