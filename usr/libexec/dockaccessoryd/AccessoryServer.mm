@interface AccessoryServer
- (void)accessoryServer:(id)server authenticateUUID:(id)d token:(id)token;
- (void)accessoryServer:(id)server confirmUUID:(id)d token:(id)token;
- (void)accessoryServer:(id)server didDiscoverAccessories:(id)accessories transaction:(id)transaction error:(id)error;
- (void)accessoryServer:(id)server didFinishAuth:(id)auth;
- (void)accessoryServer:(id)server didReceiveBadPasswordThrottleAttemptsWithDelay:(int64_t)delay;
- (void)accessoryServer:(id)server didStopPairingWithError:(id)error;
- (void)accessoryServer:(id)server didUpdateCategory:(id)category;
- (void)accessoryServer:(id)server didUpdateHasPairings:(BOOL)pairings;
- (void)accessoryServer:(id)server didUpdateName:(id)name;
- (void)accessoryServer:(id)server didUpdateValuesForCharacteristic:(id)characteristic value:(id)value;
- (void)accessoryServer:(id)server didUpdateValuesForCharacteristics:(id)characteristics stateNumber:(id)number broadcast:(BOOL)broadcast;
- (void)accessoryServer:(id)server promptUserForPasswordWithType:(unint64_t)type;
- (void)accessoryServer:(id)server requestUserPermission:(int64_t)permission accessoryInfo:(id)info error:(id)error;
- (void)accessoryServer:(id)server updatePairingProgress:(int64_t)progress;
- (void)accessoryServer:(id)server validateCert:(id)cert model:(id)model;
- (void)accessoryServer:(id)server validateUUID:(id)d token:(id)token model:(id)model;
- (void)accessoryServerDidUpdateStateNumber:(id)number;
- (void)accessoryServerNeedsOwnershipToken:(id)token;
@end

@implementation AccessoryServer

- (void)accessoryServer:(id)server promptUserForPasswordWithType:(unint64_t)type
{
  serverCopy = server;
  selfCopy = self;
  sub_100153470(server, type);
}

- (void)accessoryServer:(id)server requestUserPermission:(int64_t)permission accessoryInfo:(id)info error:(id)error
{
  serverCopy = server;
  infoCopy = info;
  selfCopy = self;
  errorCopy = error;
  sub_100162EB0(server, permission);
}

- (void)accessoryServer:(id)server didReceiveBadPasswordThrottleAttemptsWithDelay:(int64_t)delay
{
  serverCopy = server;
  selfCopy = self;
  sub_100169790("accessoryServer:didReceiveBadPasswordThrottleAttemptsWithDelay");
}

- (void)accessoryServer:(id)server didStopPairingWithError:(id)error
{
  serverCopy = server;
  selfCopy = self;
  errorCopy = error;
  sub_1001543AC(server, error);
}

- (void)accessoryServer:(id)server updatePairingProgress:(int64_t)progress
{
  serverCopy = server;
  selfCopy = self;
  sub_100169790("accessoryServer:updatePairingProgress");
}

- (void)accessoryServer:(id)server didDiscoverAccessories:(id)accessories transaction:(id)transaction error:(id)error
{
  accessoriesCopy = accessories;
  if (accessories)
  {
    sub_100095B94(0, &qword_1002A9C40, off_100271C50);
    accessoriesCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serverCopy = server;
  transactionCopy = transaction;
  errorCopy = error;
  selfCopy = self;
  sub_100163DF8(server, accessoriesCopy, error);
}

- (void)accessoryServer:(id)server didUpdateValuesForCharacteristics:(id)characteristics stateNumber:(id)number broadcast:(BOOL)broadcast
{
  if (characteristics)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  serverCopy = server;
  numberCopy = number;
  selfCopy = self;
  sub_1001655C8(server, v9);
}

- (void)accessoryServer:(id)server didUpdateValuesForCharacteristic:(id)characteristic value:(id)value
{
  serverCopy = server;
  characteristicCopy = characteristic;
  valueCopy = value;
  selfCopy = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_10015F948(server, characteristic, v12, v14);
  sub_1000A0D2C(v12, v14);
}

- (void)accessoryServer:(id)server didUpdateHasPairings:(BOOL)pairings
{
  serverCopy = server;
  selfCopy = self;
  sub_100169790("accessoryServer:didUpdateHasPairings");
}

- (void)accessoryServerDidUpdateStateNumber:(id)number
{
  numberCopy = number;
  selfCopy = self;
  sub_100169790("accessoryServerDidUpdateStateNumber");
}

- (void)accessoryServer:(id)server didUpdateCategory:(id)category
{
  serverCopy = server;
  categoryCopy = category;
  selfCopy = self;
  sub_100169790("accessoryServer:didUpdateCategory");
}

- (void)accessoryServer:(id)server didUpdateName:(id)name
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serverCopy = server;
  selfCopy = self;
  sub_100169790("accessoryServer:didUpdateName");
}

- (void)accessoryServer:(id)server validateUUID:(id)d token:(id)token model:(id)model
{
  v11 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v28 - v13;
  if (d)
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

  serverCopy = server;
  if (!token)
  {
    modelCopy = model;
    selfCopy = self;
    v22 = 0xF000000000000000;
    if (model)
    {
      goto LABEL_6;
    }

LABEL_8:
    v23 = 0;
    v25 = 0;
    goto LABEL_9;
  }

  tokenCopy = token;
  modelCopy2 = model;
  selfCopy2 = self;
  token = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (!model)
  {
    goto LABEL_8;
  }

LABEL_6:
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

LABEL_9:
  sub_100160974(serverCopy, v14, token, v22, v23, v25);

  sub_1000A452C(token, v22);

  sub_100095C84(v14, &qword_1002A7AF0, &qword_10023C9D0);
}

- (void)accessoryServer:(id)server validateCert:(id)cert model:(id)model
{
  certCopy = cert;
  if (cert)
  {
    serverCopy = server;
    modelCopy = model;
    selfCopy = self;
    v11 = certCopy;
    certCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (!model)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  serverCopy2 = server;
  modelCopy2 = model;
  selfCopy2 = self;
  v13 = 0xF000000000000000;
  if (model)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_5:
  sub_100169790("accessoryServer:validateCert");

  sub_1000A452C(certCopy, v13);
}

- (void)accessoryServer:(id)server authenticateUUID:(id)d token:(id)token
{
  v9 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  if (d)
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

  serverCopy = server;
  if (token)
  {
    tokenCopy = token;
    selfCopy = self;
    token = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    selfCopy2 = self;
    v19 = 0xF000000000000000;
  }

  sub_1001694C4(serverCopy);
  sub_1000A452C(token, v19);

  sub_100095C84(v12, &qword_1002A7AF0, &qword_10023C9D0);
}

- (void)accessoryServer:(id)server confirmUUID:(id)d token:(id)token
{
  v9 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  if (d)
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

  serverCopy = server;
  if (token)
  {
    tokenCopy = token;
    selfCopy = self;
    token = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    selfCopy2 = self;
    v19 = 0xF000000000000000;
  }

  sub_100161618(serverCopy, v12, token, v19);
  sub_1000A452C(token, v19);

  sub_100095C84(v12, &qword_1002A7AF0, &qword_10023C9D0);
}

- (void)accessoryServer:(id)server didFinishAuth:(id)auth
{
  serverCopy = server;
  selfCopy = self;
  authCopy = auth;
  sub_100161B78(server, auth);
}

- (void)accessoryServerNeedsOwnershipToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  sub_100169790("accessoryServerNeedsOwnershipToken");
}

@end