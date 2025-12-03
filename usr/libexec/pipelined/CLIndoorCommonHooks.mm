@interface CLIndoorCommonHooks
+ (id)filterLocationGroups:(id)groups isRegionalSupported:(BOOL)supported;
+ (id)nearestVenues:()time_point<std:(std:()std:(1000000000>>>)std :(id)a4 ratio<1 :(id)a5 chrono:(double)chrono :(const NearestVenueSettings *)a7 duration<long)long :(BOOL)a8 chrono::steady_clock availableVenues:latestPosition:availabilityZScoreConfidenceInterval:settings:isAllowedMultipleVenues:;
@end

@implementation CLIndoorCommonHooks

+ (id)nearestVenues:()time_point<std:(std:()std:(1000000000>>>)std :(id)a4 ratio<1 :(id)a5 chrono:(double)chrono :(const NearestVenueSettings *)a7 duration<long)long :(BOOL)a8 chrono::steady_clock availableVenues:latestPosition:availabilityZScoreConfidenceInterval:settings:isAllowedMultipleVenues:
{
  v45 = a4;
  v44 = a5;
  if (a7->var0)
  {
    v13 = a7->var0;
    goto LABEL_45;
  }

  if (!a7->var2 && ([v44 isStaleFix:std.var0.__rep_] & 1) != 0)
  {
    v13 = 0;
    goto LABEL_45;
  }

  v46 = a7;
  v43 = [CLIndoorCommonHooks filterLocationGroups:v45 isRegionalSupported:a7->var3];
  if ([v43 count])
  {
    var2 = a7->var2;
    if (var2 || (var2 = v44) != 0)
    {
      [var2 gpsLocation];
    }

    else
    {
      memset(v57, 0, 156);
    }

    v15 = [[GeographicCoordinate alloc] initWithLatitude:*(v57 + 4) longitude:0.0 andAltitude:?];
    v16 = [ECEFCoordinate fromLatLon:v15];

    v17 = *(&v57[1] + 4) * chrono;
    if (a8)
    {
      v13 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v43, "count")}];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v18 = v43;
      v19 = [v18 countByEnumeratingWithState:&v47 objects:v58 count:16];
      if (v19)
      {
        v20 = *v48;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v48 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v47 + 1) + 8 * i);
            groupId = [v22 groupId];
            v24 = [@"G" stringByAppendingString:groupId];

            if (([v13 containsObject:v24] & 1) == 0)
            {
              [v22 distance:v16];
              v26 = v25;
              [v22 tolerance];
              if (v26 - v17 - v27 < v46->var1)
              {
                [v13 addObject:v24];
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v47 objects:v58 count:16];
        }

        while (v19);
      }

      goto LABEL_43;
    }

    memset(&v56, 0, sizeof(v56));
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v28 = v43;
    v29 = [v28 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v29)
    {
      v30 = *v53;
      v31 = INFINITY;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v52 + 1) + 8 * j);
          [v33 distance:v16];
          v35 = v34;
          if (v34 < v31)
          {
            [v33 tolerance];
            if (v35 <= v17 + v36)
            {
              groupId2 = [v33 groupId];
              v38 = groupId2;
              std::string::assign(&v56, [groupId2 UTF8String]);

              v31 = v35;
            }
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v29);
    }

    size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::operator+<char>();
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      v56 = v51;
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v56;
      }

      else
      {
        v40 = v51.__r_.__value_.__r.__words[0];
      }

      v41 = [NSString stringWithUTF8String:v40];
      v13 = [NSSet setWithObject:v41];

      if ((*(&v56.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0;
      if ((*(&v56.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_43;
      }
    }

    operator delete(v56.__r_.__value_.__l.__data_);
LABEL_43:

    goto LABEL_44;
  }

  v13 = 0;
LABEL_44:

LABEL_45:

  return v13;
}

+ (id)filterLocationGroups:(id)groups isRegionalSupported:(BOOL)supported
{
  supportedCopy = supported;
  groupsCopy = groups;
  v6 = groupsCopy;
  if (supportedCopy)
  {
    v7 = [groupsCopy copy];
  }

  else
  {
    v7 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (!+[CLLocationContextUtil isRegional:](CLLocationContextUtil, "isRegional:", [v12 locationContext]))
          {
            [v7 addObject:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v7;
}

@end