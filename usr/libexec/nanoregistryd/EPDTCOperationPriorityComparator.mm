@interface EPDTCOperationPriorityComparator
+ (BOOL)shouldAcceptNewTransaction:(id)transaction intoSet:(id)set;
+ (BOOL)shouldCancelRunningTransaction:(id)transaction newTransaction:(id)newTransaction pairingID:(id)d;
+ (id)rankTable;
+ (id)sortedTransactionsWithSet:(id)set pairingID:(id)d;
+ (int64_t)compare:(id)compare to:(id)to withActivePairingID:(id)d;
+ (unint64_t)statusCodeForContainer:(id)container;
@end

@implementation EPDTCOperationPriorityComparator

+ (id)rankTable
{
  if (qword_1001B3718 != -1)
  {
    sub_1000FCF14();
  }

  v3 = qword_1001B3710;

  return v3;
}

+ (int64_t)compare:(id)compare to:(id)to withActivePairingID:(id)d
{
  compareCopy = compare;
  toCopy = to;
  dCopy = d;
  operationType = [compareCopy operationType];
  if ([operationType isEqual:@"reunionSync"])
  {
    operationType2 = [toCopy operationType];
    v13 = [operationType2 isEqual:@"reunionSync"];

    if (!v13)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  operationType3 = [compareCopy operationType];
  if ([operationType3 isEqual:@"reunionSync"])
  {
  }

  else
  {
    operationType2 = [toCopy operationType];
    v15 = [operationType2 isEqual:@"reunionSync"];

    if (v15)
    {
LABEL_24:
      v18 = 1;
      goto LABEL_31;
    }
  }

  operationType4 = [compareCopy operationType];
  if ([operationType4 isEqual:@"reunionSync"])
  {
    operationType2 = [toCopy operationType];
    v17 = [operationType2 isEqual:@"reunionSync"];

    if (v17)
    {
      v18 = 0;
      goto LABEL_31;
    }
  }

  else
  {
  }

  targetPairingID = [compareCopy targetPairingID];
  if (targetPairingID)
  {
    operationType2 = [compareCopy targetPairingID];
    if ([operationType2 isEqual:dCopy])
    {
      v20 = 1;
LABEL_16:

      goto LABEL_17;
    }
  }

  targetPairingID2 = [compareCopy targetPairingID];
  v20 = targetPairingID2 == 0;

  if (targetPairingID)
  {
    goto LABEL_16;
  }

LABEL_17:

  targetPairingID3 = [toCopy targetPairingID];
  if (targetPairingID3 && ([toCopy targetPairingID], operationType2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(operationType2, "isEqual:", dCopy) & 1) != 0))
  {
    v23 = 1;
  }

  else
  {
    targetPairingID4 = [toCopy targetPairingID];
    v23 = targetPairingID4 == 0;

    if (!targetPairingID3)
    {
      goto LABEL_22;
    }
  }

LABEL_22:
  if (v20 && !v23)
  {
    goto LABEL_24;
  }

  if (!v20 && v23)
  {
LABEL_30:
    v18 = -1;
    goto LABEL_31;
  }

  rankTable = [self rankTable];
  operationType5 = [compareCopy operationType];
  v27 = [rankTable objectForKeyedSubscript:operationType5];
  integerValue = [v27 integerValue];
  rankTable2 = [self rankTable];
  operationType6 = [toCopy operationType];
  [rankTable2 objectForKeyedSubscript:operationType6];
  v30 = v40 = self;
  integerValue2 = [v30 integerValue];

  if (integerValue > integerValue2)
  {
    goto LABEL_24;
  }

  rankTable3 = [v40 rankTable];
  operationType7 = [compareCopy operationType];
  v34 = [rankTable3 objectForKeyedSubscript:operationType7];
  integerValue3 = [v34 integerValue];
  rankTable4 = [v40 rankTable];
  operationType8 = [toCopy operationType];
  v37 = [rankTable4 objectForKeyedSubscript:operationType8];
  integerValue4 = [v37 integerValue];

  if (integerValue3 >= integerValue4)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

LABEL_31:

  return v18;
}

+ (unint64_t)statusCodeForContainer:(id)container
{
  containerCopy = container;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100007D58;
  v14 = sub_100007D68;
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007D70;
  block[3] = &unk_100175880;
  block[4] = &v10;
  if (qword_1001B3720 != -1)
  {
    dispatch_once(&qword_1001B3720, block);
  }

  v4 = v11[5];
  operationType = [containerCopy operationType];
  v6 = [v4 objectForKeyedSubscript:operationType];
  integerValue = [v6 integerValue];

  _Block_object_dispose(&v10, 8);
  return integerValue;
}

+ (BOOL)shouldAcceptNewTransaction:(id)transaction intoSet:(id)set
{
  transactionCopy = transaction;
  setCopy = set;
  operationType = [transactionCopy operationType];
  v8 = [operationType isEqualToString:@"migration"];

  operationType2 = [transactionCopy operationType];
  v10 = [operationType2 isEqualToString:@"pair"];

  if ((v10 & 1) != 0 || v8)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = setCopy;
    v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = setCopy;
      v14 = 0;
      v15 = 0;
      v16 = *v26;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          operationType3 = [v18 operationType];
          v20 = [operationType3 isEqualToString:@"migration"];

          v14 |= v20;
          operationType4 = [v18 operationType];
          LOBYTE(operationType3) = [operationType4 isEqualToString:@"pair"];

          v15 |= operationType3;
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
      v11 = (v15 | v14) ^ 1;
      setCopy = v23;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

+ (BOOL)shouldCancelRunningTransaction:(id)transaction newTransaction:(id)newTransaction pairingID:(id)d
{
  transactionCopy = transaction;
  newTransactionCopy = newTransaction;
  dCopy = d;
  operationType = [newTransactionCopy operationType];
  if ([operationType isEqual:@"initialSync"])
  {
    goto LABEL_6;
  }

  operationType2 = [newTransactionCopy operationType];
  if ([operationType2 isEqual:@"storeUnpair"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  operationType3 = [transactionCopy operationType];
  if ([operationType3 isEqual:@"unpair"])
  {

    goto LABEL_5;
  }

  operationType4 = [transactionCopy operationType];
  v16 = [operationType4 isEqual:@"externalSwitch"];

  if ((v16 & 1) == 0)
  {
    v13 = [EPDTCOperationPriorityComparator compare:transactionCopy to:newTransactionCopy withActivePairingID:dCopy]== -1;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:

  return v13;
}

+ (id)sortedTransactionsWithSet:(id)set pairingID:(id)d
{
  dCopy = d;
  allObjects = [set allObjects];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000824C;
  v11[3] = &unk_1001758A8;
  v12 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  v9 = [allObjects sortedArrayUsingComparator:v11];

  return v9;
}

@end