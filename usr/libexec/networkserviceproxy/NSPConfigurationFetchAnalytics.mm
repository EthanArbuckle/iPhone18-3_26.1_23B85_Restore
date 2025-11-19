@interface NSPConfigurationFetchAnalytics
- (id)analyticsDict;
- (id)configFetchURLToIndex;
@end

@implementation NSPConfigurationFetchAnalytics

- (id)configFetchURLToIndex
{
  v3 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];

  if (v3)
  {
    v4 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
    v5 = [v4 isEqual:@"https://mask-api.icloud.com/v1/fetchConfigFile"];

    if (v5)
    {
      return &off_100113D98;
    }

    else
    {
      v7 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
      v8 = [v7 isEqual:@"https://mask-api.icloud.com/v1_1/fetchConfigFile"];

      if (v8)
      {
        return &off_100113DB0;
      }

      else
      {
        v9 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
        v10 = [v9 isEqual:@"https://mask-api.icloud.com/v1_2/fetchConfigFile"];

        if (v10)
        {
          return &off_100113DC8;
        }

        else
        {
          v11 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
          v12 = [v11 isEqual:@"https://mask-api.icloud.com/v1_3/fetchConfigFile"];

          if (v12)
          {
            return &off_100113DE0;
          }

          else
          {
            v13 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
            v14 = [v13 isEqual:@"https://mask-api.icloud.com/v1_4/fetchConfigFile"];

            if (v14)
            {
              return &off_100113DF8;
            }

            else
            {
              v15 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
              v16 = [v15 isEqual:@"https://mask-api.icloud.com/v1_5/fetchConfigFile"];

              if (v16)
              {
                return &off_100113E10;
              }

              else
              {
                v17 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                v18 = [v17 isEqual:@"https://mask-api.icloud.com/v1_6/fetchConfigFile"];

                if (v18)
                {
                  return &off_100113E28;
                }

                else
                {
                  v19 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                  v20 = [v19 isEqual:@"https://mask-api.icloud.com/v2_0/fetchConfigFile"];

                  if (v20)
                  {
                    return &off_100113E40;
                  }

                  else
                  {
                    v21 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                    v22 = [v21 isEqual:@"https://mask-api.icloud.com/v2_1/fetchConfigFile"];

                    if (v22)
                    {
                      return &off_100113E58;
                    }

                    else
                    {
                      v23 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                      v24 = [v23 isEqual:@"https://mask-api.icloud.com/v2_2/fetchConfigFile"];

                      if (v24)
                      {
                        return &off_100113E70;
                      }

                      else
                      {
                        v25 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                        v26 = [v25 isEqual:@"https://mask-api.icloud.com/v2_3/fetchConfigFile"];

                        if (v26)
                        {
                          return &off_100113E88;
                        }

                        else
                        {
                          v28 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                          v29 = [v28 isEqual:@"https://mask-api.icloud.com/v3_0/fetchConfigFile"];

                          if (v29)
                          {
                            return &off_100113EA0;
                          }

                          else
                          {
                            v30 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                            v31 = [v30 isEqual:@"https://mask-api.icloud.com/v2_4/fetchConfigFile"];

                            if (v31)
                            {
                              return &off_100113EB8;
                            }

                            else
                            {
                              v32 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                              v33 = [v32 isEqual:@"https://mask-api.icloud.com/v3_1/fetchConfigFile"];

                              if (v33)
                              {
                                return &off_100113ED0;
                              }

                              else
                              {
                                v34 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                v35 = [v34 isEqual:@"https://mask-api.icloud.com/v3_2/fetchConfigFile"];

                                if (v35)
                                {
                                  return &off_100113EE8;
                                }

                                else
                                {
                                  v36 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                  v37 = [v36 isEqual:@"https://mask-api.icloud.com/v3_3/fetchConfigFile"];

                                  if (v37)
                                  {
                                    return &off_100113F00;
                                  }

                                  else
                                  {
                                    v38 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                    v39 = [v38 isEqual:@"https://mask-api.icloud.com/v3_4/fetchConfigFile"];

                                    if (v39)
                                    {
                                      return &off_100113F18;
                                    }

                                    else
                                    {
                                      v40 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                      v41 = [v40 isEqual:@"https://mask-api.icloud.com/v3_5/fetchConfigFile"];

                                      if (v41)
                                      {
                                        return &off_100113F30;
                                      }

                                      else
                                      {
                                        v42 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                        v43 = [v42 isEqual:@"https://mask-api.icloud.com/v3_6/fetchConfigFile"];

                                        if (v43)
                                        {
                                          return &off_100113F48;
                                        }

                                        else
                                        {
                                          v44 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                          v45 = [v44 isEqual:@"https://mask-api.icloud.com/v4_0/fetchConfigFile"];

                                          if (v45)
                                          {
                                            return &off_100113F60;
                                          }

                                          else
                                          {
                                            v46 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                            v47 = [v46 isEqual:@"https://mask-api.icloud.com/v4_1/fetchConfigFile"];

                                            if (v47)
                                            {
                                              return &off_100113F78;
                                            }

                                            else
                                            {
                                              v48 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                              v49 = [v48 isEqual:@"https://mask-api.icloud.com/v4_2/fetchConfigFile"];

                                              if (v49)
                                              {
                                                return &off_100113F90;
                                              }

                                              else
                                              {
                                                v50 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                v51 = [v50 isEqual:@"https://mask-api.icloud.com/v4_3/fetchConfigFile"];

                                                if (v51)
                                                {
                                                  return &off_100113FA8;
                                                }

                                                else
                                                {
                                                  v52 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                  v53 = [v52 isEqual:@"https://mask-api.icloud.com/v4_4/fetchConfigFile"];

                                                  if (v53)
                                                  {
                                                    return &off_100113FC0;
                                                  }

                                                  else
                                                  {
                                                    v54 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                    v55 = [v54 isEqual:@"https://mask-api.icloud.com/v4_5/fetchConfigFile"];

                                                    if (v55)
                                                    {
                                                      return &off_100113FD8;
                                                    }

                                                    else
                                                    {
                                                      v56 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                      v57 = [v56 isEqual:@"https://mask-api.icloud.com/v5_0/fetchConfigFile"];

                                                      if (v57)
                                                      {
                                                        return &off_100113FF0;
                                                      }

                                                      else
                                                      {
                                                        v58 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                        v59 = [v58 isEqual:@"https://mask-api.icloud.com/v5_1/fetchConfigFile"];

                                                        if (v59)
                                                        {
                                                          return &off_100114008;
                                                        }

                                                        else
                                                        {
                                                          return &off_100114020;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v27 = nplog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      v60 = 136315138;
      v61 = "[NSPConfigurationFetchAnalytics configFetchURLToIndex]";
      _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "%s called with null self.configFetchURL", &v60, 0xCu);
    }

    return 0;
  }
}

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(NSPConfigurationFetchAnalytics *)self configFetchURLToIndex];
  [v3 setObject:v4 forKeyedSubscript:@"ConfigurationFetchPath"];

  v5 = [NSNumber numberWithInteger:[(NSPConfigurationFetchAnalytics *)self httpCode]];
  [v3 setObject:v5 forKeyedSubscript:@"HTTPCode"];

  v6 = [NSNumber numberWithInteger:[(NSPConfigurationFetchAnalytics *)self nsurlErrorCode]];
  [v3 setObject:v6 forKeyedSubscript:@"NSURLErrorCode"];

  v7 = [(NSPConfigurationFetchAnalytics *)self requestedServerUUID];
  [v3 setObject:v7 forKeyedSubscript:@"RequestedServerUUID"];

  [(NSPConfigurationFetchAnalytics *)self latency];
  v8 = [NSNumber numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"Latency"];

  v9 = [(NSPConfigurationFetchAnalytics *)self reason];
  [v3 setObject:v9 forKeyedSubscript:@"Reason"];

  return v3;
}

@end