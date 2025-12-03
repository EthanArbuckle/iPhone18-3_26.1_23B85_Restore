@interface NEURLParser
+ (id)matchingStringsForURL:(const char *)l;
@end

@implementation NEURLParser

+ (id)matchingStringsForURL:(const char *)l
{
  if (l)
  {
    v4 = [NSURL alloc];
    v5 = [NSString stringWithUTF8String:l];
    v6 = [v4 initWithString:v5];

    pathComponents = [v6 pathComponents];
    v8 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [pathComponents count]);

    host = [v6 host];

    if (host)
    {
      lCopy = l;
      host2 = [v6 host];
      if (([host2 hasPrefix:@"www."] & 1) == 0)
      {
        v11 = [[NSString alloc] initWithFormat:@"%@%@", @"www.", host2];

        host2 = v11;
      }

      v12 = host2;
      objc_opt_self();
      v64 = v12;
      v65 = v6;
      if (v12)
      {
        v13 = [v12 componentsSeparatedByString:@"."];
        v14 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v13 count]);
        if ([v13 count])
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = [v13 subarrayWithRange:{v16, objc_msgSend(v13, "count") + v15}];
            v18 = [v17 componentsJoinedByString:@"."];
            [v14 addObject:v18];
            if (([v18 hasSuffix:@"/"] & 1) == 0)
            {
              v19 = [[NSString alloc] initWithFormat:@"%@%@", v18, @"/"];
              [v14 addObject:v19];
            }

            ++v16;
            --v15;
          }

          while (v16 < [v13 count]);
        }

        if (v14)
        {
          v20 = [v14 copy];
        }

        else
        {
          v20 = 0;
        }

        v6 = v65;

        v12 = v64;
      }

      else
      {
        v20 = 0;
      }

      allObjects = [v20 allObjects];
      [v8 addObjectsFromArray:allObjects];

      v22 = [v12 stringByReplacingOccurrencesOfString:@"www." withString:&stru_100024B20];
      if (v22)
      {
        [v8 addObject:v22];
        if (([v22 hasSuffix:@"/"] & 1) == 0)
        {
          v23 = [[NSString alloc] initWithFormat:@"%@%@", v22, @"/"];
          [v8 addObject:v23];
        }

        v61 = v22;
        v62 = v20;
        v24 = v22;
        v25 = v12;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        obj = [v6 pathComponents];
        v26 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v68;
          do
          {
            v29 = 0;
            v30 = v25;
            v31 = v24;
            do
            {
              if (*v68 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v67 + 1) + 8 * v29);
              v24 = [v31 stringByAppendingPathComponent:v32];

              v25 = [v30 stringByAppendingPathComponent:v32];

              v33 = [v24 copy];
              [v8 addObject:v33];

              v34 = [v25 copy];
              [v8 addObject:v34];

              if (([v24 hasSuffix:@"/"] & 1) == 0)
              {
                v35 = [[NSString alloc] initWithFormat:@"%@%@", v24, @"/"];
                [v8 addObject:v35];
              }

              if (([v25 hasSuffix:@"/"] & 1) == 0)
              {
                v36 = [[NSString alloc] initWithFormat:@"%@%@", v25, @"/"];
                [v8 addObject:v36];
              }

              v29 = v29 + 1;
              v30 = v25;
              v31 = v24;
            }

            while (v27 != v29);
            v27 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
          }

          while (v27);
        }

        v6 = v65;
        query = [v65 query];

        if (query)
        {
          query2 = [v65 query];
          v39 = [NSString stringWithFormat:@"?%@", query2];

          v40 = [v24 stringByAppendingString:v39];

          v41 = [v25 stringByAppendingString:v39];

          v42 = [v40 copy];
          [v8 addObject:v42];

          v43 = [v41 copy];
          [v8 addObject:v43];

          if (([v40 hasSuffix:@"/"] & 1) == 0)
          {
            v44 = [[NSString alloc] initWithFormat:@"%@%@", v40, @"/"];
            [v8 addObject:v44];
          }

          v45 = lCopy;
          if (([v41 hasSuffix:@"/"] & 1) == 0)
          {
            v46 = [[NSString alloc] initWithFormat:@"%@%@", v41, @"/"];
            [v8 addObject:v46];
          }
        }

        else
        {
          v41 = v25;
          v40 = v24;
          v45 = lCopy;
        }

        fragment = [v65 fragment];

        if (fragment)
        {
          fragment2 = [v65 fragment];
          v49 = [NSString stringWithFormat:@"#%@", fragment2];

          v50 = [v40 stringByAppendingString:v49];

          v51 = [v41 stringByAppendingString:v49];

          v52 = [v50 copy];
          [v8 addObject:v52];

          v53 = [v51 copy];
          [v8 addObject:v53];

          if (([v50 hasSuffix:@"/"] & 1) == 0)
          {
            v54 = [[NSString alloc] initWithFormat:@"%@%@", v50, @"/"];
            [v8 addObject:v54];
          }

          v12 = v64;
          v20 = v62;
          if (([v51 hasSuffix:@"/"] & 1) == 0)
          {
            v55 = [[NSString alloc] initWithFormat:@"%@%@", v51, @"/"];
            [v8 addObject:v55];
          }
        }

        else
        {
          v51 = v41;
          v50 = v40;
          v12 = v64;
          v20 = v62;
        }

        v56 = [[NSString alloc] initWithUTF8String:v45];
        v57 = [v56 rangeOfString:@"://"];
        if (v57 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v59 = [v56 substringFromIndex:&v57[v58]];
          [v8 addObject:v59];
        }

        if (v8)
        {
          host = [v8 copy];
        }

        else
        {
          host = 0;
        }

        v22 = v61;
      }

      else
      {
        host = 0;
      }
    }
  }

  else
  {
    host = 0;
  }

  return host;
}

@end