@interface NIGnssExtensionsManager
+ (vector<nearby::algorithms::finding::GnssSatelliteData,)getGnssSatelliteDataVecFromDict:(id)a2;
- (NIGnssExtensionsManager)initWithQueue:(id)a3 bundle:(id)a4 reason:(id)a5;
- (NIGnssExtensionsManager)initWithQueue:(id)a3 bundleId:(id)a4 reason:(id)a5;
@end

@implementation NIGnssExtensionsManager

- (NIGnssExtensionsManager)initWithQueue:(id)a3 bundleId:(id)a4 reason:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = NIGnssExtensionsManager;
  v12 = [(NIGnssExtensionsManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->fQueue, a3);
    fQueue = v13->fQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100364E58;
    v20[3] = &unk_1009A66B0;
    v15 = v13;
    v21 = v15;
    v16 = [CLGnssExtensionsClient newAssertionForBundleIdentifier:v10 withReason:v11 withCallbackQueue:fQueue andBlock:v20];
    fAssertion = v15->fAssertion;
    v15->fAssertion = v16;

    v18 = v15;
  }

  return v13;
}

- (NIGnssExtensionsManager)initWithQueue:(id)a3 bundle:(id)a4 reason:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = NIGnssExtensionsManager;
  v12 = [(NIGnssExtensionsManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->fQueue, a3);
    fQueue = v13->fQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1003650E4;
    v20[3] = &unk_1009A66B0;
    v15 = v13;
    v21 = v15;
    v16 = [CLGnssExtensionsClient newAssertionForBundle:v10 withReason:v11 withCallbackQueue:fQueue andBlock:v20];
    fAssertion = v15->fAssertion;
    v15->fAssertion = v16;

    v18 = v15;
  }

  return v13;
}

+ (vector<nearby::algorithms::finding::GnssSatelliteData,)getGnssSatelliteDataVecFromDict:(id)a2
{
  v45 = a4;
  v5 = [v45 objectForKey:@"data"];
  v6 = 0;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  while ([v5 count] > v6)
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
    v8 = [v7 objectForKey:@"satSystem"];
    v9 = [v8 intValue];

    if (v9 - 1 >= 6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v7 objectForKey:@"satId"];
    v12 = [v11 intValue];

    v13 = [v7 objectForKey:@"elevationDeg"];
    [v13 floatValue];
    v15 = v14;

    v16 = [v7 objectForKey:@"azimuthDeg"];
    [v16 floatValue];
    v18 = v17;

    v19 = [v7 objectForKey:@"l1Cn0"];
    [v19 floatValue];
    v21 = v20;

    v22 = [v7 objectForKey:@"l5Cn0"];
    [v22 floatValue];
    v24 = v23;

    v25 = [v7 objectForKey:@"isPhaseTracked"];
    v26 = [v25 intValue] == 1;

    v27 = [v7 objectForKey:@"isTracked"];
    v28 = v15;
    v29 = v18;
    v30 = v21;
    v31 = v24;
    v32 = [v27 intValue] == 1;

    var1 = retstr->var1;
    var2 = retstr->var2;
    if (var1 >= var2)
    {
      v36 = 0xAAAAAAAAAAAAAAABLL * ((var1 - retstr->var0) >> 4);
      v37 = v36 + 1;
      if (v36 + 1 > 0x555555555555555)
      {
        sub_100019B38();
      }

      v38 = 0xAAAAAAAAAAAAAAABLL * ((var2 - retstr->var0) >> 4);
      if (2 * v38 > v37)
      {
        v37 = 2 * v38;
      }

      if (v38 >= 0x2AAAAAAAAAAAAAALL)
      {
        v39 = 0x555555555555555;
      }

      else
      {
        v39 = v37;
      }

      if (v39)
      {
        sub_1003655DC(retstr, v39);
      }

      v40 = 48 * v36;
      *v40 = v10;
      *(v40 + 4) = v12;
      *(v40 + 8) = v28;
      *(v40 + 16) = v29;
      *(v40 + 24) = v30;
      *(v40 + 32) = v31;
      *(v40 + 40) = v26;
      *(v40 + 41) = v32;
      v35 = (48 * v36 + 48);
      v41 = retstr->var1 - retstr->var0;
      v42 = (48 * v36 - v41);
      memcpy(v42, retstr->var0, v41);
      var0 = retstr->var0;
      retstr->var0 = v42;
      retstr->var1 = v35;
      retstr->var2 = 0;
      if (var0)
      {
        operator delete(var0);
      }
    }

    else
    {
      *var1 = v10;
      *(var1 + 1) = v12;
      *(var1 + 1) = v28;
      *(var1 + 2) = v29;
      *(var1 + 3) = v30;
      *(var1 + 4) = v31;
      *(var1 + 40) = v26;
      v35 = (var1 + 48);
      *(var1 + 41) = v32;
    }

    retstr->var1 = v35;

    ++v6;
  }

  return result;
}

@end