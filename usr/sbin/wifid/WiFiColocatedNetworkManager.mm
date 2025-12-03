@interface WiFiColocatedNetworkManager
- (WiFiColocatedNetworkManager)init;
- (WiFiColocatedNetworkManager)initWithNetwork:(id)network colocatedNetworks:(id)networks;
- (id)_reduceNumberOfCandidatesTo:(unint64_t)to on:(unsigned int)on;
- (id)retrieveNextCandidate;
- (void)_reduceNetworks;
@end

@implementation WiFiColocatedNetworkManager

- (WiFiColocatedNetworkManager)init
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"[WiFiColocatedNetworkManager init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (id)retrieveNextCandidate
{
  v3 = [[NSMutableArray alloc] initWithArray:self->_colocatedNetworks];
  lastObject = [(NSArray *)v3 lastObject];
  [(NSArray *)v3 removeLastObject];
  colocatedNetworks = self->_colocatedNetworks;
  self->_colocatedNetworks = v3;

  return lastObject;
}

- (id)_reduceNumberOfCandidatesTo:(unint64_t)to on:(unsigned int)on
{
  channel = [(CWFScanResult *)self->_joinedNetwork channel];
  band = [channel band];

  if (band == 3 || (_os_feature_enabled_impl() & 1) != 0)
  {
    v8 = objc_alloc_init(NSMutableArray);
    channel2 = [(CWFScanResult *)self->_joinedNetwork channel];
    band2 = [channel2 band];

    if (band2 != on)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = self->_colocatedNetworks;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            v17 = objc_autoreleasePoolPush();
            channel3 = [v16 channel];
            band3 = [channel3 band];

            if (band3 == on)
            {
              [v8 addObject:v16];
              if ([v8 count]== to)
              {
                objc_autoreleasePoolPop(v17);
                goto LABEL_15;
              }
            }

            objc_autoreleasePoolPop(v17);
          }

          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    if ([v8 count])
    {
      v20 = v8;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
    sub_1001AB9C4(&v28, &v29);
    v8 = v28;
    v21 = v29;
  }

  return v21;
}

- (void)_reduceNetworks
{
  v15 = [(WiFiColocatedNetworkManager *)self _reduceNumberOfCandidatesTo:1 on:1];
  v3 = [(WiFiColocatedNetworkManager *)self _reduceNumberOfCandidatesTo:1 on:2];
  v4 = [(WiFiColocatedNetworkManager *)self _reduceNumberOfCandidatesTo:1 on:3];
  channel = [(CWFScanResult *)self->_joinedNetwork channel];
  is2GHz = [channel is2GHz];

  if (is2GHz)
  {
    if (v3)
    {
      v7 = v3;
LABEL_6:
      v10 = v4;
LABEL_10:
      v11 = [v7 arrayByAddingObjectsFromArray:v10];
      goto LABEL_11;
    }

LABEL_7:
    v11 = v4;
    goto LABEL_11;
  }

  channel2 = [(CWFScanResult *)self->_joinedNetwork channel];
  is5GHz = [channel2 is5GHz];

  if (is5GHz)
  {
    v7 = v15;
    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v7 = v15;
  if (v15)
  {
    v10 = v3;
    goto LABEL_10;
  }

  v11 = v3;
LABEL_11:
  v12 = v11;
  v13 = [v11 copy];
  colocatedNetworks = self->_colocatedNetworks;
  self->_colocatedNetworks = v13;
}

- (WiFiColocatedNetworkManager)initWithNetwork:(id)network colocatedNetworks:(id)networks
{
  networkCopy = network;
  networksCopy = networks;
  v8 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = WiFiColocatedNetworkManager;
  v9 = [(WiFiColocatedNetworkManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(WiFiColocatedNetworkManager *)v9 setColocatedNetworks:networksCopy];
    [(WiFiColocatedNetworkManager *)v10 setJoinedNetwork:networkCopy];
    [(WiFiColocatedNetworkManager *)v10 _reduceNetworks];
  }

  v11 = v10;
  objc_autoreleasePoolPop(v8);

  return v11;
}

@end