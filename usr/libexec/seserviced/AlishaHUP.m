@interface AlishaHUP
- (void)pairingSession:(id)a3 completedWithResult:(unint64_t)a4;
- (void)pairingSession:(id)a3 requestedPairingWithDeviceAddress:(id)a4 forIntent:(unint64_t)a5 c192:(id)a6 r192:(id)a7 c256:(id)a8 r256:(id)a9;
@end

@implementation AlishaHUP

- (void)pairingSession:(id)a3 requestedPairingWithDeviceAddress:(id)a4 forIntent:(unint64_t)a5 c192:(id)a6 r192:(id)a7 c256:(id)a8 r256:(id)a9
{
  v39 = a3;
  v14 = a4;
  v38 = self;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v20;
  v36 = v19;

  if (v15)
  {
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v22;
    v34 = v21;

    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = 0xF000000000000000;
    v34 = 0;
    if (v16)
    {
LABEL_3:
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v24;
      v32 = v23;

      if (v17)
      {
        goto LABEL_4;
      }

LABEL_8:
      v25 = 0;
      v27 = 0xF000000000000000;
      if (v18)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v31 = 0xF000000000000000;
  v32 = 0;
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_4:
  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (v18)
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
  sub_1001532E4(v39, v36, v35, a5, v34, v33, v32, v31, v25, v27, v28, v30);
  sub_10006A2D0(v28, v30);
  sub_10006A2D0(v25, v27);
  sub_10006A2D0(v32, v31);
  sub_10006A2D0(v34, v33);
  sub_10006A178(v36, v35);
}

- (void)pairingSession:(id)a3 completedWithResult:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100155114(v6, a4);
}

@end