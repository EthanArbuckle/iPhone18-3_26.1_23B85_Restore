@interface HAPTLVBase
- (BOOL)_parseFields:(id)fields;
- (BOOL)_parseMandatory:(id)mandatory optional:(id)optional;
- (HAPTLVBase)initWithTLVData:(id)data;
- (id)_parseArray:(id)array result:(id *)result objectCreator:(id)creator;
@end

@implementation HAPTLVBase

- (HAPTLVBase)initWithTLVData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = HAPTLVBase;
  v6 = [(HAPTLVBase *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_tlvDatablob, data), ![(HAPTLVBase *)v7 _parseFromTLVData]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (BOOL)_parseFields:(id)fields
{
  fieldsCopy = fields;
  selfCopy = self;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  v6 = [HAPTLVParser parserWithData:tlvDatablob];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = fieldsCopy;
  v8 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (!v8)
  {
    v10 = 1;
    goto LABEL_52;
  }

  v9 = v8;
  v10 = 1;
  v11 = *v53;
  v49 = v6;
  v50 = v7;
  do
  {
    v12 = 0;
    do
    {
      if (*v53 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v52 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        v15 = [v6 parseResponseForNumber:{objc_msgSend(v14, "tlvid")}];
        if (!v15)
        {
          v16 = sub_10007FAA0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = sub_10007FAFC(0);
            name = [v14 name];
            tlvid = [v14 tlvid];
            tlvDatablob2 = [(HAPTLVBase *)selfCopy tlvDatablob];
            *buf = 138544130;
            v57 = v17;
            v58 = 2112;
            v59 = name;
            v60 = 2048;
            v61 = tlvid;
            v62 = 2112;
            v63 = tlvDatablob2;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse number for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

            v6 = v49;
            v7 = v50;
          }

          goto LABEL_37;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v6 parseResponseForUInt8:{objc_msgSend(v14, "tlvid")}];
          if (!v15)
          {
            v16 = sub_10007FAA0();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v21 = sub_10007FAFC(0);
              name2 = [v14 name];
              tlvid2 = [v14 tlvid];
              tlvDatablob3 = [(HAPTLVBase *)selfCopy tlvDatablob];
              *buf = 138544130;
              v57 = v21;
              v58 = 2112;
              v59 = name2;
              v60 = 2048;
              v61 = tlvid2;
              v62 = 2112;
              v63 = tlvDatablob3;
              v25 = v16;
              v26 = "%{public}@Failed to parse uint8 for tlv: %@ with ID: %tu (%@)";
              goto LABEL_36;
            }

            goto LABEL_37;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            v15 = [v6 parseResponseForUInt16:{objc_msgSend(v14, "tlvid")}];
            if (!v15)
            {
              v16 = sub_10007FAA0();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v21 = sub_10007FAFC(0);
                name2 = [v14 name];
                tlvid3 = [v14 tlvid];
                tlvDatablob3 = [(HAPTLVBase *)selfCopy tlvDatablob];
                *buf = 138544130;
                v57 = v21;
                v58 = 2112;
                v59 = name2;
                v60 = 2048;
                v61 = tlvid3;
                v62 = 2112;
                v63 = tlvDatablob3;
                v25 = v16;
                v26 = "%{public}@Failed to parse uint16 for tlv: %@ with ID: %tu (%@)";
                goto LABEL_36;
              }

              goto LABEL_37;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
              v15 = [v6 parseResponseForString:{objc_msgSend(v14, "tlvid")}];
              if (!v15)
              {
                v16 = sub_10007FAA0();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v21 = sub_10007FAFC(0);
                  name2 = [v14 name];
                  tlvid4 = [v14 tlvid];
                  tlvDatablob3 = [(HAPTLVBase *)selfCopy tlvDatablob];
                  *buf = 138544130;
                  v57 = v21;
                  v58 = 2112;
                  v59 = name2;
                  v60 = 2048;
                  v61 = tlvid4;
                  v62 = 2112;
                  v63 = tlvDatablob3;
                  v25 = v16;
                  v26 = "%{public}@Failed to parse String for tlv: %@ with ID: %tu (%@)";
                  goto LABEL_36;
                }

                goto LABEL_37;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v13;
                v15 = [v6 parseResponseForData:{objc_msgSend(v14, "tlvid")}];
                if (!v15)
                {
                  v16 = sub_10007FAA0();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    v21 = sub_10007FAFC(0);
                    name2 = [v14 name];
                    tlvid5 = [v14 tlvid];
                    tlvDatablob3 = [(HAPTLVBase *)selfCopy tlvDatablob];
                    *buf = 138544130;
                    v57 = v21;
                    v58 = 2112;
                    v59 = name2;
                    v60 = 2048;
                    v61 = tlvid5;
                    v62 = 2112;
                    v63 = tlvDatablob3;
                    v25 = v16;
                    v26 = "%{public}@Failed to parse Data for tlv: %@ with ID: %tu (%@)";
LABEL_36:
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 0x2Au);

                    v7 = v50;
                    v6 = v49;
                  }

                  goto LABEL_37;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v29 = v13;
                  v30 = [v6 parseResponseForArray:{objc_msgSend(v29, "tlvid")}];
                  if (v30)
                  {
                    v15 = v30;
                    objectCreator = [v29 objectCreator];

                    if (objectCreator)
                    {
                      v51 = v15;
                      objectCreator2 = [v29 objectCreator];
                      v33 = [(HAPTLVBase *)selfCopy _parseArray:v15 result:&v51 objectCreator:objectCreator2];
                      v34 = v51;

                      if (v33)
                      {
                        [v29 setField:v33];
                      }

                      else
                      {
                        v41 = sub_10007FAA0();
                        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                        {
                          v42 = sub_10007FAFC(0);
                          name3 = [v29 name];
                          tlvid6 = [v29 tlvid];
                          tlvDatablob4 = [(HAPTLVBase *)selfCopy tlvDatablob];
                          *buf = 138544130;
                          v57 = v42;
                          v58 = 2112;
                          v59 = name3;
                          v60 = 2048;
                          v61 = tlvid6;
                          v62 = 2112;
                          v63 = tlvDatablob4;
                          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to construct array for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);
                        }

                        v10 = 0;
                      }

                      v6 = v49;

                      v15 = v34;
                      v7 = v50;
                    }

                    else
                    {
                      [v29 setField:v15];
                      v6 = v49;
                      v7 = v50;
                    }
                  }

                  else
                  {
                    v15 = sub_10007FAA0();
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                    {
                      v37 = sub_10007FAFC(0);
                      name4 = [v29 name];
                      tlvid7 = [v29 tlvid];
                      tlvDatablob5 = [(HAPTLVBase *)selfCopy tlvDatablob];
                      *buf = 138544130;
                      v57 = v37;
                      v58 = 2112;
                      v59 = name4;
                      v60 = 2048;
                      v61 = tlvid7;
                      v62 = 2112;
                      v63 = tlvDatablob5;
                      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse Array for tlv: %@ with ID: %tu (%@)", buf, 0x2Au);

                      v6 = v49;
                    }

                    v10 = 0;
                    v7 = v50;
                  }

                  goto LABEL_38;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_39;
                }

                v14 = v13;
                v15 = [v6 parseResponseForUUID:{objc_msgSend(v14, "tlvid")}];
                if (!v15)
                {
                  v16 = sub_10007FAA0();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    v21 = sub_10007FAFC(0);
                    name2 = [v14 name];
                    tlvid8 = [v14 tlvid];
                    tlvDatablob3 = [(HAPTLVBase *)selfCopy tlvDatablob];
                    *buf = 138544130;
                    v57 = v21;
                    v58 = 2112;
                    v59 = name2;
                    v60 = 2048;
                    v61 = tlvid8;
                    v62 = 2112;
                    v63 = tlvDatablob3;
                    v25 = v16;
                    v26 = "%{public}@Failed to parse UUID for tlv: %@ with ID: %tu (%@)";
                    goto LABEL_36;
                  }

LABEL_37:

                  v10 = 0;
                  goto LABEL_38;
                }
              }
            }
          }
        }
      }

      [v14 setField:v15];
LABEL_38:

LABEL_39:
      v12 = v12 + 1;
    }

    while (v9 != v12);
    v45 = [v7 countByEnumeratingWithState:&v52 objects:v64 count:16];
    v9 = v45;
  }

  while (v45);
LABEL_52:

  return v10 & 1;
}

- (BOOL)_parseMandatory:(id)mandatory optional:(id)optional
{
  optionalCopy = optional;
  LOBYTE(mandatory) = [(HAPTLVBase *)self _parseFields:mandatory];
  [(HAPTLVBase *)self _parseFields:optionalCopy];

  return mandatory;
}

- (id)_parseArray:(id)array result:(id *)result objectCreator:(id)creator
{
  arrayCopy = array;
  creatorCopy = creator;
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [arrayCopy count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = arrayCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = creatorCopy[2](creatorCopy, *(*(&v18 + 1) + 8 * v13));
      if (!v14)
      {
        break;
      }

      v15 = v14;
      [v8 addObject:{v14, v18}];

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = [v8 copy];

  return v16;
}

@end