@interface HAPCharacteristicValueTransition
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueTransition)init;
- (HAPCharacteristicValueTransition)initWithHAPInstanceID:(id)d controllerContext:(id)context endBehavior:(id)behavior linearTransition:(id)transition linearDerivedTransition:(id)derivedTransition valueUpdateTimeInterval:(id)interval notifyValueChangeThreshold:(id)threshold notifyTimeIntervalThreshold:(id)self0;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueTransition

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueTransition);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransition *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (HAPCharacteristicValueTransition)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransition;
  return [(HAPCharacteristicValueTransition *)&v3 init];
}

- (HAPCharacteristicValueTransition)initWithHAPInstanceID:(id)d controllerContext:(id)context endBehavior:(id)behavior linearTransition:(id)transition linearDerivedTransition:(id)derivedTransition valueUpdateTimeInterval:(id)interval notifyValueChangeThreshold:(id)threshold notifyTimeIntervalThreshold:(id)self0
{
  dCopy = d;
  contextCopy = context;
  behaviorCopy = behavior;
  transitionCopy = transition;
  derivedTransitionCopy = derivedTransition;
  intervalCopy = interval;
  thresholdCopy = threshold;
  intervalThresholdCopy = intervalThreshold;
  v28.receiver = self;
  v28.super_class = HAPCharacteristicValueTransition;
  v19 = [(HAPCharacteristicValueTransition *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_HAPInstanceID, d);
    objc_storeStrong(&v20->_controllerContext, context);
    objc_storeStrong(&v20->_endBehavior, behavior);
    objc_storeStrong(&v20->_linearTransition, transition);
    objc_storeStrong(&v20->_linearDerivedTransition, derivedTransition);
    objc_storeStrong(&v20->_valueUpdateTimeInterval, interval);
    objc_storeStrong(&v20->_notifyValueChangeThreshold, threshold);
    objc_storeStrong(&v20->_notifyTimeIntervalThreshold, intervalThreshold);
  }

  return v20;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v56 = dataCopy;
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v38 = 0;
    v39 = 0;
    v10 = 0;
    v40 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v41 = 0;
LABEL_46:
    [(HAPCharacteristicValueTransition *)self setHAPInstanceID:v38];
    [(HAPCharacteristicValueTransition *)self setControllerContext:v39];
    [(HAPCharacteristicValueTransition *)self setEndBehavior:v10];
    [(HAPCharacteristicValueTransition *)self setLinearTransition:v40];
    [(HAPCharacteristicValueTransition *)self setLinearDerivedTransition:v41];
    [(HAPCharacteristicValueTransition *)self setValueUpdateTimeInterval:v13];
    [(HAPCharacteristicValueTransition *)self setNotifyValueChangeThreshold:v12];
    [(HAPCharacteristicValueTransition *)self setNotifyTimeIntervalThreshold:v11];
    v42 = v11;
    v43 = v13;
    v44 = v10;
    v45 = v12;
    v49 = v40;
    v9 = 0;
    v50 = v41;
    v46 = 1;
    goto LABEL_51;
  }

  errorCopy = error;
  v53 = 0;
  v9 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = bytes + v8;
  while (1)
  {
    v72 = 0;
    v70[1] = 0;
    v71 = 0;
    v70[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      v42 = v11;
      v43 = v13;
      v44 = v10;
      v45 = v12;
      if (errorCopy)
      {
        sub_100041618(Next);
        *errorCopy = v46 = 0;
      }

      else
      {
        v46 = 0;
      }

      v38 = v57;
      v39 = v55;
      goto LABEL_50;
    }

    if (!v71)
    {
      break;
    }

    if (v72 > 4u)
    {
      v20 = v10;
      if (v72 > 6u)
      {
        if (v72 != 7)
        {
          if (v72 != 8)
          {
            goto LABEL_31;
          }

          v16 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
          v58 = v9;
          v24 = [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v58];
          v22 = v12;
          v23 = v58;

          v19 = v11;
          v11 = v24;
          goto LABEL_22;
        }

        v60 = v9;
        v16 = sub_100021B74(7, bytes, v14, v70, &v60);
        v31 = v60;

        if (!v31)
        {
          v59 = 0;
          v36 = [NSData parsedFromData:v16 error:&v59];
          v9 = v59;
          v19 = v12;
          v12 = v36;
          goto LABEL_23;
        }
      }

      else
      {
        if (v72 != 5)
        {
          if (v72 != 6)
          {
            goto LABEL_31;
          }

          v16 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
          v61 = v9;
          v21 = [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v61];
          v22 = v12;
          v23 = v61;

          v19 = v13;
          v13 = v21;
LABEL_22:
          v9 = v23;
          v12 = v22;
LABEL_23:
          v10 = v20;
          goto LABEL_29;
        }

        v63 = v9;
        v16 = sub_100021B74(5, bytes, v14, v70, &v63);
        v31 = v63;

        if (!v31)
        {
          v62 = 0;
          v32 = [HAPCharacteristicValueLinearDerivedTransition parsedFromData:v16 error:&v62];
          v9 = v62;
          v19 = v53;
          v53 = v32;
          goto LABEL_23;
        }
      }

      v9 = v31;
      goto LABEL_30;
    }

    if (v72 > 2u)
    {
      if (v72 == 3)
      {
        v16 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v66 = v9;
        v33 = [HAPCharacteristicValueTransitionEndBehaviorWrapper parsedFromData:v16 error:&v66];
        v26 = v11;
        v27 = v13;
        v34 = v12;
        v35 = v66;

        v19 = v10;
        v10 = v33;
        v9 = v35;
        v12 = v34;
        goto LABEL_28;
      }

      if (v72 == 4)
      {
        v65 = v9;
        v16 = sub_100021B74(4, bytes, v14, v70, &v65);
        v17 = v65;

        if (v17)
        {
LABEL_18:
          v9 = v17;
LABEL_30:

          goto LABEL_31;
        }

        v64 = 0;
        v37 = [HAPCharacteristicValueLinearTransition parsedFromData:v16 error:&v64];
        v9 = v64;
        v19 = v54;
        v54 = v37;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      if (v72 == 1)
      {
        v16 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:? freeWhenDone:?];
        v69 = v9;
        v25 = [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v69];
        v26 = v11;
        v27 = v13;
        v28 = v10;
        v29 = v12;
        v30 = v69;

        v19 = v57;
        v57 = v25;
        v9 = v30;
        v12 = v29;
        v10 = v28;
LABEL_28:
        v13 = v27;
        v11 = v26;
        goto LABEL_29;
      }

      if (v72 == 2)
      {
        v68 = v9;
        v16 = sub_100021B74(2, bytes, v14, v70, &v68);
        v17 = v68;

        if (v17)
        {
          goto LABEL_18;
        }

        v67 = 0;
        v18 = [NSData parsedFromData:v16 error:&v67];
        v9 = v67;
        v19 = v55;
        v55 = v18;
        goto LABEL_29;
      }
    }

LABEL_31:
    bytes = v70[0];
    if (v70[0] >= v14)
    {
      goto LABEL_42;
    }
  }

  v47 = [NSError errorWithDomain:HMFErrorDomain code:3 userInfo:0];

  v9 = v47;
LABEL_42:
  if (!v9)
  {
    v38 = v57;
    v40 = v54;
    v39 = v55;
    v41 = v53;
    goto LABEL_46;
  }

  v42 = v11;
  v43 = v13;
  v44 = v10;
  v45 = v12;
  v38 = v57;
  v39 = v55;
  if (errorCopy)
  {
    v48 = v9;
    v46 = 0;
    *errorCopy = v9;
  }

  else
  {
    v46 = 0;
  }

LABEL_50:
  v50 = v53;
  v49 = v54;
LABEL_51:

  return v46;
}

- (id)serializeWithError:(id *)error
{
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  TLV8BufferInit();
  hAPInstanceID = [(HAPCharacteristicValueTransition *)self HAPInstanceID];

  if (hAPInstanceID)
  {
    hAPInstanceID2 = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
    v49 = 0;
    v7 = [hAPInstanceID2 serializeWithError:&v49];
    v8 = v49;

    if (v8)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v10 = TLV8BufferAppend();
    if (v10)
    {
LABEL_5:
      v9 = v10;
LABEL_6:

      if (v8)
      {
        if (!error)
        {
          goto LABEL_65;
        }

LABEL_16:
        v15 = v8;
        v11 = 0;
        *error = v8;
        goto LABEL_66;
      }

      if (v9)
      {
        if (error)
        {
LABEL_11:
          sub_100041618(v9);
          v8 = 0;
          *error = v11 = 0;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

LABEL_62:
      v11 = [NSData dataWithBytes:v50 length:?];
      v8 = 0;
      goto LABEL_66;
    }
  }

  controllerContext = [(HAPCharacteristicValueTransition *)self controllerContext];

  if (controllerContext)
  {
    controllerContext2 = [(HAPCharacteristicValueTransition *)self controllerContext];
    v48 = 0;
    v14 = [controllerContext2 serializeWithError:&v48];
    v8 = v48;

    if (v8)
    {
      goto LABEL_15;
    }

    bytes = [v14 bytes];
    v17 = [v14 length] + bytes;
    while (1)
    {
      v18 = v17 - bytes >= 255 ? 255 : v17 - bytes;
      v19 = TLV8BufferAppend();
      if (v19)
      {
        break;
      }

      bytes += v18;
      if (bytes >= v17)
      {

        goto LABEL_24;
      }
    }

LABEL_63:
    v9 = v19;

    if (error)
    {
      goto LABEL_11;
    }

LABEL_64:
    v8 = 0;
    goto LABEL_65;
  }

LABEL_24:
  endBehavior = [(HAPCharacteristicValueTransition *)self endBehavior];

  if (endBehavior)
  {
    endBehavior2 = [(HAPCharacteristicValueTransition *)self endBehavior];
    v47 = 0;
    v7 = [endBehavior2 serializeWithError:&v47];
    v8 = v47;

    if (v8)
    {
      goto LABEL_3;
    }

    [v7 bytes];
    [v7 length];
    v10 = TLV8BufferAppend();
    if (v10)
    {
      goto LABEL_5;
    }
  }

  linearTransition = [(HAPCharacteristicValueTransition *)self linearTransition];

  if (linearTransition)
  {
    linearTransition2 = [(HAPCharacteristicValueTransition *)self linearTransition];
    v46 = 0;
    v14 = [linearTransition2 serializeWithError:&v46];
    v8 = v46;

    if (!v8)
    {
      bytes2 = [v14 bytes];
      v25 = [v14 length] + bytes2;
      while (1)
      {
        v26 = v25 - bytes2 >= 255 ? 255 : v25 - bytes2;
        v19 = TLV8BufferAppend();
        if (v19)
        {
          goto LABEL_63;
        }

        bytes2 += v26;
        if (bytes2 >= v25)
        {

          goto LABEL_37;
        }
      }
    }
  }

  else
  {
LABEL_37:
    linearDerivedTransition = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];

    if (linearDerivedTransition)
    {
      linearDerivedTransition2 = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
      v45 = 0;
      v14 = [linearDerivedTransition2 serializeWithError:&v45];
      v8 = v45;

      if (!v8)
      {
        bytes3 = [v14 bytes];
        v30 = [v14 length] + bytes3;
        while (1)
        {
          v31 = v30 - bytes3 >= 255 ? 255 : v30 - bytes3;
          v19 = TLV8BufferAppend();
          if (v19)
          {
            goto LABEL_63;
          }

          bytes3 += v31;
          if (bytes3 >= v30)
          {

            goto LABEL_46;
          }
        }
      }
    }

    else
    {
LABEL_46:
      valueUpdateTimeInterval = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];

      if (valueUpdateTimeInterval)
      {
        valueUpdateTimeInterval2 = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
        v44 = 0;
        v7 = [valueUpdateTimeInterval2 serializeWithError:&v44];
        v8 = v44;

        if (v8)
        {
          goto LABEL_3;
        }

        [v7 bytes];
        [v7 length];
        v10 = TLV8BufferAppend();
        if (v10)
        {
          goto LABEL_5;
        }
      }

      notifyValueChangeThreshold = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];

      if (!notifyValueChangeThreshold)
      {
LABEL_59:
        notifyTimeIntervalThreshold = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];

        if (!notifyTimeIntervalThreshold)
        {
          goto LABEL_62;
        }

        notifyTimeIntervalThreshold2 = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
        v42 = 0;
        v7 = [notifyTimeIntervalThreshold2 serializeWithError:&v42];
        v8 = v42;

        if (v8)
        {
          goto LABEL_3;
        }

        [v7 bytes];
        [v7 length];
        v10 = TLV8BufferAppend();
        goto LABEL_5;
      }

      notifyValueChangeThreshold2 = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
      v43 = 0;
      v14 = [notifyValueChangeThreshold2 serializeWithError:&v43];
      v8 = v43;

      if (!v8)
      {
        bytes4 = [v14 bytes];
        v37 = [v14 length] + bytes4;
        while (1)
        {
          v38 = v37 - bytes4 >= 255 ? 255 : v37 - bytes4;
          v19 = TLV8BufferAppend();
          if (v19)
          {
            goto LABEL_63;
          }

          bytes4 += v38;
          if (bytes4 >= v37)
          {

            goto LABEL_59;
          }
        }
      }
    }
  }

LABEL_15:

  if (error)
  {
    goto LABEL_16;
  }

LABEL_65:
  v11 = 0;
LABEL_66:
  TLV8BufferFree();

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueTransition allocWithZone:zone];
  hAPInstanceID = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
  controllerContext = [(HAPCharacteristicValueTransition *)self controllerContext];
  endBehavior = [(HAPCharacteristicValueTransition *)self endBehavior];
  linearTransition = [(HAPCharacteristicValueTransition *)self linearTransition];
  linearDerivedTransition = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
  valueUpdateTimeInterval = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
  notifyValueChangeThreshold = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
  notifyTimeIntervalThreshold = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
  v13 = [(HAPCharacteristicValueTransition *)v4 initWithHAPInstanceID:hAPInstanceID controllerContext:controllerContext endBehavior:endBehavior linearTransition:linearTransition linearDerivedTransition:linearDerivedTransition valueUpdateTimeInterval:valueUpdateTimeInterval notifyValueChangeThreshold:notifyValueChangeThreshold notifyTimeIntervalThreshold:notifyTimeIntervalThreshold];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      hAPInstanceID = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
      hAPInstanceID2 = [(HAPCharacteristicValueTransition *)v6 HAPInstanceID];
      if (hAPInstanceID != hAPInstanceID2)
      {
        hAPInstanceID3 = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
        hAPInstanceID4 = [(HAPCharacteristicValueTransition *)v6 HAPInstanceID];
        v59 = hAPInstanceID3;
        if (![hAPInstanceID3 isEqual:hAPInstanceID4])
        {
          v10 = 0;
          goto LABEL_45;
        }
      }

      controllerContext = [(HAPCharacteristicValueTransition *)self controllerContext];
      controllerContext2 = [(HAPCharacteristicValueTransition *)v6 controllerContext];
      if (controllerContext != controllerContext2)
      {
        controllerContext3 = [(HAPCharacteristicValueTransition *)self controllerContext];
        controllerContext4 = [(HAPCharacteristicValueTransition *)v6 controllerContext];
        if (![controllerContext3 isEqual:?])
        {
          v10 = 0;
LABEL_43:

LABEL_44:
          if (hAPInstanceID == hAPInstanceID2)
          {
LABEL_46:

            goto LABEL_47;
          }

LABEL_45:

          goto LABEL_46;
        }

        v55 = controllerContext3;
      }

      endBehavior = [(HAPCharacteristicValueTransition *)self endBehavior];
      endBehavior2 = [(HAPCharacteristicValueTransition *)v6 endBehavior];
      v58 = endBehavior;
      if (endBehavior != endBehavior2)
      {
        endBehavior3 = [(HAPCharacteristicValueTransition *)self endBehavior];
        endBehavior4 = [(HAPCharacteristicValueTransition *)v6 endBehavior];
        v53 = endBehavior3;
        if (![endBehavior3 isEqual:?])
        {
          v10 = 0;
          v17 = v58;
LABEL_41:

LABEL_42:
          controllerContext3 = v55;
          if (controllerContext == controllerContext2)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      linearTransition = [(HAPCharacteristicValueTransition *)self linearTransition];
      linearTransition2 = [(HAPCharacteristicValueTransition *)v6 linearTransition];
      v56 = linearTransition;
      if (linearTransition != linearTransition2)
      {
        linearTransition3 = [(HAPCharacteristicValueTransition *)self linearTransition];
        linearTransition4 = [(HAPCharacteristicValueTransition *)v6 linearTransition];
        v49 = linearTransition3;
        if (![linearTransition3 isEqual:?])
        {
          v10 = 0;
          v20 = linearTransition2;
LABEL_39:

LABEL_40:
          v17 = v58;
          if (v58 == endBehavior2)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      linearDerivedTransition = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
      linearDerivedTransition2 = [(HAPCharacteristicValueTransition *)v6 linearDerivedTransition];
      v51 = linearDerivedTransition;
      if (linearDerivedTransition != linearDerivedTransition2)
      {
        linearDerivedTransition3 = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
        linearDerivedTransition4 = [(HAPCharacteristicValueTransition *)v6 linearDerivedTransition];
        v45 = linearDerivedTransition3;
        if (![linearDerivedTransition3 isEqual:?])
        {
          v10 = 0;
          v23 = linearDerivedTransition2;
LABEL_37:

LABEL_38:
          v20 = linearTransition2;
          if (v56 == linearTransition2)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      valueUpdateTimeInterval = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
      valueUpdateTimeInterval2 = [(HAPCharacteristicValueTransition *)v6 valueUpdateTimeInterval];
      v47 = valueUpdateTimeInterval;
      if (valueUpdateTimeInterval != valueUpdateTimeInterval2)
      {
        valueUpdateTimeInterval3 = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
        valueUpdateTimeInterval4 = [(HAPCharacteristicValueTransition *)v6 valueUpdateTimeInterval];
        v41 = valueUpdateTimeInterval3;
        if (![valueUpdateTimeInterval3 isEqual:?])
        {
          v10 = 0;
          v26 = valueUpdateTimeInterval2;
LABEL_35:

LABEL_36:
          v23 = linearDerivedTransition2;
          if (v51 == linearDerivedTransition2)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      notifyValueChangeThreshold = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
      notifyValueChangeThreshold2 = [(HAPCharacteristicValueTransition *)v6 notifyValueChangeThreshold];
      v43 = notifyValueChangeThreshold;
      if (notifyValueChangeThreshold == notifyValueChangeThreshold2)
      {
        v39 = hAPInstanceID4;
      }

      else
      {
        notifyValueChangeThreshold3 = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
        notifyValueChangeThreshold4 = [(HAPCharacteristicValueTransition *)v6 notifyValueChangeThreshold];
        v38 = notifyValueChangeThreshold3;
        if (![notifyValueChangeThreshold3 isEqual:?])
        {
          v10 = 0;
          v33 = notifyValueChangeThreshold2;
          goto LABEL_33;
        }

        v39 = hAPInstanceID4;
      }

      notifyTimeIntervalThreshold = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
      notifyTimeIntervalThreshold2 = [(HAPCharacteristicValueTransition *)v6 notifyTimeIntervalThreshold];
      v31 = notifyTimeIntervalThreshold2;
      if (notifyTimeIntervalThreshold == notifyTimeIntervalThreshold2)
      {

        v10 = 1;
      }

      else
      {
        notifyTimeIntervalThreshold3 = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
        [(HAPCharacteristicValueTransition *)v6 notifyTimeIntervalThreshold];
        v32 = v36 = notifyTimeIntervalThreshold;
        v10 = [notifyTimeIntervalThreshold3 isEqual:v32];
      }

      v33 = notifyValueChangeThreshold2;
      hAPInstanceID4 = v39;
      if (v43 == notifyValueChangeThreshold2)
      {
LABEL_34:

        v26 = valueUpdateTimeInterval2;
        if (v47 == valueUpdateTimeInterval2)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

LABEL_33:

      goto LABEL_34;
    }

    v10 = 0;
  }

LABEL_47:

  return v10;
}

- (NSString)description
{
  hAPInstanceID = [(HAPCharacteristicValueTransition *)self HAPInstanceID];
  controllerContext = [(HAPCharacteristicValueTransition *)self controllerContext];
  endBehavior = [(HAPCharacteristicValueTransition *)self endBehavior];
  linearTransition = [(HAPCharacteristicValueTransition *)self linearTransition];
  linearDerivedTransition = [(HAPCharacteristicValueTransition *)self linearDerivedTransition];
  valueUpdateTimeInterval = [(HAPCharacteristicValueTransition *)self valueUpdateTimeInterval];
  notifyValueChangeThreshold = [(HAPCharacteristicValueTransition *)self notifyValueChangeThreshold];
  notifyTimeIntervalThreshold = [(HAPCharacteristicValueTransition *)self notifyTimeIntervalThreshold];
  v11 = [NSString stringWithFormat:@"<HAPCharacteristicValueTransition HAPInstanceID=%@, controllerContext=%@, endBehavior=%@, linearTransition=%@, linearDerivedTransition=%@, valueUpdateTimeInterval=%@, notifyValueChangeThreshold=%@, notifyTimeIntervalThreshold=%@>", hAPInstanceID, controllerContext, endBehavior, linearTransition, linearDerivedTransition, valueUpdateTimeInterval, notifyValueChangeThreshold, notifyTimeIntervalThreshold];

  return v11;
}

@end