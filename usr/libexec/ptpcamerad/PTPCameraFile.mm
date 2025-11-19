@interface PTPCameraFile
- (BOOL)hasThumbnail;
- (BOOL)imageIOSupported;
- (BOOL)isAppleDevice;
- (BOOL)processMetadata:(id)a3;
- (BOOL)rawImageSupported;
- (PTPCameraFile)initWithObjectInfo:(id)a3 parent:(id)a4 initiator:(id)a5;
- (id)fingerprintWithError:(id *)a3;
- (id)imageValidateSubImage:(id)a3 error:(id *)a4;
- (id)subImageDictForPixelWidth:(id)a3;
- (int)imageHeight;
- (int)imageOrientation;
- (int)imageWidth;
- (int64_t)compare:(id)a3 against:(id)a4 withContext:(void *)a5;
- (int64_t)skipBytes:(int64_t)a3;
- (unint64_t)readStream:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
- (void)addSubImageDict:(id)a3;
- (void)fetchBasicMetadata;
- (void)fetchFullMetadata;
- (void)imageInspectMetadata;
- (void)imageScrapeAllocatedData:(char *)a3 length:(unint64_t)a4 bufferOffset:(unint64_t)a5;
- (void)metadataWithOptions:(id)a3 reply:(id)a4;
- (void)parseKeywords:(id)a3;
- (void)setSizeAndOrientationFromImageProperties:(id)a3;
- (void)thumbnailDataWithOptions:(id)a3 reply:(id)a4;
@end

@implementation PTPCameraFile

- (BOOL)hasThumbnail
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 hasThumbnail];

  return v3;
}

- (int)imageHeight
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 height];

  return v3;
}

- (int)imageWidth
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 width];

  return v3;
}

- (int)imageOrientation
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 orientation];

  return v3;
}

- (BOOL)isAppleDevice
{
  v2 = [(PTPCameraItem *)self initiator];
  v3 = [v2 deviceVendorID] == 1452;

  return v3;
}

- (int64_t)skipBytes:(int64_t)a3
{
  v5 = [(PTPCameraFile *)self dpOffset]+ a3;
  if (v5 <= [(PTPCameraItem *)self size])
  {
    v6 = [(PTPCameraFile *)self dpOffset]+ a3;
  }

  else
  {
    v6 = [(PTPCameraItem *)self size];
  }

  [(PTPCameraFile *)self setDpOffset:v6];

  return [(PTPCameraFile *)self dpOffset];
}

- (unint64_t)readStream:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5
{
  v9 = [(PTPCameraItem *)self initiator];
  v25 = 0;
  v10 = a5;
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(PTPCameraFile *)self dpOffset];
  }

  if (v10 + a4 > [(PTPCameraItem *)self size])
  {
    a4 = [(PTPCameraItem *)self size]- v10;
  }

  info = 0;
  mach_timebase_info(&info);
  dword_1000338CC = 0;
  *&dword_1000338CC = mach_absolute_time();
  v11 = [v9 partialDataFromFile:self fromOffset:v10 maxSize:a4 actualSize:&v25 useBuffer:a3];
  v12 = v25;
  if (a5 == 0x7FFFFFFFFFFFFFFFLL && v25)
  {
    [(PTPCameraFile *)self setDpOffset:v25 + v10];
  }

  v13 = (((mach_absolute_time() - *&dword_1000338CC) * info.numer) / info.denom) / 1000000.0;
  __ICOSLogCreate();
  v14 = @"readStream";
  if ([@"readStream" length] >= 0x15)
  {
    v15 = [@"readStream" substringWithRange:{0, 18}];
    v14 = [v15 stringByAppendingString:@".."];
  }

  if (v13 <= 300.0)
  {
    v16 = @"{𝚫}";
  }

  else
  {
    v16 = @"{⊗}";
  }

  v17 = [NSString stringWithFormat:@"(requested):%lu @ (offset):%llu (bytes read):%u", a4, v10, v12];
  v18 = [NSString stringWithFormat:@"%@:[%5.0f ms]:%@", v16, v13, v17];

  v19 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v14;
    v21 = v19;
    v22 = [(__CFString *)v14 UTF8String];
    *buf = 136446466;
    v27 = v22;
    v28 = 2114;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  dword_1000338C8 = LODWORD(v13);
  return v12;
}

- (PTPCameraFile)initWithObjectInfo:(id)a3 parent:(id)a4 initiator:(id)a5
{
  v8 = a3;
  v9 = a5;
  v28.receiver = self;
  v28.super_class = PTPCameraFile;
  v10 = [(PTPCameraItem *)&v28 initWithObjectInfo:v8 parent:a4 initiator:v9];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_18;
  }

  v12 = [(PTPCameraItem *)v10 name];
  v13 = [v12 pathExtension];
  v14 = [v13 lowercaseString];

  -[PTPCameraFile setImageWidth:](v11, "setImageWidth:", [v8 imagePixWidth]);
  -[PTPCameraFile setImageHeight:](v11, "setImageHeight:", [v8 imagePixHeight]);
  if (v14)
  {
    v15 = [PTPCameraItem UTTypeWithFilenameExtension:v14];
  }

  else
  {
    v15 = 0;
  }

  if (![(PTPCameraFile *)v11 rawImageSupported]&& ![(PTPCameraFile *)v11 imageIOSupported])
  {
    if (!v15)
    {
      goto LABEL_21;
    }

    if ([v15 conformsToType:UTTypeMovie])
    {
      v16 = UTTypeMovie;
      goto LABEL_8;
    }

    if ([v15 conformsToType:UTTypeAudio])
    {
      v24 = UTTypeAudio;
    }

    else
    {
LABEL_21:
      v24 = UTTypeData;
    }

    v25 = [(UTType *)v24 identifier];
    [(PTPCameraFile *)v11 setUTI:v25];

    goto LABEL_9;
  }

  v16 = UTTypeImage;
LABEL_8:
  v17 = [(UTType *)v16 identifier];
  [(PTPCameraFile *)v11 setUTI:v17];

  [(PTPCameraFile *)v11 setHasThumbnail:1];
LABEL_9:
  v18 = +[NSMutableDictionary dictionary];
  [(PTPCameraFile *)v11 setSubImages:v18];

  if (![(PTPCameraFile *)v11 isAppleDevice])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100016C98;
    v26[3] = &unk_10002C950;
    v27 = v11;
    v19 = objc_retainBlock(v26);
    if ([v9 prioritizeSpeed])
    {
      v20 = [v9 delegate];
      v21 = [NSBlockOperation blockOperationWithBlock:v19];
      [v20 addInitiatedOperation:v21];
    }

    else
    {
      (v19[2])(v19);
    }
  }

  v22 = [v8 keywords];
  [(PTPCameraFile *)v11 parseKeywords:v22];

LABEL_18:
  return v11;
}

- (void)fetchBasicMetadata
{
  if (![(PTPCameraFile *)self updatedBasicMetadata]&& ![(PTPCameraFile *)self isAppleDevice])
  {
    v3 = [(PTPCameraItem *)self initiator];
    v4 = [v3 deviceInfo];
    v5 = [(PTPCameraFile *)self UTI];
    v6 = [UTTypeImage identifier];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = [(PTPCameraItem *)self initiator];
      v9 = [v8 mtpProperties];
      v10 = [NSNumber numberWithUnsignedInt:[(PTPCameraItem *)self objectFormat]];
      v11 = [v9 objectForKeyedSubscript:v10];
      v12 = [v11 containsObject:&off_10002F4C8];

      if (!v12)
      {
        if (v4)
        {
          v13 = [v4 operationsSupported];
          v14 = [NSNumber numberWithUnsignedShort:4123];
          v15 = [v13 containsObject:v14];

          if (v15)
          {
            if ([(PTPCameraItem *)self size]<= 0x80000)
            {
              v16 = [(PTPCameraItem *)self size];
            }

            else
            {
              v16 = 0x80000;
            }

            v24 = [(PTPCameraFile *)self rawImageSupported];
            v25 = v16 + 12;
            if (v16 < -12)
            {
              v25 = v16 + 16395;
            }

            v26 = v25 & 0xFFFFFFFFFFFFC000;
            if (v24)
            {
              info = 0;
              mach_timebase_info(&info);
              v27 = mach_absolute_time();
              v28 = +[NSMutableDictionary dictionary];
              v29 = malloc_type_malloc(v26 + 0x4000, 0x78F8B2F3uLL);
              v30 = CGDataProviderCreateWithData(0, v29 + 12, [(PTPCameraFile *)self readStream:v29 size:v16 offset:0], 0);
              if (v30)
              {
                v31 = v30;
                v32 = CGImageSourceCreateWithDataProvider(v30, 0);
                v33 = CGImageSourceCopyProperties(v32, 0);
                v34 = v33;
                if (v33)
                {
                  v35 = [(__CFDictionary *)v33 objectForKeyedSubscript:@"{raw}"];
                  v96 = [v35 objectForKeyedSubscript:@"Thumbnails"];

                  v36 = [(__CFDictionary *)v34 objectForKeyedSubscript:@"{raw}"];
                  v97 = [v36 objectForKeyedSubscript:@"CropSize"];

                  v37 = [(__CFDictionary *)v34 objectForKeyedSubscript:@"{raw}"];
                  v38 = [v37 objectForKeyedSubscript:@"Orientation"];

                  if (![(PTPCameraFile *)self imageWidth]&& ![(PTPCameraFile *)self imageWidth]&& v97)
                  {
                    v39 = [v97 objectForKeyedSubscript:@"Height"];
                    -[PTPCameraFile setImageHeight:](self, "setImageHeight:", [v39 intValue]);

                    [v97 objectForKeyedSubscript:@"Width"];
                    v41 = v40 = v32;
                    -[PTPCameraFile setImageWidth:](self, "setImageWidth:", [v41 intValue]);

                    v32 = v40;
                    v42 = [v97 objectForKeyedSubscript:@"Width"];
                    [v28 setObject:v42 forKeyedSubscript:@"PixelWidth"];

                    v43 = [v97 objectForKeyedSubscript:@"Height"];
                    [v28 setObject:v43 forKeyedSubscript:@"PixelHeight"];
                  }

                  v44 = v96;
                  if (![(PTPCameraFile *)self imageOrientation])
                  {
                    if (v38)
                    {
                      -[PTPCameraFile setImageOrientation:](self, "setImageOrientation:", [v38 intValue]);
                      [v28 setObject:v38 forKeyedSubscript:@"Orientation"];
                    }

                    else if (v96)
                    {
                      v95 = v28;
                      v93 = v32;
                      v94 = v34;
                      v101 = 0u;
                      v102 = 0u;
                      v99 = 0u;
                      v100 = 0u;
                      obj = v96;
                      v68 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
                      if (v68)
                      {
                        v69 = v68;
                        v70 = *v100;
                        while (2)
                        {
                          for (i = 0; i != v69; i = i + 1)
                          {
                            if (*v100 != v70)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v72 = *(*(&v99 + 1) + 8 * i);
                            if (![(PTPCameraFile *)self imageOrientation])
                            {
                              v73 = [v72 objectForKeyedSubscript:@"Orientation"];

                              if (v73)
                              {
                                v74 = [v72 objectForKeyedSubscript:@"Orientation"];
                                -[PTPCameraFile setImageOrientation:](self, "setImageOrientation:", [v74 intValue]);

                                v75 = [v72 objectForKeyedSubscript:@"Orientation"];
                                v28 = v95;
                                [v95 setObject:v75 forKeyedSubscript:kCGImagePropertyTIFFOrientation];

                                goto LABEL_59;
                              }
                            }
                          }

                          v69 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
                          if (v69)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v28 = v95;
LABEL_59:
                      v32 = v93;
                      v34 = v94;
                      v38 = 0;
                      v44 = v96;
                    }
                  }

                  [(PTPCameraFile *)self setSizeAndOrientationFromImageProperties:v28];
                }

                if (v32)
                {
                  CFRelease(v32);
                }

                CFRelease(v31);
              }

              free(v29);
              v76 = (((mach_absolute_time() - v27) * info.numer) / info.denom) / 1000000.0;
              __ICOSLogCreate();
              v77 = [(PTPCameraItem *)self name];
              if ([v77 length] >= 0x15)
              {
                v78 = [v77 substringWithRange:{0, 18}];
                v79 = [v78 stringByAppendingString:@".."];

                v77 = v79;
              }

              if (v76 <= 300.0)
              {
                v80 = @"{𝚫}";
              }

              else
              {
                v80 = @"{⊗}";
              }

              v81 = [NSString stringWithFormat:@"raw:fetchBasicMetadata"];
              v82 = [NSString stringWithFormat:@"%@:[%5.0f ms]:%@", v80, v76, v81];

              v83 = _gICOSLog;
              if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
              {
                v84 = v77;
                v85 = v83;
                v86 = [v77 UTF8String];
                *buf = 136446466;
                v108 = v86;
                v109 = 2114;
                v110 = v82;
                _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
              }
            }

            else
            {
              info = 0;
              mach_timebase_info(&info);
              v45 = mach_absolute_time();
              v46 = +[NSMutableDictionary dictionary];
              v47 = malloc_type_malloc(v26 + 0x4000, 0xF2EA4E55uLL);
              v48 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v47 + 12, [(PTPCameraFile *)self readStream:v47 size:v16 offset:0], kCFAllocatorNull);
              if (v48)
              {
                v49 = v48;
                v50 = CopyMetadataFromCFData();
                v51 = v50;
                if (v50)
                {
                  v52 = [v50 objectForKeyedSubscript:@"PixelYDimension"];
                  if (v52)
                  {
                    v53 = [v51 objectForKeyedSubscript:@"PixelXDimension"];
                    if (v53)
                    {
                      v54 = v53;
                      [v46 setObject:v53 forKeyedSubscript:@"PixelWidth"];
                      [v46 setObject:v52 forKeyedSubscript:@"PixelHeight"];
                    }
                  }

                  v55 = [v51 objectForKeyedSubscript:@"Orientation"];
                  if (v55)
                  {
                    [v46 setObject:v55 forKeyedSubscript:@"Orientation"];
                  }

                  [(PTPCameraFile *)self setSizeAndOrientationFromImageProperties:v46];
                  v56 = [v51 objectForKeyedSubscript:@"ThumbnailSize"];
                  -[PTPCameraFile setHasThumbnail:](self, "setHasThumbnail:", [v56 intValue] > 0);
                }

                CFRelease(v49);
              }

              free(v47);
              v57 = (((mach_absolute_time() - v45) * info.numer) / info.denom) / 1000000.0;
              __ICOSLogCreate();
              v58 = [(PTPCameraItem *)self name];
              if ([v58 length] >= 0x15)
              {
                v59 = [v58 substringWithRange:{0, 18}];
                v60 = [v59 stringByAppendingString:@".."];

                v58 = v60;
              }

              if (v57 <= 300.0)
              {
                v61 = @"{𝚫}";
              }

              else
              {
                v61 = @"{⊗}";
              }

              v62 = [NSString stringWithFormat:@"jpeg/heif:fetchBasicMetadata"];
              v63 = [NSString stringWithFormat:@"%@:[%5.0f ms]:%@", v61, v57, v62];

              v64 = _gICOSLog;
              if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
              {
                v65 = v58;
                v66 = v64;
                v67 = [v58 UTF8String];
                *buf = 136446466;
                v108 = v67;
                v109 = 2114;
                v110 = v63;
                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
              }
            }

            [(PTPCameraFile *)self setUpdatedBasicMetadata:1];
            v87 = [(PTPCameraItem *)self initiator];
            v88 = [v87 delegate];

            v105 = @"ICCameraItemProxyArray";
            v89 = [(PTPCameraItem *)self cameraItemProxy];
            v104 = v89;
            v90 = [NSArray arrayWithObjects:&v104 count:1];
            v106 = v90;
            v91 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];

            v92 = [v88 allConnections];
            [v88 sendUpdatedItemsNotification:v91 toConnections:v92];

            goto LABEL_15;
          }
        }

        __ICOSLogCreate();
        v17 = [(PTPCameraItem *)self name];
        if ([v17 length] >= 0x15)
        {
          v18 = [v17 substringWithRange:{0, 18}];
          v19 = [v18 stringByAppendingString:@".."];

          v17 = v19;
        }

        v20 = [NSString stringWithFormat:@"No Partial Object Support:fetchBasicMetadata"];
        v21 = _gICOSLog;
        if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v17;
          v23 = v21;
          *buf = 136446466;
          v108 = [v17 UTF8String];
          v109 = 2114;
          v110 = v20;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
        }
      }

      [(PTPCameraFile *)self setUpdatedBasicMetadata:1];
    }

LABEL_15:
  }
}

- (void)fetchFullMetadata
{
  if ([(PTPCameraFile *)self updatedExpensiveMetadata])
  {
    return;
  }

  v3 = [(PTPCameraItem *)self initiator];
  context = objc_autoreleasePoolPush();
  v4 = [v3 deviceInfo];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 operationsSupported];
    v7 = [NSNumber numberWithUnsignedShort:36873];
    if ([v6 containsObject:v7])
    {
      v8 = [(PTPCameraFile *)self isAppleDevice];

      if (v8)
      {
        v9 = [v3 metadataFromFile:self];
        if (v9)
        {
          v10 = [NSKeyedUnarchiver icUnarchivedObjectFromData:v9 withKey:@"metadata"];
          v11 = [(PTPCameraItem *)self metadata];

          if (!v11)
          {
            v12 = +[NSMutableDictionary dictionary];
            [(PTPCameraItem *)self setMetadata:v12];
          }

          v13 = [(PTPCameraItem *)self metadata];
          [v13 addEntriesFromDictionary:v10];

          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v14 = [(PTPCameraItem *)self initiator];
  v15 = [v14 mtpProperties];
  v16 = [NSNumber numberWithUnsignedInt:[(PTPCameraItem *)self objectFormat]];
  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = [v17 containsObject:&off_10002F4C8];

  if (!v18)
  {
    if (v5)
    {
      v25 = [v5 operationsSupported];
      v26 = [NSNumber numberWithUnsignedShort:4123];
      if ([v25 containsObject:v26])
      {
        v27 = [(PTPCameraItem *)self metadata];

        if (!v27)
        {
          v28 = [(PTPCameraFile *)self UTI];
          v29 = [UTTypeImage identifier];
          v30 = [v28 isEqualToString:v29];

          if (v30)
          {
            if ([(PTPCameraFile *)self rawImageSupported]|| [(PTPCameraFile *)self imageIOSupported])
            {
              info = 0;
              mach_timebase_info(&info);
              dword_1000338CC = 0;
              *&dword_1000338CC = mach_absolute_time();
              [(PTPCameraFile *)self setHasThumbnail:1];
              [(PTPCameraFile *)self imageInspectMetadata];
              v31 = (((mach_absolute_time() - *&dword_1000338CC) * info.numer) / info.denom) / 1000000.0;
              __ICOSLogCreate();
              v32 = [(PTPCameraItem *)self name];
              if ([v32 length] >= 0x15)
              {
                v33 = [v32 substringWithRange:{0, 18}];
                v34 = [v33 stringByAppendingString:@".."];

                v32 = v34;
              }

              if (v31 <= 300.0)
              {
                v35 = @"{𝚫}";
              }

              else
              {
                v35 = @"{⊗}";
              }

              v36 = [NSString stringWithFormat:@"image:fetchFullMetadata"];
              v37 = [NSString stringWithFormat:@"%@:[%5.0f ms]:%@", v35, v31, v36];

              v38 = _gICOSLog;
              if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
              {
                v39 = v32;
                v40 = v38;
                v41 = [v32 UTF8String];
                *buf = 136446466;
                v78 = v41;
                v79 = 2114;
                v80 = v37;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
              }

              dword_1000338C8 = LODWORD(v31);
              goto LABEL_35;
            }

            [(PTPCameraFile *)self setThumbSize:1];
            v72 = [(PTPCameraFile *)self thumbSize]!= 0;
            v71 = self;
          }

          else
          {
            v69 = [(PTPCameraFile *)self UTI];
            v70 = [v69 isEqualToString:@"movie"];

            if (!v70)
            {
              goto LABEL_35;
            }

            v71 = self;
            v72 = 1;
          }

          [(PTPCameraFile *)v71 setHasThumbnail:v72];
          goto LABEL_35;
        }
      }

      else
      {
      }
    }

    __ICOSLogCreate();
    v42 = [(PTPCameraItem *)self name];
    if ([v42 length] >= 0x15)
    {
      v43 = [v42 substringWithRange:{0, 18}];
      v44 = [v43 stringByAppendingString:@".."];

      v42 = v44;
    }

    v45 = [NSString stringWithFormat:@"No Partial Object Support:fetchFullMetadata"];
    v46 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v42;
      v48 = v46;
      *buf = 136446466;
      v78 = [v42 UTF8String];
      v79 = 2114;
      v80 = v45;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [(PTPCameraFile *)self setUpdatedExpensiveMetadata:1];
    goto LABEL_35;
  }

  v19 = [(PTPCameraItem *)self initiator];
  v9 = [v19 mtpObjectRepMetadata:{-[PTPCameraItem objHandle](self, "objHandle")}];

  if (v9)
  {
    [(PTPCameraFile *)self processMetadata:v9];
    v20 = [(PTPCameraItem *)self initiator];
    v10 = [v20 delegate];

    v82 = @"ICCameraItemProxyArray";
    v21 = [(PTPCameraItem *)self cameraItemProxy];
    v81 = v21;
    v22 = [NSArray arrayWithObjects:&v81 count:1];
    v83 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];

    v24 = [v10 allConnections];
    [v10 sendUpdatedItemsNotification:v23 toConnections:v24];

LABEL_13:
  }

LABEL_14:

LABEL_35:
  v49 = [(PTPCameraItem *)self metadata];
  v50 = [v49 allKeys];
  v51 = [v50 count];

  if (!v51)
  {
    v52 = [NSNumber numberWithUnsignedInt:[(PTPCameraFile *)self imageWidth]];
    v53 = [NSNumber numberWithUnsignedInt:[(PTPCameraFile *)self imageHeight]];
    v54 = [(PTPCameraItem *)self ptpCaptureDate];
    v55 = sub_1000152E8(v54);

    v56 = [(PTPCameraItem *)self metadata];
    [v56 setObject:v53 forKey:kCGImagePropertyPixelHeight];

    v57 = [(PTPCameraItem *)self metadata];
    [v57 setObject:v52 forKey:kCGImagePropertyPixelWidth];

    v58 = [(PTPCameraItem *)self metadata];
    v59 = [NSNumber numberWithUnsignedInt:[(PTPCameraFile *)self imageBitDepth]];
    [v58 setObject:v59 forKey:kCGImagePropertyDepth];

    v60 = [(PTPCameraItem *)self metadata];
    [(PTPCameraItem *)self ptpModificationDate];
    v61 = v73 = v5;
    sub_1000152E8(v61);
    v62 = v74 = v3;
    v63 = [NSDictionary dictionaryWithObjectsAndKeys:v62, kCGImagePropertyExifDateTimeDigitized, v55, kCGImagePropertyExifDateTimeOriginal, v52, kCGImagePropertyExifPixelXDimension, v53, kCGImagePropertyExifPixelYDimension, 0];
    [v60 setObject:v63 forKey:kCGImagePropertyExifDictionary];

    v64 = [(PTPCameraItem *)self metadata];
    v65 = [NSNumber numberWithUnsignedInt:2];
    v66 = [NSNumber numberWithUnsignedInt:72];
    v67 = [NSNumber numberWithUnsignedInt:72];
    v68 = [NSDictionary dictionaryWithObjectsAndKeys:v55, kCGImagePropertyTIFFDateTime, v65, kCGImagePropertyTIFFResolutionUnit, v66, kCGImagePropertyTIFFXResolution, v67, kCGImagePropertyTIFFYResolution, 0];
    [v64 setObject:v68 forKey:kCGImagePropertyTIFFDictionary];

    v3 = v74;
    v5 = v73;
  }

  objc_autoreleasePoolPop(context);
  [(PTPCameraFile *)self setUpdatedExpensiveMetadata:1];
}

- (void)thumbnailDataWithOptions:(id)a3 reply:(id)a4
{
  v15 = a4;
  v6 = [a3 objectForKeyedSubscript:@"kCGImageSourceThumbnailMaxPixelSize"];
  v7 = -[PTPCameraFile thumbnailForPixelWidth:](self, "thumbnailForPixelWidth:", [v6 intValue]);
  v8 = +[NSMutableDictionary dictionary];
  [(PTPCameraFile *)self fetchFullMetadata];
  v9 = [(PTPCameraItem *)self metadata];

  if (v9)
  {
    v10 = [(PTPCameraItem *)self metadata];
    [v8 setObject:v10 forKeyedSubscript:@"metadata"];
  }

  if ([(PTPCameraFile *)self imageOrientation]&& ([NSNumber numberWithInt:[(PTPCameraFile *)self imageOrientation]], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = kCGImagePropertyOrientation;
  }

  else
  {
    v14 = [(PTPCameraItem *)self metadata];
    v13 = kCGImagePropertyOrientation;
    v12 = [v14 objectForKey:kCGImagePropertyOrientation];

    if (!v12)
    {
      goto LABEL_8;
    }
  }

  [v8 setObject:v12 forKey:v13];

LABEL_8:
  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:@"thumb"];
  }

  v15[2](v15, v8);
}

- (void)metadataWithOptions:(id)a3 reply:(id)a4
{
  v5 = a4;
  [(PTPCameraFile *)self fetchFullMetadata];
  v6 = [(PTPCameraItem *)self metadata];
  v5[2](v5, v6);
}

- (BOOL)imageIOSupported
{
  if (qword_1000338B8 != -1)
  {
    sub_10001D338();
  }

  v3 = [(PTPCameraItem *)self name];
  v4 = [v3 pathExtension];
  v5 = [v4 lowercaseString];

  LOBYTE(v3) = [qword_1000338D0 containsObject:v5];
  return v3;
}

- (BOOL)rawImageSupported
{
  if (qword_1000338C0 != -1)
  {
    sub_10001D34C();
  }

  v3 = [(PTPCameraItem *)self name];
  v4 = [v3 pathExtension];
  v5 = [v4 lowercaseString];

  LOBYTE(v3) = [qword_1000338D8 containsObject:v5];
  return v3;
}

- (void)setSizeAndOrientationFromImageProperties:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_1000153C0(v4, &v21, &v20, &v19);
  v6 = v21;
  v7 = v20;
  v8 = v19;
  v9 = [v6 intValue];
  if (v9 != [(PTPCameraFile *)self imageOrientation])
  {
    -[PTPCameraFile setImageOrientation:](self, "setImageOrientation:", [v6 intValue]);
    [v5 setObject:v6 forKeyedSubscript:@"ICOrientation"];
    if ([(PTPCameraFile *)self imageOrientation]>= 5)
    {
      -[PTPCameraFile setImageWidth:](self, "setImageWidth:", [v8 intValue]);
      [v5 setObject:v8 forKeyedSubscript:@"ICWidth"];
      -[PTPCameraFile setImageHeight:](self, "setImageHeight:", [v7 intValue]);
      [v5 setObject:v7 forKeyedSubscript:@"ICHeight"];
      [v4 setObject:v7 forKeyedSubscript:@"PixelHeight"];
      [v4 setObject:v8 forKeyedSubscript:@"PixelWidth"];
      [v4 setObject:v7 forKeyedSubscript:@"PixelYDimension"];
      [v4 setObject:v8 forKeyedSubscript:@"PixelXDimension"];
    }
  }

  v10 = [NSString stringWithFormat:@"%@", v6];
  v11 = [(PTPCameraItem *)self cameraItemProxy];
  v12 = [v11 keywords];
  [v12 setObject:v10 forKeyedSubscript:@"Orientation"];

  if ([v5 count])
  {
    v13 = [(PTPCameraItem *)self initiator];
    v14 = [v13 delegate];

    v24 = @"ICObjectInfoUpdate";
    v15 = [NSNumber numberWithUnsignedInt:[(PTPCameraItem *)self objHandle]];
    v22 = v15;
    v23 = v5;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v18 = [v14 allConnections];
    [v14 sendUpdatedItemsNotification:v17 toConnections:v18];
  }
}

- (BOOL)processMetadata:(id)a3
{
  v4 = a3;
  if (![(PTPCameraFile *)self updatedExpensiveMetadata])
  {
    v6 = +[NSMutableDictionary dictionary];
    if (!v4)
    {
      v5 = 0;
LABEL_79:

      goto LABEL_80;
    }

    v7 = [v4 objectForKeyedSubscript:kCGImagePropertyExifDictionary];
    v8 = [v4 objectForKeyedSubscript:kCGImagePropertyTIFFDictionary];
    if (!v7)
    {
      v5 = 0;
LABEL_78:

      goto LABEL_79;
    }

    [v6 setObject:v7 forKeyedSubscript:kCGImagePropertyExifDictionary];
    if ([(PTPCameraFile *)self imageHeight])
    {
      v9 = [NSNumber numberWithInt:[(PTPCameraFile *)self imageHeight]];
    }

    else
    {
      v9 = 0;
    }

    if ([(PTPCameraFile *)self imageWidth])
    {
      v10 = [NSNumber numberWithInt:[(PTPCameraFile *)self imageWidth]];
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
      if (v9)
      {
LABEL_13:
        if (!v10)
        {
          v10 = [v7 objectForKeyedSubscript:kCGImagePropertyExifPixelXDimension];
        }

        if (v9)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        v5 = !v11;
        if (v11)
        {
          __ICOSLogCreate();
          v21 = [(PTPCameraItem *)self name];
          if ([v21 length] >= 0x15)
          {
            v22 = [v21 substringWithRange:{0, 18}];
            [v22 stringByAppendingString:@".."];
            v24 = v23 = v8;

            v21 = v24;
            v8 = v23;
          }

          v25 = [NSString stringWithFormat:@"Missing Metadata"];
          v26 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v21;
            v28 = v26;
            *buf = 136446466;
            v54 = [v21 UTF8String];
            v55 = 2114;
            v56 = v25;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          goto LABEL_77;
        }

        [v6 setObject:v9 forKeyedSubscript:kCGImagePropertyPixelHeight];
        [v6 setObject:v10 forKeyedSubscript:kCGImagePropertyPixelWidth];
        v51 = v9;
        [v6 setObject:v9 forKeyedSubscript:kCGImagePropertyExifPixelYDimension];
        [v6 setObject:v10 forKeyedSubscript:kCGImagePropertyExifPixelXDimension];
        v12 = [v7 objectForKeyedSubscript:kCGImagePropertyOrientation];
        if (!v12)
        {
          if (v8)
          {
            v29 = [v8 objectForKeyedSubscript:?];
            if (v29)
            {
              v13 = v29;
              v14 = v6;
              v15 = v13;
              v16 = kCGImagePropertyTIFFOrientation;
              goto LABEL_24;
            }
          }

          if (![(PTPCameraFile *)self imageOrientation])
          {
LABEL_25:
            v17 = [v7 objectForKeyedSubscript:kCGImagePropertyExifDateTimeOriginal];
            if (!v17)
            {
              if (v8)
              {
                v30 = [v8 objectForKeyedSubscript:kCGImagePropertyTIFFDateTime];
                if (v30)
                {
                  v18 = v30;
                  goto LABEL_27;
                }
              }

              v17 = [v7 objectForKeyedSubscript:kCGImagePropertyTIFFDateTime];
              if (!v17)
              {
LABEL_28:
                v19 = [v7 objectForKeyedSubscript:kCGImagePropertyExifDateTimeDigitized];
                if (v19)
                {
                  v20 = v19;
                  [(PTPCameraItem *)self setExifModificationDateTime:v19];
                }

                else
                {
                  if (v8)
                  {
                    v31 = [v8 objectForKeyedSubscript:kCGImagePropertyTIFFDateTime];
                    if (v31)
                    {
                      v20 = v31;
                      [(PTPCameraItem *)self setExifModificationDateTime:v31];
                      goto LABEL_48;
                    }
                  }

                  v20 = [v7 objectForKeyedSubscript:kCGImagePropertyTIFFDateTime];
                  if (v20)
                  {
                    [(PTPCameraItem *)self setExifCreationDateTime:v20];
                  }
                }

                if (!v8)
                {
LABEL_49:
                  v32 = [v7 objectForKeyedSubscript:kCGImagePropertyDepth];

                  if (v32)
                  {
                    [v6 setObject:v32 forKeyedSubscript:kCGImagePropertyDepth];
                  }

                  v50 = v32;
                  v52 = v8;
                  v33 = [v7 objectForKeyedSubscript:@"ThumbnailOffset"];
                  v34 = [v33 intValue];
                  if (v34)
                  {
                    v35 = v34;
                    v36 = [v7 objectForKeyedSubscript:@"ThumbnailSize"];
                    v37 = [v36 intValue];

                    if (v37)
                    {
                      [(PTPCameraFile *)self setThumbOffset:v35];
                      [(PTPCameraFile *)self setThumbSize:v37];
                      goto LABEL_65;
                    }
                  }

                  else
                  {
                  }

                  v38 = [v7 objectForKeyedSubscript:@"JPEGOffset"];
                  v39 = [v38 intValue];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = [v7 objectForKeyedSubscript:@"JPEGLength"];
                    v42 = [v41 intValue];

                    v8 = v52;
                    if (v42)
                    {
                      [(PTPCameraFile *)self setThumbOffset:v40];
                      [(PTPCameraFile *)self setThumbSize:v42];
                    }

                    goto LABEL_66;
                  }

LABEL_65:
                  v8 = v52;
LABEL_66:
                  [(PTPCameraFile *)self setSizeAndOrientationFromImageProperties:v6];
                  v43 = [(PTPCameraItem *)self exifModificationDateTime];
                  v44 = v43;
                  if (v43)
                  {
                    v45 = sub_10001525C(v43);
                    if (v45)
                    {
                      [(PTPCameraItem *)self setExifModificationDate:v45];
                    }
                  }

                  else
                  {
                    v45 = 0;
                  }

                  v46 = [(PTPCameraItem *)self exifCreationDateTime];

                  if (v46)
                  {
                    v47 = sub_10001525C(v46);

                    v48 = v50;
                    if (v47)
                    {
                      [(PTPCameraItem *)self setExifCreationDate:v47];
                      v45 = v47;
                    }

                    else
                    {
                      v45 = 0;
                    }

                    v8 = v52;
                  }

                  else
                  {
                    v48 = v50;
                  }

                  [(PTPCameraItem *)self setMetadata:v6];

                  v9 = v51;
LABEL_77:

                  goto LABEL_78;
                }

LABEL_48:
                [v6 setObject:v8 forKeyedSubscript:kCGImagePropertyTIFFDictionary];
                goto LABEL_49;
              }
            }

            v18 = v17;
LABEL_27:
            [(PTPCameraItem *)self setExifCreationDateTime:v18];

            goto LABEL_28;
          }

          v12 = [NSNumber numberWithInt:[(PTPCameraFile *)self imageOrientation]];
        }

        v13 = v12;
        v14 = v6;
        v15 = v13;
        v16 = kCGImagePropertyOrientation;
LABEL_24:
        [v14 setObject:v15 forKeyedSubscript:v16];

        goto LABEL_25;
      }
    }

    v9 = [v7 objectForKeyedSubscript:kCGImagePropertyExifPixelYDimension];
    goto LABEL_13;
  }

  v5 = 1;
LABEL_80:

  return v5;
}

- (void)imageInspectMetadata
{
  v3 = [(PTPCameraItem *)self size];
  v75 = self;
  v4 = [(PTPCameraItem *)self name];
  v5 = [v4 pathExtension];

  v64 = v5;
  TypeWithExtension = CGImageSourceGetTypeWithExtension();
  info = 0;
  mach_timebase_info(&info);
  dword_1000338CC = 0;
  *&dword_1000338CC = mach_absolute_time();
  if (TypeWithExtension)
  {
    v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{TypeWithExtension, kCGImageSourceTypeIdentifierHint, 0}];
  }

  else
  {
    v7 = 0;
  }

  options = v7;
  Incremental = CGImageSourceCreateIncremental(v7);
  v9 = v3;
  v10 = v3 * 0.3;
  if (v10 > 1048576.0)
  {
    v10 = 1048576.0;
  }

  v11 = v10;
  v76 = +[NSMutableIndexSet indexSet];
  v12 = v75;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v66 = v11;
    v67 = Incremental;
    while (![(PTPCameraFile *)v12 smallThumbnail]|| ![(PTPCameraFile *)v12 previewThumbnail])
    {
      v16 = v11 - v13 >= 0x100000 ? 0x100000 : v11 - v13;
      v14 = CFAllocatorReallocateTyped();
      v17 = malloc_type_malloc(((v16 + 12) & 0x3FC000) + 0x4000, 0x9F7AEE66uLL);
      v18 = [(PTPCameraFile *)v12 readStream:v17 size:v16 offset:v13];
      if (!v18)
      {
        break;
      }

      v19 = v18;
      memcpy(&v14[v13], v17 + 12, v18);
      free(v17);
      v20 = CFDataCreateWithBytesNoCopy(0, v14, v16 + v13, kCFAllocatorNull);
      v74 = v19;
      CGImageSourceUpdateData(Incremental, v20, v19 < 0x100000);
      v21 = CGImageSourceCopyProperties(Incremental, 0);

      if (v21)
      {
        v22 = [(__CFDictionary *)v21 objectForKeyedSubscript:@"{raw}"];
        v73 = [v22 objectForKeyedSubscript:@"Thumbnails"];

        v23 = [(__CFDictionary *)v21 objectForKeyedSubscript:@"{raw}"];
        v24 = [v23 objectForKeyedSubscript:@"CropSize"];

        v72 = v24;
        if (![(PTPCameraFile *)v12 imageHeight]&& ![(PTPCameraFile *)v12 imageWidth]&& v24)
        {
          v25 = [v24 objectForKeyedSubscript:@"Height"];
          -[PTPCameraFile setImageHeight:](v12, "setImageHeight:", [v25 intValue]);

          v26 = [v24 objectForKeyedSubscript:@"Width"];
          -[PTPCameraFile setImageWidth:](v12, "setImageWidth:", [v26 intValue]);

          v27 = [(__CFDictionary *)v21 objectForKeyedSubscript:@"{raw}"];
          [v27 objectForKeyedSubscript:@"Orientation"];
          v29 = v28 = v20;
          -[PTPCameraFile setImageOrientation:](v12, "setImageOrientation:", [v29 intValue]);

          v20 = v28;
        }

        v30 = v73;
        if (v73)
        {
          v68 = v20;
          v69 = v21;
          v70 = v13;
          v71 = v14;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v31 = v73;
          v32 = [v31 countByEnumeratingWithState:&v78 objects:v87 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v79;
            do
            {
              for (i = 0; i != v33; i = i + 1)
              {
                if (*v79 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v78 + 1) + 8 * i);
                v77 = 0;
                v37 = [(PTPCameraFile *)v12 imageValidateSubImage:v36 error:&v77];
                v38 = v77;
                if (v38)
                {
                  v39 = [v36 objectForKeyedSubscript:@"JPEGLength"];
                  v40 = [v39 intValue];

                  v41 = [v36 objectForKeyedSubscript:@"JPEGOffset"];
                  v42 = [v41 intValue];

                  v12 = v75;
                  v43 = v42;
                  if ([v76 containsIndex:v42])
                  {
                    v44 = 1;
                  }

                  else
                  {
                    v44 = v42 == 0;
                  }

                  if (!v44 && v40 != 0)
                  {
                    v46 = v40;
                    v47 = v40 + 12;
                    if (v40 < -12)
                    {
                      v47 = v40 + 16395;
                    }

                    v48 = malloc_type_malloc((v47 & 0xFFFFFFFFFFFFC000) + 0x4000, 0xB040B453uLL);
                    v49 = [(PTPCameraFile *)v75 readStream:v48 size:v46 offset:v43];
                    if (v49)
                    {
                      [(PTPCameraFile *)v75 imageScrapeAllocatedData:v48 + 12 length:v49 bufferOffset:v43];
                      [v76 addIndex:v43];
                    }

                    free(v48);
                  }
                }

                else
                {
                  [(PTPCameraFile *)v12 addSubImageDict:v37];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v78 objects:v87 count:16];
            }

            while (v33);
          }

          v13 = v70;
          v14 = v71;
          v11 = v66;
          Incremental = v67;
          v20 = v68;
          v21 = v69;
          v30 = v73;
        }
      }

      if (v20)
      {
        CFRelease(v20);
      }

      v13 += v74;
      v15 = v21;
      if (v13 >= v11)
      {
        goto LABEL_49;
      }
    }

    v21 = v15;
  }

  else
  {
    v21 = 0;
    v13 = 0;
    v14 = 0;
  }

LABEL_49:
  v50 = (((mach_absolute_time() - *&dword_1000338CC) * info.numer) / info.denom) / 1000000.0;
  __ICOSLogCreate();
  v51 = [(PTPCameraItem *)v12 name];
  if ([v51 length] >= 0x15)
  {
    v52 = [v51 substringWithRange:{0, 18}];
    v53 = [v52 stringByAppendingString:@".."];

    v51 = v53;
  }

  if (v50 <= 300.0)
  {
    v54 = @"{𝚫}";
  }

  else
  {
    v54 = @"{⊗}";
  }

  v55 = [NSString stringWithFormat:@"CGImageSourceCopyProperties %@ %3u%% [%5.2f MB]", @" ", (v13 / v9 * 100.0), v9 * 0.0009765625 * 0.0009765625];
  v56 = [NSString stringWithFormat:@"%@:[%5.0f ms]:%@", v54, v50, v55];

  v57 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v58 = v51;
    v59 = v57;
    v60 = [v51 UTF8String];
    *buf = 136446466;
    v84 = v60;
    v85 = 2114;
    v86 = v56;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  dword_1000338C8 = LODWORD(v50);
  if (Incremental)
  {
    CFRelease(Incremental);
  }

  if (v13)
  {
    [(PTPCameraFile *)v75 imageScrapeAllocatedData:v14 length:v13 bufferOffset:0];
    v61 = CFDataCreateWithBytesNoCopy(0, v14, v13, kCFAllocatorNull);
    v62 = CGImageSourceCreateWithData(v61, options);
    v63 = CGImageSourceCopyPropertiesAtIndex(v62, 0, options);
    if (v63)
    {
      [(PTPCameraFile *)v75 processMetadata:v63];
    }

    if (v62)
    {
      CFRelease(v62);
    }

    if (v61)
    {
      CFRelease(v61);
    }
  }

  if (v14)
  {
    free(v14);
  }
}

- (id)imageValidateSubImage:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v17 = 0;
    goto LABEL_29;
  }

  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"ImageWidth"];
    v10 = [v9 intValue];

    if (!v10)
    {
      v11 = @"PixelWidth";
      v12 = [v8 objectForKeyedSubscript:@"PixelWidth"];
      v10 = [v12 intValue];

      if (v10 || (v11 = @"Width", [v8 objectForKeyedSubscript:@"Width"], v13 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v13, "intValue"), v13, v10))
      {
        v14 = [v8 objectForKeyedSubscript:v11];
        [v8 setObject:v14 forKey:@"ImageWidth"];
      }
    }

    v15 = [v8 objectForKeyedSubscript:@"ImageHeight"];
    v16 = [v15 intValue];

    if (v16)
    {
      if (!v10)
      {
LABEL_18:
        if (a4)
        {
          [NSError errorWithDomain:@"com.apple.imagecapture" code:-2 userInfo:0];
          *a4 = v17 = 0;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v18 = @"PixelHeight";
      v19 = [v8 objectForKeyedSubscript:@"PixelHeight"];
      v20 = [v19 intValue];

      if (!v20)
      {
        v18 = @"Height";
        v21 = [v8 objectForKeyedSubscript:@"Height"];
        v22 = [v21 intValue];

        if (!v22)
        {
          goto LABEL_18;
        }
      }

      v23 = [v8 objectForKeyedSubscript:v18];
      [v8 setObject:v23 forKey:@"ImageHeight"];

      if (!v10)
      {
        goto LABEL_18;
      }
    }

    v24 = [v6 objectForKeyedSubscript:@"JPEGLength"];
    v25 = [v24 intValue];

    v26 = [v6 objectForKeyedSubscript:@"JPEGOffset"];
    v27 = [v26 intValue];

    if (v25 && v27)
    {
      if (v10 == 160)
      {
        [(PTPCameraFile *)self setThumbOffset:v27];
        [(PTPCameraFile *)self setThumbSize:v25];
        [(PTPCameraFile *)self setSmallThumbnail:1];
        [v8 setObject:@"smallThumbnail" forKeyedSubscript:@"imageType"];
      }

      else if (v10 < 1400)
      {
        if (v10 <= 1024)
        {
          [v8 setObject:@"ptpSubThumbnailImage" forKeyedSubscript:@"imageType"];
          [(PTPCameraFile *)self setSmallThumbnail:1];
        }
      }

      else
      {
        [v8 setObject:@"previewImage" forKeyedSubscript:@"imageType"];
        [(PTPCameraFile *)self setPreviewThumbnail:1];
      }
    }

    else if (a4)
    {
      *a4 = [NSError errorWithDomain:@"com.apple.imagecapture" code:-4 userInfo:0];
    }
  }

  v17 = v8;
LABEL_28:

LABEL_29:

  return v17;
}

- (void)imageScrapeAllocatedData:(char *)a3 length:(unint64_t)a4 bufferOffset:(unint64_t)a5
{
  info = 0;
  mach_timebase_info(&info);
  dword_1000338CC = 0;
  *&dword_1000338CC = mach_absolute_time();
  memset(v41, 0, sizeof(v41));
  v31 = a4;
  if (a4 != 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (a3[v9] == 255)
      {
        v10 = v9 + 1;
        v11 = a3[v9 + 1];
        if (v11 == 217)
        {
          if (v8 >= 1)
          {
            v34 = v8 - 1;
            v12 = *(v41 + (v8 - 1));
            v13 = v9 - v12;
            v33 = [NSData dataWithBytesNoCopy:&a3[v12] length:v9 - v12 + 2 freeWhenDone:0];
            v14 = CGImageSourceCreateWithData(v33, 0);
            v15 = CGImageSourceCopyPropertiesAtIndex(v14, 0, 0);
            v16 = [NSMutableDictionary dictionaryWithDictionary:v15];
            v17 = [NSNumber numberWithUnsignedLong:v12 + a5];
            [v16 setObject:v17 forKeyedSubscript:@"JPEGOffset"];

            v18 = [NSNumber numberWithUnsignedLong:v13 + 2];
            [v16 setObject:v18 forKeyedSubscript:@"JPEGLength"];

            v35 = 0;
            v19 = [(PTPCameraFile *)self imageValidateSubImage:v16 error:&v35];
            if (v19)
            {
              [(PTPCameraFile *)self addSubImageDict:v19];
            }

            if (v14)
            {
              CFRelease(v14);
            }

            v8 = v34;
          }
        }

        else if (v11 == 216)
        {
          *(v41 + v8) = v9;
          if (v8 < 0xA)
          {
            ++v8;
          }
        }

        else
        {
          v10 = v9;
        }

        v9 = v10 + 1;
      }

      ++v9;
    }

    while (v9 < a4 - 1 && v8 < 6);
  }

  v20 = (((mach_absolute_time() - *&dword_1000338CC) * info.numer) / info.denom) / 1000000.0;
  __ICOSLogCreate();
  v21 = [(PTPCameraItem *)self name];
  if ([v21 length] >= 0x15)
  {
    v22 = [v21 substringWithRange:{0, 18}];
    v23 = [v22 stringByAppendingString:@".."];

    v21 = v23;
  }

  if (v20 <= 300.0)
  {
    v24 = @"{𝚫}";
  }

  else
  {
    v24 = @"{⊗}";
  }

  v25 = [NSString stringWithFormat:@"imageScrapeAllocatedData [%5.2f MB]", vcvtd_n_f64_u64(v31, 0xAuLL) * 0.0009765625];
  v26 = [NSString stringWithFormat:@"%@:[%5.0f ms]:%@", v24, v20, v25];

  v27 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v21;
    v29 = v27;
    v30 = [v21 UTF8String];
    *buf = 136446466;
    v38 = v30;
    v39 = 2114;
    v40 = v26;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  dword_1000338C8 = LODWORD(v20);
}

- (void)addSubImageDict:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ImageWidth"];
  if (v5)
  {
    v6 = v5;
    subImages = self->_subImages;
    v8 = [v4 objectForKeyedSubscript:@"ImageWidth"];
    v9 = [(NSMutableDictionary *)subImages objectForKeyedSubscript:v8];

    if (!v9)
    {
      v10 = self->_subImages;
      v11 = [v4 objectForKeyedSubscript:@"ImageWidth"];
      [(NSMutableDictionary *)v10 setObject:v4 forKey:v11];

      __ICOSLogCreate();
      v12 = [(PTPCameraItem *)self name];
      if ([v12 length] >= 0x15)
      {
        v13 = [v12 substringWithRange:{0, 18}];
        v14 = [v13 stringByAppendingString:@".."];

        v12 = v14;
      }

      v15 = [v4 objectForKeyedSubscript:@"ImageWidth"];
      v16 = [v15 intValue];
      v17 = [v4 objectForKeyedSubscript:@"ImageHeight"];
      v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"+ [%10d(w)x %10d(h)]", v16, [v17 intValue]);

      v19 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v12;
        v21 = v19;
        *buf = 136446466;
        v23 = [v12 UTF8String];
        v24 = 2114;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }
}

- (id)subImageDictForPixelWidth:(id)a3
{
  v4 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = [(NSMutableDictionary *)self->_subImages allKeys];
  v6 = [v5 sortedArrayUsingSelector:"compare:"];

  v7 = [v6 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v34 + 1) + 8 * v10);
      v12 = [v4 intValue];
      if (v12 <= [v11 intValue])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = [(NSMutableDictionary *)self->_subImages objectForKeyedSubscript:v11];
    __ICOSLogCreate();
    v14 = [(PTPCameraItem *)self name];
    if ([v14 length] >= 0x15)
    {
      v15 = [v14 substringWithRange:{0, 18}];
      v16 = [v15 stringByAppendingString:@".."];

      v14 = v16;
    }

    v17 = [v13 objectForKeyedSubscript:@"ImageWidth"];
    v18 = [v17 intValue];
    v19 = [v13 objectForKeyedSubscript:@"ImageHeight"];
    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"⇲ [%10d(w)x %10d(h)]", v18, [v19 intValue]);

    v21 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v14;
      v23 = v21;
      v24 = [v14 UTF8String];
      *buf = 136446466;
      v39 = v24;
      v40 = 2114;
      v41 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    if (v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_9:
  }

  __ICOSLogCreate();
  v25 = [(PTPCameraItem *)self name];
  if ([v25 length] >= 0x15)
  {
    v26 = [v25 substringWithRange:{0, 18}];
    v27 = [v26 stringByAppendingString:@".."];

    v25 = v27;
  }

  v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"╳ [%10d] no match", [v4 intValue]);
  v29 = _gICOSLog;
  if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v25;
    v31 = v29;
    v32 = [v25 UTF8String];
    *buf = 136446466;
    v39 = v32;
    v40 = 2114;
    v41 = v28;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (int64_t)compare:(id)a3 against:(id)a4 withContext:(void *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objHandle];
  if (v8 >= [v7 objHandle])
  {
    v10 = [v6 objHandle];
    v9 = v10 > [v7 objHandle];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)fingerprintWithError:(id *)a3
{
  v5 = [(PTPCameraItem *)self fingerprint];

  if (!v5)
  {
    v6 = malloc_type_malloc(0x24000uLL, 0x6CF3B84AuLL);
    if (v6)
    {
      v7 = v6;
      v8 = [(PTPCameraFile *)self readStream:v6 size:147456 offset:0];
      v9 = objc_alloc_init(ICCameraFileFingerprint);
      v10 = [NSData dataWithBytes:v7 + 12 length:v8];
      v11 = [v9 fingerprintForData:v10 error:a3];
      [(PTPCameraItem *)self setFingerprint:v11];

      __ICOSLogCreate();
      v12 = [(PTPCameraItem *)self name];
      if ([v12 length] >= 0x15)
      {
        v13 = [v12 substringWithRange:{0, 18}];
        v14 = [v13 stringByAppendingString:@".."];

        v12 = v14;
      }

      v15 = [(PTPCameraItem *)self fingerprint];
      v16 = [NSString stringWithFormat:@"fingerprint: %@", v15];

      v17 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v12;
        v19 = v17;
        *buf = 136446466;
        v23 = [v12 UTF8String];
        v24 = 2114;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }
    }
  }

  v20 = [(PTPCameraItem *)self fingerprint];

  return v20;
}

- (void)parseKeywords:(id)a3
{
  v21 = a3;
  if (([v21 isEqualToString:&stru_10002D6D0] & 1) == 0)
  {
    v4 = malloc_type_malloc(0x400uLL, 0x4AF67915uLL);
    memset(v22, 0, sizeof(v22));
    [v21 getCString:v4 maxLength:1024 encoding:4];
    v20 = v4;
    v5 = strtok(v4, "^");
    if (v5)
    {
      v6 = 0;
      do
      {
        *(v22 + v6) = v5;
        v16 = (v6++ & 1) == 0;
        if (v16)
        {
          v7 = "&";
        }

        else
        {
          v7 = "^";
        }

        v5 = strtok(0, v7);
      }

      while (v5);
      v8 = 0;
      v9 = v6;
      do
      {
        if (strtok(*(v22 + v8), "&"))
        {
          v10 = 0;
          do
          {
            v11 = v10;
            v10 = strtok(0, "&");
          }

          while (v10);
          if (v11)
          {
            *(v22 + v8) = v11;
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v12 = 0;
      v13 = v22 + 1;
      do
      {
        if (*(v13 - 1))
        {
          v14 = [NSString stringWithUTF8String:v20];
        }

        else
        {
          v14 = 0;
        }

        if (*v13)
        {
          v15 = [NSString stringWithUTF8String:?];
          if (v15)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            goto LABEL_27;
          }

          v17 = @"Duration";
          if (([v14 isEqualToString:@"D"] & 1) == 0)
          {
            if ([v14 isEqualToString:@"G"])
            {
              goto LABEL_27;
            }

            v17 = @"BurstUUID";
            if (([v14 isEqualToString:@"BUUID"] & 1) == 0)
            {
              v17 = @"BurstFavorite";
              if (([v14 isEqualToString:@"BFAV"] & 1) == 0)
              {
                v17 = @"BurstPicked";
                if (([v14 isEqualToString:@"BPIK"] & 1) == 0)
                {
                  v17 = @"HighFramerate";
                  if (([v14 isEqualToString:@"HFRV"] & 1) == 0)
                  {
                    v17 = @"TimeLapse";
                    if (([v14 isEqualToString:@"TLV"] & 1) == 0)
                    {
                      v17 = @"FirstPicked";
                      if (([v14 isEqualToString:@"FPIK"] & 1) == 0)
                      {
                        v17 = @"GroupUUID";
                        if (([v14 isEqualToString:@"GUUID"] & 1) == 0)
                        {
                          v17 = @"RelatedUUID";
                          if (([v14 isEqualToString:@"RUUID"] & 1) == 0)
                          {
                            v17 = @"OriginalFilename";
                            if (([v14 isEqualToString:@"ON"] & 1) == 0)
                            {
                              v17 = @"CreatedFilename";
                              if (([v14 isEqualToString:@"CFN"] & 1) == 0)
                              {
                                v17 = @"OriginatingAssetID";
                                if (([v14 isEqualToString:@"OAID"] & 1) == 0)
                                {
                                  if ([v14 isEqualToString:@"FPRINT"])
                                  {
                                    [(PTPCameraItem *)self setFingerprint:v15];
                                    v17 = @"Fingerprint";
                                  }

                                  else
                                  {
                                    v17 = @"Orientation";
                                    if (![v14 isEqualToString:@"IO"])
                                    {
                                      goto LABEL_27;
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

          v18 = [(PTPCameraItem *)self cameraItemProxy];
          v19 = [v18 keywords];
          [v19 setObject:v15 forKeyedSubscript:v17];
        }

        else
        {
          v15 = 0;
        }

LABEL_27:

        v12 += 2;
        v13 += 2;
      }

      while (v12 < v9);
    }

    free(v20);
  }
}

@end