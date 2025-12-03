@interface NSPConfigurationFetchAnalytics
- (id)analyticsDict;
- (id)configFetchURLToIndex;
@end

@implementation NSPConfigurationFetchAnalytics

- (id)configFetchURLToIndex
{
  configFetchURL = [(NSPConfigurationFetchAnalytics *)self configFetchURL];

  if (configFetchURL)
  {
    configFetchURL2 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
    v5 = [configFetchURL2 isEqual:@"https://mask-api.icloud.com/v1/fetchConfigFile"];

    if (v5)
    {
      return &off_100113D98;
    }

    else
    {
      configFetchURL3 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
      v8 = [configFetchURL3 isEqual:@"https://mask-api.icloud.com/v1_1/fetchConfigFile"];

      if (v8)
      {
        return &off_100113DB0;
      }

      else
      {
        configFetchURL4 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
        v10 = [configFetchURL4 isEqual:@"https://mask-api.icloud.com/v1_2/fetchConfigFile"];

        if (v10)
        {
          return &off_100113DC8;
        }

        else
        {
          configFetchURL5 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
          v12 = [configFetchURL5 isEqual:@"https://mask-api.icloud.com/v1_3/fetchConfigFile"];

          if (v12)
          {
            return &off_100113DE0;
          }

          else
          {
            configFetchURL6 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
            v14 = [configFetchURL6 isEqual:@"https://mask-api.icloud.com/v1_4/fetchConfigFile"];

            if (v14)
            {
              return &off_100113DF8;
            }

            else
            {
              configFetchURL7 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
              v16 = [configFetchURL7 isEqual:@"https://mask-api.icloud.com/v1_5/fetchConfigFile"];

              if (v16)
              {
                return &off_100113E10;
              }

              else
              {
                configFetchURL8 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                v18 = [configFetchURL8 isEqual:@"https://mask-api.icloud.com/v1_6/fetchConfigFile"];

                if (v18)
                {
                  return &off_100113E28;
                }

                else
                {
                  configFetchURL9 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                  v20 = [configFetchURL9 isEqual:@"https://mask-api.icloud.com/v2_0/fetchConfigFile"];

                  if (v20)
                  {
                    return &off_100113E40;
                  }

                  else
                  {
                    configFetchURL10 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                    v22 = [configFetchURL10 isEqual:@"https://mask-api.icloud.com/v2_1/fetchConfigFile"];

                    if (v22)
                    {
                      return &off_100113E58;
                    }

                    else
                    {
                      configFetchURL11 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                      v24 = [configFetchURL11 isEqual:@"https://mask-api.icloud.com/v2_2/fetchConfigFile"];

                      if (v24)
                      {
                        return &off_100113E70;
                      }

                      else
                      {
                        configFetchURL12 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                        v26 = [configFetchURL12 isEqual:@"https://mask-api.icloud.com/v2_3/fetchConfigFile"];

                        if (v26)
                        {
                          return &off_100113E88;
                        }

                        else
                        {
                          configFetchURL13 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                          v29 = [configFetchURL13 isEqual:@"https://mask-api.icloud.com/v3_0/fetchConfigFile"];

                          if (v29)
                          {
                            return &off_100113EA0;
                          }

                          else
                          {
                            configFetchURL14 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                            v31 = [configFetchURL14 isEqual:@"https://mask-api.icloud.com/v2_4/fetchConfigFile"];

                            if (v31)
                            {
                              return &off_100113EB8;
                            }

                            else
                            {
                              configFetchURL15 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                              v33 = [configFetchURL15 isEqual:@"https://mask-api.icloud.com/v3_1/fetchConfigFile"];

                              if (v33)
                              {
                                return &off_100113ED0;
                              }

                              else
                              {
                                configFetchURL16 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                v35 = [configFetchURL16 isEqual:@"https://mask-api.icloud.com/v3_2/fetchConfigFile"];

                                if (v35)
                                {
                                  return &off_100113EE8;
                                }

                                else
                                {
                                  configFetchURL17 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                  v37 = [configFetchURL17 isEqual:@"https://mask-api.icloud.com/v3_3/fetchConfigFile"];

                                  if (v37)
                                  {
                                    return &off_100113F00;
                                  }

                                  else
                                  {
                                    configFetchURL18 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                    v39 = [configFetchURL18 isEqual:@"https://mask-api.icloud.com/v3_4/fetchConfigFile"];

                                    if (v39)
                                    {
                                      return &off_100113F18;
                                    }

                                    else
                                    {
                                      configFetchURL19 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                      v41 = [configFetchURL19 isEqual:@"https://mask-api.icloud.com/v3_5/fetchConfigFile"];

                                      if (v41)
                                      {
                                        return &off_100113F30;
                                      }

                                      else
                                      {
                                        configFetchURL20 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                        v43 = [configFetchURL20 isEqual:@"https://mask-api.icloud.com/v3_6/fetchConfigFile"];

                                        if (v43)
                                        {
                                          return &off_100113F48;
                                        }

                                        else
                                        {
                                          configFetchURL21 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                          v45 = [configFetchURL21 isEqual:@"https://mask-api.icloud.com/v4_0/fetchConfigFile"];

                                          if (v45)
                                          {
                                            return &off_100113F60;
                                          }

                                          else
                                          {
                                            configFetchURL22 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                            v47 = [configFetchURL22 isEqual:@"https://mask-api.icloud.com/v4_1/fetchConfigFile"];

                                            if (v47)
                                            {
                                              return &off_100113F78;
                                            }

                                            else
                                            {
                                              configFetchURL23 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                              v49 = [configFetchURL23 isEqual:@"https://mask-api.icloud.com/v4_2/fetchConfigFile"];

                                              if (v49)
                                              {
                                                return &off_100113F90;
                                              }

                                              else
                                              {
                                                configFetchURL24 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                v51 = [configFetchURL24 isEqual:@"https://mask-api.icloud.com/v4_3/fetchConfigFile"];

                                                if (v51)
                                                {
                                                  return &off_100113FA8;
                                                }

                                                else
                                                {
                                                  configFetchURL25 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                  v53 = [configFetchURL25 isEqual:@"https://mask-api.icloud.com/v4_4/fetchConfigFile"];

                                                  if (v53)
                                                  {
                                                    return &off_100113FC0;
                                                  }

                                                  else
                                                  {
                                                    configFetchURL26 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                    v55 = [configFetchURL26 isEqual:@"https://mask-api.icloud.com/v4_5/fetchConfigFile"];

                                                    if (v55)
                                                    {
                                                      return &off_100113FD8;
                                                    }

                                                    else
                                                    {
                                                      configFetchURL27 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                      v57 = [configFetchURL27 isEqual:@"https://mask-api.icloud.com/v5_0/fetchConfigFile"];

                                                      if (v57)
                                                      {
                                                        return &off_100113FF0;
                                                      }

                                                      else
                                                      {
                                                        configFetchURL28 = [(NSPConfigurationFetchAnalytics *)self configFetchURL];
                                                        v59 = [configFetchURL28 isEqual:@"https://mask-api.icloud.com/v5_1/fetchConfigFile"];

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
  configFetchURLToIndex = [(NSPConfigurationFetchAnalytics *)self configFetchURLToIndex];
  [v3 setObject:configFetchURLToIndex forKeyedSubscript:@"ConfigurationFetchPath"];

  v5 = [NSNumber numberWithInteger:[(NSPConfigurationFetchAnalytics *)self httpCode]];
  [v3 setObject:v5 forKeyedSubscript:@"HTTPCode"];

  v6 = [NSNumber numberWithInteger:[(NSPConfigurationFetchAnalytics *)self nsurlErrorCode]];
  [v3 setObject:v6 forKeyedSubscript:@"NSURLErrorCode"];

  requestedServerUUID = [(NSPConfigurationFetchAnalytics *)self requestedServerUUID];
  [v3 setObject:requestedServerUUID forKeyedSubscript:@"RequestedServerUUID"];

  [(NSPConfigurationFetchAnalytics *)self latency];
  v8 = [NSNumber numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"Latency"];

  reason = [(NSPConfigurationFetchAnalytics *)self reason];
  [v3 setObject:reason forKeyedSubscript:@"Reason"];

  return v3;
}

@end