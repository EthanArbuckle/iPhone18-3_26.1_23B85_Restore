@interface EPDTCOperationPriorityComparator
+ (BOOL)shouldAcceptNewTransaction:(id)a3 intoSet:(id)a4;
+ (BOOL)shouldCancelRunningTransaction:(id)a3 newTransaction:(id)a4 pairingID:(id)a5;
+ (id)rankTable;
+ (id)sortedTransactionsWithSet:(id)a3 pairingID:(id)a4;
+ (int64_t)compare:(id)a3 to:(id)a4 withActivePairingID:(id)a5;
+ (unint64_t)statusCodeForContainer:(id)a3;
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

+ (int64_t)compare:(id)a3 to:(id)a4 withActivePairingID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 operationType];
  if ([v12 isEqual:@"reunionSync"])
  {
    v5 = [v10 operationType];
    v13 = [v5 isEqual:@"reunionSync"];

    if (!v13)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v14 = [v9 operationType];
  if ([v14 isEqual:@"reunionSync"])
  {
  }

  else
  {
    v5 = [v10 operationType];
    v15 = [v5 isEqual:@"reunionSync"];

    if (v15)
    {
LABEL_24:
      v18 = 1;
      goto LABEL_31;
    }
  }

  v16 = [v9 operationType];
  if ([v16 isEqual:@"reunionSync"])
  {
    v5 = [v10 operationType];
    v17 = [v5 isEqual:@"reunionSync"];

    if (v17)
    {
      v18 = 0;
      goto LABEL_31;
    }
  }

  else
  {
  }

  v19 = [v9 targetPairingID];
  if (v19)
  {
    v5 = [v9 targetPairingID];
    if ([v5 isEqual:v11])
    {
      v20 = 1;
LABEL_16:

      goto LABEL_17;
    }
  }

  v21 = [v9 targetPairingID];
  v20 = v21 == 0;

  if (v19)
  {
    goto LABEL_16;
  }

LABEL_17:

  v22 = [v10 targetPairingID];
  if (v22 && ([v10 targetPairingID], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isEqual:", v11) & 1) != 0))
  {
    v23 = 1;
  }

  else
  {
    v24 = [v10 targetPairingID];
    v23 = v24 == 0;

    if (!v22)
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

  v25 = [a1 rankTable];
  v26 = [v9 operationType];
  v27 = [v25 objectForKeyedSubscript:v26];
  v41 = [v27 integerValue];
  v28 = [a1 rankTable];
  v29 = [v10 operationType];
  [v28 objectForKeyedSubscript:v29];
  v30 = v40 = a1;
  v31 = [v30 integerValue];

  if (v41 > v31)
  {
    goto LABEL_24;
  }

  v32 = [v40 rankTable];
  v33 = [v9 operationType];
  v34 = [v32 objectForKeyedSubscript:v33];
  v42 = [v34 integerValue];
  v35 = [v40 rankTable];
  v36 = [v10 operationType];
  v37 = [v35 objectForKeyedSubscript:v36];
  v38 = [v37 integerValue];

  if (v42 >= v38)
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

+ (unint64_t)statusCodeForContainer:(id)a3
{
  v3 = a3;
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
  v5 = [v3 operationType];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  _Block_object_dispose(&v10, 8);
  return v7;
}

+ (BOOL)shouldAcceptNewTransaction:(id)a3 intoSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 operationType];
  v8 = [v7 isEqualToString:@"migration"];

  v9 = [v5 operationType];
  v10 = [v9 isEqualToString:@"pair"];

  if ((v10 & 1) != 0 || v8)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v6;
    v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v6;
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
          v19 = [v18 operationType];
          v20 = [v19 isEqualToString:@"migration"];

          v14 |= v20;
          v21 = [v18 operationType];
          LOBYTE(v19) = [v21 isEqualToString:@"pair"];

          v15 |= v19;
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
      v11 = (v15 | v14) ^ 1;
      v6 = v23;
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

+ (BOOL)shouldCancelRunningTransaction:(id)a3 newTransaction:(id)a4 pairingID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 operationType];
  if ([v10 isEqual:@"initialSync"])
  {
    goto LABEL_6;
  }

  v11 = [v8 operationType];
  if ([v11 isEqual:@"storeUnpair"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v12 = [v7 operationType];
  if ([v12 isEqual:@"unpair"])
  {

    goto LABEL_5;
  }

  v15 = [v7 operationType];
  v16 = [v15 isEqual:@"externalSwitch"];

  if ((v16 & 1) == 0)
  {
    v13 = [EPDTCOperationPriorityComparator compare:v7 to:v8 withActivePairingID:v9]== -1;
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:

  return v13;
}

+ (id)sortedTransactionsWithSet:(id)a3 pairingID:(id)a4
{
  v6 = a4;
  v7 = [a3 allObjects];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000824C;
  v11[3] = &unk_1001758A8;
  v12 = v6;
  v13 = a1;
  v8 = v6;
  v9 = [v7 sortedArrayUsingComparator:v11];

  return v9;
}

@end