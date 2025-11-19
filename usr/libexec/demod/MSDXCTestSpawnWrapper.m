@interface MSDXCTestSpawnWrapper
+ (id)sharedInstance;
- (BOOL)executeTestScriptOfIdentifier:(id)a3;
- (id)_parseTestScriptsFromXCTSpawnResultDictionary:(id)a3;
- (id)_testProductsPath;
- (id)listAllTestScripts;
@end

@implementation MSDXCTestSpawnWrapper

+ (id)sharedInstance
{
  if (qword_1001A59A0 != -1)
  {
    sub_1000E501C();
  }

  v3 = qword_1001A5998;

  return v3;
}

- (id)listAllTestScripts
{
  v3 = [(MSDXCTestSpawnWrapper *)self _testProductsPath];
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [NSString stringWithFormat:@"/var/tmp/%@.json", v5];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = v3;
    v48 = 2114;
    v49 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Listing all test scripts from input: %{public}@ output: %{public}@", buf, 0x16u);
  }

  v8 = [NSURL fileURLWithPath:v3];
  v45 = 0;
  v44 = 0;
  v9 = [v8 getResourceValue:&v45 forKey:NSURLContentModificationDateKey error:&v44];
  v10 = v45;
  v11 = v44;

  if ((v9 & 1) == 0)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5030(v11);
    }
  }

  v13 = [(MSDXCTestSpawnWrapper *)self testScripts];
  if (v13)
  {
    v14 = v13;
    v15 = [(MSDXCTestSpawnWrapper *)self testScriptsLastModified];
    v16 = [v15 isEqualToDate:v10];

    if (v16)
    {
      v17 = sub_100063A54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No change in test scripts. Returning cached results!", buf, 2u);
      }

      v18 = [(MSDXCTestSpawnWrapper *)self testScripts];
      goto LABEL_23;
    }
  }

  v19 = [NSURL fileURLWithPath:@"/usr/local/bin/xctspawn"];
  v43 = v11;
  v20 = [v19 checkResourceIsReachableAndReturnError:&v43];
  v21 = v43;

  if ((v20 & 1) == 0)
  {
    v34 = sub_100063A54();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1000E50B4(v21);
    }

    goto LABEL_22;
  }

  v22 = objc_alloc_init(NSTask);
  [v22 setLaunchPath:@"/usr/local/bin/xctspawn"];
  v23 = [NSArray arrayWithObjects:v3, @"--enumerate-tests", @"--test-enumeration-format", @"json", @"--test-enumeration-output-path", v6, 0];
  [v22 setArguments:v23];

  [v22 setCurrentDirectoryPath:@"/var/tmp"];
  v24 = +[NSPipe pipe];
  [v22 setStandardOutput:v24];
  v25 = sub_100063A54();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v22 launchPath];
    v27 = [v22 arguments];
    *buf = 138543618;
    v47 = v26;
    v48 = 2114;
    v49 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ with arguments: %{public}@", buf, 0x16u);
  }

  [v22 launch];
  [v22 waitUntilExit];
  v28 = [v22 terminationStatus];
  if (v28)
  {
    v29 = v28;
    v30 = [v24 fileHandleForReading];
    v31 = [v30 readDataToEndOfFile];

    v32 = [[NSString alloc] initWithData:v31 encoding:4];
    v33 = sub_100063A54();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5138(v32, v29, v33);
    }

LABEL_22:
    v18 = 0;
    v11 = v21;
    goto LABEL_23;
  }

  v42 = v21;
  v36 = [NSData dataWithContentsOfFile:v6 options:0 error:&v42];
  v37 = v42;

  if (v36)
  {
    v41 = v37;
    v38 = [NSJSONSerialization JSONObjectWithData:v36 options:0 error:&v41];
    v11 = v41;

    if (v38)
    {
      v39 = [(MSDXCTestSpawnWrapper *)self _parseTestScriptsFromXCTSpawnResultDictionary:v38];
      [(MSDXCTestSpawnWrapper *)self setTestScripts:v39];

      [(MSDXCTestSpawnWrapper *)self setTestScriptsLastModified:v10];
      v18 = [(MSDXCTestSpawnWrapper *)self testScripts];
    }

    else
    {
      v40 = sub_100063A54();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1000E51C0(v11);
      }

      v18 = 0;
    }
  }

  else
  {
    v38 = sub_100063A54();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5244(v37);
    }

    v18 = 0;
    v11 = v37;
  }

LABEL_23:

  return v18;
}

- (BOOL)executeTestScriptOfIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MSDXCTestSpawnWrapper *)self _testProductsPath];
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  v8 = [NSString stringWithFormat:@"/var/tmp/%@.xcresult", v7];

  if (os_variant_has_internal_content())
  {
    v9 = +[MSDTestPreferences sharedInstance];
    v10 = [v9 pressDemoTestTarget];

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = @"PressDemoScripts";
    }
  }

  else
  {
    v11 = @"PressDemoScripts";
  }

  v12 = [NSString stringWithFormat:@"%@/%@", v11, v4];
  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Exexcuting test script of identifier %{public}@", buf, 0xCu);
  }

  v14 = objc_alloc_init(NSTask);
  [v14 setLaunchPath:@"/usr/local/bin/xctspawn"];
  v15 = [NSArray arrayWithObjects:v5, @"--result-bundle-path", v8, @"--only-testing", v12, 0];
  [v14 setArguments:v15];

  [v14 setCurrentDirectoryPath:@"/var/tmp"];
  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v14 launchPath];
    v18 = [v14 arguments];
    *buf = 138543618;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ with arguments: %{public}@", buf, 0x16u);
  }

  [v14 launch];
  [v14 waitUntilExit];
  v19 = [v14 terminationStatus];
  if (v19)
  {
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000E52C8(v19, v20);
    }
  }

  return v19 == 0;
}

- (id)_testProductsPath
{
  v2 = +[MSDTestPreferences sharedInstance];
  v3 = [v2 pressDemoXCTestProductsPath];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"/var/mobile/XcodeBuiltProducts/PressDemoScripts.xctestproducts";
  }

  return v4;
}

- (id)_parseTestScriptsFromXCTSpawnResultDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"values"];
  v4 = [v3 objectAtIndexedSubscript:0];

  v5 = sub_100063A54();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 objectForKeyedSubscript:@"name"];
      *buf = 138543362;
      v49 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found test plan: %{public}@", buf, 0xCu);
    }

    v8 = [v4 objectForKeyedSubscript:@"children"];
    v6 = [v8 objectAtIndexedSubscript:0];

    v9 = sub_100063A54();
    v10 = v9;
    if (v6)
    {
      v33 = v4;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 objectForKeyedSubscript:@"name"];
        *buf = 138543362;
        v49 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "> Found test target: %{public}@", buf, 0xCu);
      }

      v32 = v6;
      v12 = [v6 objectForKeyedSubscript:@"children"];
      v36 = [[NSMutableArray alloc] initWithCapacity:0];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v12;
      v37 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v37)
      {
        v35 = *v45;
        do
        {
          v13 = 0;
          do
          {
            if (*v45 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v39 = v13;
            v14 = *(*(&v44 + 1) + 8 * v13);
            v15 = [v14 objectForKeyedSubscript:@"name"];
            v16 = sub_100063A54();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v49 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, ">> Found test case: %{public}@", buf, 0xCu);
            }

            v38 = v15;

            v17 = [v14 objectForKeyedSubscript:@"children"];
            v18 = [[NSMutableArray alloc] initWithCapacity:0];
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v19 = v17;
            v20 = [v19 countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v41;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v41 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v40 + 1) + 8 * i);
                  v25 = [v24 objectForKeyedSubscript:@"name"];
                  v26 = [v24 objectForKeyedSubscript:@"disabled"];
                  v27 = [v26 BOOLValue];

                  v28 = sub_100063A54();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v49 = v25;
                    v50 = 1024;
                    v51 = v27;
                    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, ">>> Found test method: %{public}@  Disabled: %{BOOL}d", buf, 0x12u);
                  }

                  if ((v27 & 1) == 0)
                  {
                    [v18 addObject:v25];
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v40 objects:v52 count:16];
              }

              while (v21);
            }

            v29 = [[MSDKPeerDemoTestScript alloc] initWithName:v38 andMethods:v18];
            [v36 addObject:v29];

            v13 = v39 + 1;
          }

          while ((v39 + 1) != v37);
          v37 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v37);
      }

      v10 = obj;

      v30 = [NSArray arrayWithArray:v36];

      v6 = v32;
      v4 = v33;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5340(v10);
      }

      v30 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5384(v6);
    }

    v30 = 0;
  }

  return v30;
}

@end