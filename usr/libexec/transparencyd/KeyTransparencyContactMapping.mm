@interface KeyTransparencyContactMapping
+ (id)countryCodeMap;
+ (id)mapContactsToIDS:(id)a3;
@end

@implementation KeyTransparencyContactMapping

+ (id)countryCodeMap
{
  if (qword_10039CC60 != -1)
  {
    sub_10025E544();
  }

  v3 = qword_10039CC58;

  return v3;
}

+ (id)mapContactsToIDS:(id)a3
{
  v3 = a3;
  +[NSMutableSet set];
  v47 = v46 = v3;
  [v3 phoneNumbers];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v4 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v54;
    do
    {
      v7 = 0;
      do
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v53 + 1) + 8 * v7);
        v9 = [v8 value];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 digits];
          if (v11)
          {
            v12 = [v10 countryCode];
            v13 = IDSCopyIDForPhoneNumberWithOptions();

            if (qword_10039CC68 != -1)
            {
              sub_10025E558();
            }

            v14 = qword_10039CC70;
            if (os_log_type_enabled(qword_10039CC70, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v14;
              v16 = [v10 digits];
              v17 = [v10 countryCode];
              *buf = 138413058;
              v59 = v16;
              v60 = 2112;
              v61 = v17;
              v62 = 2160;
              v63 = 1752392040;
              v64 = 2112;
              v65 = v13;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "mapContactsToIDS adding phonenumber %@[%@] as %{mask.hash}@", buf, 0x2Au);
            }

            v18 = [v10 countryCode];
            if (v18)
            {
              v19 = v18;
              goto LABEL_35;
            }

            if (([v13 isEqualToString:@"tel:(null)"] & 1) == 0 && v13)
            {
              goto LABEL_36;
            }

            if (qword_10039CC68 != -1)
            {
              sub_10025E580();
            }

            v22 = qword_10039CC70;
            if (os_log_type_enabled(qword_10039CC70, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unable to find IDS contact for given phone number, attempting to guess country code based on NSLocale", buf, 2u);
            }

            v19 = CPPhoneNumberCopyHomeCountryCode();
            v23 = [a1 countryCodeMap];
            v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v19 intValue]);
            v25 = [v23 objectForKey:v24];

            if (v25)
            {
              v26 = [v10 digits];
              v27 = IDSCopyIDForPhoneNumberWithOptions();

              if (qword_10039CC68 != -1)
              {
                sub_10025E5A8();
              }

              v28 = qword_10039CC70;
              if (os_log_type_enabled(qword_10039CC70, OS_LOG_TYPE_DEFAULT))
              {
                v29 = v28;
                v30 = [v10 digits];
                *buf = 138413058;
                v59 = v30;
                v60 = 2112;
                v61 = v25;
                v62 = 2160;
                v63 = 1752392040;
                v64 = 2112;
                v65 = v27;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "mapContactsToIDS Found valid country code from NSLocale, adding phonenumber %@[%@] as %{mask.hash}@", buf, 0x2Au);
              }
            }

            else
            {
              v27 = v13;
            }

            v13 = v27;
LABEL_35:

            if (v13)
            {
LABEL_36:
              if (([v13 isEqualToString:@"tel:(null)"] & 1) == 0)
              {
                [v47 addObject:v13];
              }
            }
          }

          else
          {
            if (qword_10039CC68 != -1)
            {
              sub_10025E5D0();
            }

            v21 = qword_10039CC70;
            if (os_log_type_enabled(qword_10039CC70, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 141558530;
              v59 = 1752392040;
              v60 = 2112;
              v61 = v8;
              v62 = 2112;
              v63 = v46;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "mapContactsToIDS phonenumber string missing %{mask.hash}@ on %@", buf, 0x20u);
            }
          }

          goto LABEL_40;
        }

        if (qword_10039CC68 != -1)
        {
          sub_10025E5F8();
        }

        v20 = qword_10039CC70;
        if (os_log_type_enabled(qword_10039CC70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558530;
          v59 = 1752392040;
          v60 = 2112;
          v61 = v8;
          v62 = 2112;
          v63 = v46;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "mapContactsToIDS phonenumber missing %{mask.hash}@ on %@", buf, 0x20u);
        }

LABEL_40:

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v5);
  }

  v31 = [v46 emailAddresses];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v50;
    do
    {
      v35 = 0;
      do
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v49 + 1) + 8 * v35);
        v37 = [v36 value];

        if (v37)
        {
          v38 = [v36 value];
          v39 = IDSCopyIDForEmailAddress();

          if (qword_10039CC68 != -1)
          {
            sub_10025E620();
          }

          v40 = qword_10039CC70;
          if (os_log_type_enabled(qword_10039CC70, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
            v42 = [v36 value];
            *buf = 141558786;
            v59 = 1752392040;
            v60 = 2112;
            v61 = v42;
            v62 = 2160;
            v63 = 1752392040;
            v64 = 2112;
            v65 = v39;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "mapContactsToIDS adding email %{mask.hash}@ as %{mask.hash}@", buf, 0x2Au);
          }

          if (v39)
          {
            [v47 addObject:v39];
          }
        }

        else
        {
          if (qword_10039CC68 != -1)
          {
            sub_10025E648();
          }

          v43 = qword_10039CC70;
          if (os_log_type_enabled(qword_10039CC70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 141558530;
            v59 = 1752392040;
            v60 = 2112;
            v61 = v36;
            v62 = 2112;
            v63 = v46;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "mapContactsToIDS phonenumber missing %{mask.hash}@ on %@", buf, 0x20u);
          }
        }

        v35 = v35 + 1;
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v33);
  }

  return v47;
}

@end