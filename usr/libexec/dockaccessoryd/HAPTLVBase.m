@interface HAPTLVBase
- (BOOL)_parseFields:(id)a3;
- (BOOL)_parseMandatory:(id)a3 optional:(id)a4;
- (HAPTLVBase)initWithTLVData:(id)a3;
- (id)_parseArray:(id)a3 result:(id *)a4 objectCreator:(id)a5;
@end

@implementation HAPTLVBase

- (HAPTLVBase)initWithTLVData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HAPTLVBase;
  v6 = [(HAPTLVBase *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_tlvDatablob, a3), ![(HAPTLVBase *)v7 _parseFromTLVData]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (BOOL)_parseFields:(id)a3
{
  v4 = a3;
  v48 = self;
  v5 = [(HAPTLVBase *)self tlvDatablob];
  v6 = [HAPTLVParser parserWithData:v5];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = v4;
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
            v18 = [v14 name];
            v19 = [v14 tlvid];
            v20 = [(HAPTLVBase *)v48 tlvDatablob];
            *buf = 138544130;
            v57 = v17;
            v58 = 2112;
            v59 = v18;
            v60 = 2048;
            v61 = v19;
            v62 = 2112;
            v63 = v20;
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
              v22 = [v14 name];
              v23 = [v14 tlvid];
              v24 = [(HAPTLVBase *)v48 tlvDatablob];
              *buf = 138544130;
              v57 = v21;
              v58 = 2112;
              v59 = v22;
              v60 = 2048;
              v61 = v23;
              v62 = 2112;
              v63 = v24;
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
                v22 = [v14 name];
                v27 = [v14 tlvid];
                v24 = [(HAPTLVBase *)v48 tlvDatablob];
                *buf = 138544130;
                v57 = v21;
                v58 = 2112;
                v59 = v22;
                v60 = 2048;
                v61 = v27;
                v62 = 2112;
                v63 = v24;
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
                  v22 = [v14 name];
                  v28 = [v14 tlvid];
                  v24 = [(HAPTLVBase *)v48 tlvDatablob];
                  *buf = 138544130;
                  v57 = v21;
                  v58 = 2112;
                  v59 = v22;
                  v60 = 2048;
                  v61 = v28;
                  v62 = 2112;
                  v63 = v24;
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
                    v22 = [v14 name];
                    v36 = [v14 tlvid];
                    v24 = [(HAPTLVBase *)v48 tlvDatablob];
                    *buf = 138544130;
                    v57 = v21;
                    v58 = 2112;
                    v59 = v22;
                    v60 = 2048;
                    v61 = v36;
                    v62 = 2112;
                    v63 = v24;
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
                    v31 = [v29 objectCreator];

                    if (v31)
                    {
                      v51 = v15;
                      v32 = [v29 objectCreator];
                      v33 = [(HAPTLVBase *)v48 _parseArray:v15 result:&v51 objectCreator:v32];
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
                          v43 = [v29 name];
                          v47 = [v29 tlvid];
                          v44 = [(HAPTLVBase *)v48 tlvDatablob];
                          *buf = 138544130;
                          v57 = v42;
                          v58 = 2112;
                          v59 = v43;
                          v60 = 2048;
                          v61 = v47;
                          v62 = 2112;
                          v63 = v44;
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
                      v38 = [v29 name];
                      v39 = [v29 tlvid];
                      v40 = [(HAPTLVBase *)v48 tlvDatablob];
                      *buf = 138544130;
                      v57 = v37;
                      v58 = 2112;
                      v59 = v38;
                      v60 = 2048;
                      v61 = v39;
                      v62 = 2112;
                      v63 = v40;
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
                    v22 = [v14 name];
                    v35 = [v14 tlvid];
                    v24 = [(HAPTLVBase *)v48 tlvDatablob];
                    *buf = 138544130;
                    v57 = v21;
                    v58 = 2112;
                    v59 = v22;
                    v60 = 2048;
                    v61 = v35;
                    v62 = 2112;
                    v63 = v24;
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

- (BOOL)_parseMandatory:(id)a3 optional:(id)a4
{
  v6 = a4;
  LOBYTE(a3) = [(HAPTLVBase *)self _parseFields:a3];
  [(HAPTLVBase *)self _parseFields:v6];

  return a3;
}

- (id)_parseArray:(id)a3 result:(id *)a4 objectCreator:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
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

      v14 = v7[2](v7, *(*(&v18 + 1) + 8 * v13));
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