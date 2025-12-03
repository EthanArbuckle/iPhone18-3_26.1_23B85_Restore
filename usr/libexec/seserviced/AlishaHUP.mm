@interface AlishaHUP
- (void)pairingSession:(id)session completedWithResult:(unint64_t)result;
- (void)pairingSession:(id)session requestedPairingWithDeviceAddress:(id)address forIntent:(unint64_t)intent c192:(id)c192 r192:(id)r192 c256:(id)c256 r256:(id)r256;
@end

@implementation AlishaHUP

- (void)pairingSession:(id)session requestedPairingWithDeviceAddress:(id)address forIntent:(unint64_t)intent c192:(id)c192 r192:(id)r192 c256:(id)c256 r256:(id)r256
{
  sessionCopy = session;
  addressCopy = address;
  selfCopy = self;
  c192Copy = c192;
  r192Copy = r192;
  c256Copy = c256;
  r256Copy = r256;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v20;
  v36 = v19;

  if (c192Copy)
  {
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v22;
    v34 = v21;

    if (r192Copy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = 0xF000000000000000;
    v34 = 0;
    if (r192Copy)
    {
LABEL_3:
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v24;
      v32 = v23;

      if (c256Copy)
      {
        goto LABEL_4;
      }

LABEL_8:
      v25 = 0;
      v27 = 0xF000000000000000;
      if (r256Copy)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v31 = 0xF000000000000000;
  v32 = 0;
  if (!c256Copy)
  {
    goto LABEL_8;
  }

LABEL_4:
  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (r256Copy)
  {
LABEL_5:
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    goto LABEL_10;
  }

LABEL_9:
  v28 = 0;
  v30 = 0xF000000000000000;
LABEL_10:
  sub_1001532E4(sessionCopy, v36, v35, intent, v34, v33, v32, v31, v25, v27, v28, v30);
  sub_10006A2D0(v28, v30);
  sub_10006A2D0(v25, v27);
  sub_10006A2D0(v32, v31);
  sub_10006A2D0(v34, v33);
  sub_10006A178(v36, v35);
}

- (void)pairingSession:(id)session completedWithResult:(unint64_t)result
{
  sessionCopy = session;
  selfCopy = self;
  sub_100155114(sessionCopy, result);
}

@end