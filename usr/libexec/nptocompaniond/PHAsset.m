@interface PHAsset
+ (void)_npto_archiveLivePhotoAssetResourceFiles:(id)a3 completionHandler:(id)a4;
- (double)_npto_maxPixelSizeForDevice:(id)a3;
- (id)_npto_findInterestingAssetResourcesFrom:(id)a3;
- (void)_npto_processAssetResourceFiles:(id)a3 isLegacyDevice:(BOOL)a4 maxPixelSize:(double)a5 completionHandler:(id)a6;
- (void)_npto_processPairedVideoAssetResource:(id)a3 maxPixelSize:(double)a4 completionHandler:(id)a5;
- (void)_npto_processPhotoAssetResource:(id)a3 isLegacyDevice:(BOOL)a4 maxPixelSize:(double)a5 completionHandler:(id)a6;
- (void)_npto_requestLivePhotoAssetResourceFilesWithMaxPixelSize:(double)a3 isLegacyDevice:(BOOL)a4 isUserInitiated:(BOOL)a5 completionHandler:(id)a6;
- (void)_npto_requestPhotoAssetResourceFilesWithMaxPixelSize:(double)a3 isLegacyDevice:(BOOL)a4 isUserInitiated:(BOOL)a5 completionHandler:(id)a6;
- (void)npto_exportForDevice:(id)a3 isUserInitiated:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation PHAsset

- (void)npto_exportForDevice:(id)a3 isUserInitiated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10004B87C;
  v31[3] = &unk_10008B238;
  v31[4] = self;
  v9 = a3;
  v10 = objc_retainBlock(v31);
  [(PHAsset *)self _npto_maxPixelSizeForDevice:v9];
  v12 = v11;
  v13 = [[NSUUID alloc] initWithUUIDString:@"EF9E8C3A-6B59-47E0-BA2F-212213F1A30D"];
  v14 = [v9 supportsCapability:v13];

  if ([(PHAsset *)self mediaType]== 1)
  {
    v15 = v14 ^ 1;
    if (([(PHAsset *)self mediaSubtypes]& 8) != 0)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10004BBD4;
      v25[3] = &unk_10008B2B0;
      v25[4] = self;
      v28 = v12;
      v29 = v15;
      v30 = v5;
      v26 = v8;
      v27 = v10;
      [(PHAsset *)self _npto_requestLivePhotoAssetResourceFilesWithMaxPixelSize:v15 isLegacyDevice:v5 isUserInitiated:v25 completionHandler:v12];

      v16 = v26;
    }

    else
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10004C2E4;
      v22[3] = &unk_10008B260;
      v22[4] = self;
      v23 = v8;
      v24 = v10;
      [(PHAsset *)self _npto_requestPhotoAssetResourceFilesWithMaxPixelSize:v15 isLegacyDevice:v5 isUserInitiated:v22 completionHandler:v12];

      v16 = v23;
    }
  }

  else
  {
    v34 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithFormat:@"Unsupported asset media type %ld %@", [(PHAsset *)self mediaType], self];
    v35 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v19 = [NSError errorWithDomain:@"NanoPhotosErrorDomain" code:0 userInfo:v18];

    v20 = sub_10000268C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v19 localizedDescription];
      *buf = 138412290;
      v33 = v21;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0, v19);
    }
  }
}

- (void)_npto_requestPhotoAssetResourceFilesWithMaxPixelSize:(double)a3 isLegacyDevice:(BOOL)a4 isUserInitiated:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = [(PHAsset *)self localIdentifier];
  v12 = sub_10000268C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will request image for asset %@", buf, 0xCu);
  }

  v13 = objc_alloc_init(PHImageRequestOptions);
  v14 = v13;
  if (!a5)
  {
    [v13 setDownloadIntent:7];
  }

  if ([(PHAsset *)self playbackStyle]== 2)
  {
    [v14 setVersion:2];
  }

  [v14 setDeliveryMode:1];
  [v14 setNetworkAccessAllowed:1];
  [v14 setLoadingMode:0x10000];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10004C6B0;
  v25[3] = &unk_10008B2D8;
  v15 = v11;
  v26 = v15;
  [v14 setProgressHandler:v25];
  v16 = +[PHImageManager defaultManager];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004C800;
  v19[3] = &unk_10008B300;
  v21 = self;
  v22 = v10;
  v20 = v15;
  v24 = a4;
  v23 = a3;
  v17 = v10;
  v18 = v15;
  [v16 requestImageForAsset:self targetSize:0 contentMode:v14 options:v19 resultHandler:{a3, a3}];
}

- (void)_npto_requestLivePhotoAssetResourceFilesWithMaxPixelSize:(double)a3 isLegacyDevice:(BOOL)a4 isUserInitiated:(BOOL)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = [(PHAsset *)self localIdentifier];
  v11 = [PHAssetResource assetResourcesForAsset:self];
  v12 = [(PHAsset *)self _npto_findInterestingAssetResourcesFrom:v11];

  if ([v12 count])
  {
    v13 = sub_10000268C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v77 = v10;
      v78 = 2112;
      v79 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Done requesting live photo resources for asset %@, resources: %@", buf, 0x16u);
    }

    v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v12 count]);
    +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10004D44C;
    v45 = v66[3] = &unk_10008B328;
    v67 = v45;
    v48 = v9;
    v71 = v9;
    v46 = v14;
    v47 = v12;
    v68 = v46;
    v15 = v12;
    v69 = v15;
    v70 = self;
    v73 = a4;
    v72 = a3;
    v52 = objc_retainBlock(v66);
    v16 = sub_10000268C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v77 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Will request asset resources for live photo %@", buf, 0xCu);
    }

    v53 = v10;

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v62 objects:v82 count:16];
    if (v17)
    {
      v18 = v17;
      v50 = *v63;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v63 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v62 + 1) + 8 * i);
          v21 = [v20 type];
          v22 = sub_10000268C();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v77 = v53;
            v78 = 2048;
            v79 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Will request live photo for asset %@ resource type %ld", buf, 0x16u);
          }

          v23 = [v20 originalFilename];
          v24 = [v23 pathExtension];

          if (!v24)
          {
            v25 = [v20 uniformTypeIdentifier];
            v26 = [PFUniformTypeUtilities typeWithIdentifier:v25];

            v27 = sub_10000268C();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v77 = v53;
              v78 = 2048;
              v79 = v21;
              v80 = 2112;
              v81 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No originalFilename for asset %@ resource type %ld, trying to get extension from type %@", buf, 0x20u);
            }

            v28 = [PFUniformTypeUtilities preferredOrFallbackFilenameExtensionForType:v26];
            if (!v28)
            {
              v41 = sub_10000268C();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v77 = v53;
                v78 = 2048;
                v79 = v21;
                _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to get file extension for asset %@ resource type %ld", buf, 0x16u);
              }

              v74 = NSLocalizedDescriptionKey;
              v42 = [NSString stringWithFormat:@"No valid file extension for asset %@ resource type %ld", v53, v21, v45];
              v75 = v42;
              v43 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
              v44 = [NSError errorWithDomain:@"NanoPhotosErrorDomain" code:6 userInfo:v43];

              (v52[2])(v52, v21, 0, v44);
              goto LABEL_30;
            }

            v24 = v28;
          }

          v29 = objc_alloc_init(PHAssetResourceRequestOptions);
          v30 = v29;
          if (!a5)
          {
            [v29 setDownloadIntent:7];
          }

          [v30 setNetworkAccessAllowed:1];
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_10004D5B0;
          v59[3] = &unk_10008B350;
          v31 = v53;
          v60 = v31;
          v61 = v21;
          [v30 setProgressHandler:v59];
          v32 = [[NPTOTemporaryFile alloc] initWithPathExtension:v24];
          v33 = +[PHAssetResourceManager defaultManager];
          v34 = [(NPTOTemporaryFile *)v32 URL];
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_10004D684;
          v54[3] = &unk_10008B378;
          v55 = v31;
          v58 = v21;
          v35 = v52;
          v56 = v32;
          v57 = v35;
          v36 = v32;
          [v33 writeDataForAssetResource:v20 toFile:v34 options:v30 completionHandler:v54];
        }

        v18 = [obj countByEnumeratingWithState:&v62 objects:v82 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    v12 = v47;
    v9 = v48;
    v10 = v53;
    v39 = v46;
  }

  else
  {
    v83 = NSLocalizedDescriptionKey;
    v37 = [NSString stringWithFormat:@"No asset resources returned for asset %@", v10];
    v84 = v37;
    v38 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v39 = [NSError errorWithDomain:@"NanoPhotosErrorDomain" code:2 userInfo:v38];

    v40 = sub_10000268C();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v77 = v10;
      v78 = 2112;
      v79 = v39;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to request live photo resources for asset %@, error %@", buf, 0x16u);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0, v39);
    }
  }
}

- (void)_npto_processAssetResourceFiles:(id)a3 isLegacyDevice:(BOOL)a4 maxPixelSize:(double)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v10 count]);
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004D9C0;
  v23 = v22[3] = &unk_10008B3A0;
  v24 = v12;
  v25 = v10;
  v26 = v11;
  v13 = v10;
  v14 = v12;
  v15 = v11;
  v16 = v23;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004DB28;
  v18[3] = &unk_10008B3F0;
  v21 = a4;
  v20 = a5;
  v18[4] = self;
  v19 = objc_retainBlock(v22);
  v17 = v19;
  [v13 enumerateKeysAndObjectsUsingBlock:v18];
}

- (void)_npto_processPhotoAssetResource:(id)a3 isLegacyDevice:(BOOL)a4 maxPixelSize:(double)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = v10;
  v13 = [v12 URL];
  v14 = CGImageSourceCreateWithURL(v13, 0);

  if (v14)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v14, 0, 0);
    v16 = ImageAtIndex;
    if (ImageAtIndex)
    {
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(v16);
      CFRelease(v16);
      v16 = 0;
      if (Width)
      {
        if (Height)
        {
          Count = CGImageSourceGetCount(v14);
          v20 = sub_10000268C();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413314;
            *&buf[4] = CGImageSourceGetType(v14);
            *&buf[12] = 2048;
            *&buf[14] = a5;
            *&buf[22] = 2048;
            v165 = Width;
            *v166 = 2048;
            *&v166[2] = Height;
            *&v166[10] = 2048;
            *&v166[12] = Count;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[DoResize] Resizing image with type: (%@), maxPixelSize: (%f), original image size: (%zu x %zu), image count: (%ld)", buf, 0x34u);
          }

          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10004FBB0;
          v165 = &unk_10008B460;
          *v166 = Width;
          *&v166[8] = a5;
          *&v166[16] = Height;
          v21 = objc_retainBlock(buf);
          v22 = [NPTOTemporaryFile alloc];
          v23 = v22;
          v143 = v11;
          if (v8)
          {
            v154 = [(NPTOTemporaryFile *)v22 initWithPathExtension:@"jpg"];
          }

          else
          {
            v25 = [v12 URL];
            v26 = [v25 pathExtension];
            v154 = [(NPTOTemporaryFile *)v23 initWithPathExtension:v26];
          }

          v27 = sub_10000268C();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v12 URL];
            LODWORD(v167) = 138412290;
            *(&v167 + 4) = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[ImageFile] Original File: %@", &v167, 0xCu);
          }

          v141 = v12;
          v29 = [v12 URL];
          v30 = [v29 pathExtension];
          v31 = [PFUniformTypeUtilities typeWithFilenameExtension:v30];

          v32 = CGImageDestinationCopyTypeIdentifiers();
          v156 = v31;
          v33 = [(UTType *)v31 identifier];
          v152 = v32;
          v34 = [(__CFArray *)v32 containsObject:v33];

          v35 = sub_10000268C();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v167) = 67109120;
            DWORD1(v167) = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[ImageFile] Is original image file supported %d", &v167, 8u);
          }

          v36 = v154;
          v37 = [(NPTOTemporaryFile *)v154 URL];
          if (v8 || (v34 & 1) == 0)
          {
            v38 = UTTypeJPEG;
          }

          else
          {
            v38 = v156;
          }

          v39 = [(UTType *)v38 identifier];
          v40 = CGImageDestinationCreateWithURL(v37, v39, Count, 0);

          if (v40)
          {
            v41 = CGImageSourceCopyProperties(v14, 0);
            CGImageDestinationSetProperties(v40, v41);
            if (v41)
            {
              CFRelease(v41);
            }

            if (Count)
            {
              for (i = 0; i != Count; ++i)
              {
                v43 = (*(v21 + 2))(v21, 0);
                v44 = CGImageSourceCreateImageAtIndex(v14, i, v43);
                v45 = CGImageSourceCopyPropertiesAtIndex(v14, i, 0);
                v46 = (*(v21 + 2))(v21, v45);
                CGImageDestinationAddImage(v40, v44, v46);
                if (v44)
                {
                  CGImageRelease(v44);
                }

                if (v45)
                {
                  CFRelease(v45);
                }
              }
            }

            CGImageDestinationFinalize(v40);
            CFRelease(v40);
            v36 = v154;
            v16 = v154;
          }

          else
          {
            v47 = sub_10000268C();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v167) = 0;
              _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Could not create imageDestination", &v167, 2u);
            }

            v16 = 0;
          }

          v12 = v141;
          v11 = v143;
        }
      }
    }

    CFRelease(v14);
  }

  else
  {
    v24 = sub_10000268C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not create imageSource", buf, 2u);
    }

    v16 = 0;
  }

  v48 = v16;
  v146 = self;
  if (v48)
  {
    if ([(PHAsset *)v146 playbackStyle]== 2)
    {
      v49 = sub_10000268C();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [(PHAsset *)v146 localIdentifier];
        *buf = 138412290;
        *&buf[4] = v50;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%@ processedFileWithFaceMetadata: the asset is an animated image; do nothing", buf, 0xCu);
      }

      v51 = v48;
      goto LABEL_119;
    }

    v53 = [PHFace fetchFacesInAsset:v146 options:0];
    if ([v53 count])
    {
      v54 = [(CGImage *)v48 URL];
      v55 = CGImageSourceCreateWithURL(v54, 0);

      v56 = sub_10000268C();
      v57 = v56;
      if (v55)
      {
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [(PHAsset *)v146 localIdentifier];
          *buf = 138412290;
          *&buf[4] = v58;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@ processedFileWithFaceMetadata: adding face region metadata from PHFaces", buf, 0xCu);
        }

        isrc = v55;
        v59 = CGImageSourceCreateImageAtIndex(v55, 0, 0);
        if (v59)
        {
          v60 = v59;
          v61 = CGImageGetWidth(v59);
          v62 = CGImageGetHeight(v60);
          CFRelease(v60);
        }

        else
        {
          v64 = sub_10000268C();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "getImageDimensions: cannot create image source", buf, 2u);
          }

          v61 = 1;
          v62 = 1;
        }

        Mutable = CGImageMetadataCreateMutable();
        if (Mutable)
        {
          v66 = Mutable;
          v139 = v53;
          v67 = [NSString stringWithFormat:@"%ld", v61];
          sub_10004B468(v66, @"mwg-rs:Regions", @"AppliedToDimensions.w", v67);

          v68 = [NSString stringWithFormat:@"%ld", v62];
          sub_10004B468(v66, @"mwg-rs:Regions", @"AppliedToDimensions.h", v68);

          sub_10004B468(v66, @"mwg-rs:Regions", @"AppliedToDimensions.unit", @"pixel");
          *buf = 1;
          v69 = CGImageSourceCopyPropertiesAtIndex(isrc, 0, 0);
          v142 = v12;
          v144 = v11;
          if (!v69)
          {
            b = 0.0;
            c = 0.0;
            a = 1.0;
            d = 1.0;
            v149 = 0.0;
            tx = 0.0;
LABEL_90:
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            obj = v139;
            v78 = [obj countByEnumeratingWithState:&v167 objects:buf count:16];
            if (v78)
            {
              v79 = v78;
              v80 = 0;
              v81 = v61;
              v82 = fabs(c * v62 + a * v61);
              v83 = fabs(d * v62 + b * v61);
              v84 = *v168;
              if (v83 >= v82)
              {
                v85 = v83;
              }

              else
              {
                v85 = v82;
              }

              sx = 1.0 / v81;
              v148 = v85;
              v86 = 1.0 / v62;
              do
              {
                for (j = 0; j != v79; j = j + 1)
                {
                  if (*v168 != v84)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v88 = *(*(&v167 + 1) + 8 * j);
                  [v88 size];
                  v90 = v148 * v89;
                  [v88 centerX];
                  v92 = fmax(v90 * -0.5 + v91 * v82, 0.0);
                  [v88 centerY];
                  v94 = fmax(v90 * -0.5 + v93 * v83, 0.0);
                  if (v90 >= v82 - v92)
                  {
                    v95 = v82 - v92;
                  }

                  else
                  {
                    v95 = v90;
                  }

                  v163.a = 1.0;
                  v163.b = 0.0;
                  v163.c = 0.0;
                  if (v90 >= v83 - v94)
                  {
                    v96 = v83 - v94;
                  }

                  else
                  {
                    v96 = v90;
                  }

                  *&v163.d = xmmword_1000721A0;
                  v163.ty = v83;
                  v97 = v92;
                  v171 = CGRectApplyAffineTransform(*(&v94 - 1), &v163);
                  x = v171.origin.x;
                  y = v171.origin.y;
                  v100 = v171.size.width;
                  v101 = v171.size.height;
                  v162.a = a;
                  v162.b = b;
                  v162.c = c;
                  v162.d = d;
                  v162.tx = tx;
                  v162.ty = v149;
                  CGAffineTransformInvert(&v163, &v162);
                  v172.origin.x = x;
                  v172.origin.y = y;
                  v172.size.width = v100;
                  v172.size.height = v101;
                  v173 = CGRectApplyAffineTransform(v172, &v163);
                  v102 = v173.origin.x;
                  v103 = v173.origin.y;
                  v104 = v173.size.width;
                  v105 = v173.size.height;
                  CGAffineTransformMakeScale(&v163, sx, v86);
                  v174.origin.x = v102;
                  v174.origin.y = v103;
                  v174.size.width = v104;
                  v174.size.height = v105;
                  v175 = CGRectApplyAffineTransform(v174, &v163);
                  v106 = v175.origin.x;
                  v107 = v175.origin.y;
                  v108 = v175.size.width;
                  v109 = v175.size.height;
                  v110 = sub_10000268C();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
                  {
                    v111 = [(PHAsset *)v146 localIdentifier];
                    v176.origin.x = v106;
                    v176.origin.y = v107;
                    v176.size.width = v108;
                    v176.size.height = v109;
                    v112 = NSStringFromRect(v176);
                    LODWORD(v163.a) = 138412546;
                    *(&v163.a + 4) = v111;
                    WORD2(v163.b) = 2112;
                    *(&v163.b + 6) = v112;
                    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "%@ processedFileWithFaceMetadata: face rect %@", &v163, 0x16u);
                  }

                  v113 = [NSString stringWithFormat:@"mwg-rs:Regions.RegionList[%d]", v80];
                  sub_10004B468(v66, v113, @"Type", @"Face");
                  v177.origin.x = v106;
                  v177.origin.y = v107;
                  v177.size.width = v108;
                  v177.size.height = v109;
                  v114 = [NSString stringWithFormat:@"%f", CGRectGetMidX(v177)];
                  sub_10004B468(v66, v113, @"Area.x", v114);

                  v178.origin.x = v106;
                  v178.origin.y = v107;
                  v178.size.width = v108;
                  v178.size.height = v109;
                  v115 = [NSString stringWithFormat:@"%f", CGRectGetMidY(v178)];
                  sub_10004B468(v66, v113, @"Area.y", v115);

                  v116 = [NSString stringWithFormat:@"%f", *&v108];
                  sub_10004B468(v66, v113, @"Area.w", v116);

                  v117 = [NSString stringWithFormat:@"%f", *&v109];
                  sub_10004B468(v66, v113, @"Area.h", v117);

                  sub_10004B468(v66, v113, @"Area.unit", @"normalized");
                  v80 = (v80 + 1);
                }

                v79 = [obj countByEnumeratingWithState:&v167 objects:buf count:16];
              }

              while (v79);
            }

            v161[0] = kCGImageDestinationMergeMetadata;
            v161[1] = kCGImageDestinationMetadata;
            *&v162.a = &__kCFBooleanTrue;
            *&v162.b = v66;
            v118 = [NSDictionary dictionaryWithObjects:&v162 forKeys:v161 count:2];
            v119 = [NPTOTemporaryFile alloc];
            v120 = [(CGImage *)v48 URL];
            v121 = [v120 pathExtension];
            v122 = [(NPTOTemporaryFile *)v119 initWithPathExtension:v121];

            v123 = [(NPTOTemporaryFile *)v122 URL];
            Type = CGImageSourceGetType(isrc);
            v125 = CGImageDestinationCreateWithURL(v123, Type, 1uLL, 0);

            if (v125)
            {
              err = 0;
              v126 = CGImageDestinationCopyImageSource(v125, isrc, v118, &err);
              CFRelease(v125);
              CFRelease(v66);
              CFRelease(isrc);
              v127 = v122;
              v12 = v142;
              v11 = v144;
              if (!v126)
              {
                v128 = sub_10000268C();
                if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                {
                  v138 = [(PHAsset *)v146 localIdentifier];
                  LODWORD(v163.a) = 138412546;
                  *(&v163.a + 4) = v138;
                  WORD2(v163.b) = 2112;
                  *(&v163.b + 6) = err;
                  _os_log_error_impl(&_mh_execute_header, v128, OS_LOG_TYPE_ERROR, "%@ processedFileWithFaceMetadata: Error in CGImageDestinationCopyImageSource: %@; do nothing", &v163, 0x16u);
                }

                v127 = v48;
              }

              v129 = v127;
            }

            else
            {
              v130 = sub_10000268C();
              v12 = v142;
              v11 = v144;
              if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
              {
                v137 = [(PHAsset *)v146 localIdentifier];
                LODWORD(v163.a) = 138412290;
                *(&v163.a + 4) = v137;
                _os_log_error_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "%@ processedFileWithFaceMetadata: could not create imageDestination; do nothing", &v163, 0xCu);
              }

              CFRelease(v66);
              CFRelease(isrc);
              v129 = v48;
            }

            v51 = v129;

            v53 = v139;
            goto LABEL_118;
          }

          v70 = v69;
          Value = CFDictionaryGetValue(v69, kCGImagePropertyTIFFDictionary);
          if (Value)
          {
            v72 = CFDictionaryGetValue(Value, kCGImagePropertyTIFFOrientation);
            if (v72)
            {
              CFNumberGetValue(v72, kCFNumberSInt32Type, buf);
            }
          }

          CFRelease(v70);
          if (*buf > 4)
          {
            if (*buf <= 6)
            {
              if (*buf != 5)
              {
                tx = v62;
                c = -1.0;
                ty = 0.0;
                a = 0.0;
                b = 1.0;
                d = 0.0;
                goto LABEL_89;
              }

              a = 0.0;
              b = 1.0;
              c = 1.0;
              ty = 0.0;
              d = 0.0;
              goto LABEL_84;
            }

            if (*buf != 7)
            {
              if (*buf != 8)
              {
                goto LABEL_88;
              }

              v76 = v61;
              c = 1.0;
              a = 0.0;
              b = -1.0;
              d = 0.0;
              goto LABEL_81;
            }

            v149 = v61;
            tx = v62;
            a = 0.0;
            b = -1.0;
            c = -1.0;
            v77 = 0.0;
          }

          else
          {
            b = 0.0;
            d = 1.0;
            if (*buf <= 2)
            {
              if (*buf != 1)
              {
                if (*buf == 2)
                {
                  a = -1.0;
                  ty = 0.0;
                  tx = v61;
                  c = 0.0;
LABEL_89:
                  v149 = ty;
                  goto LABEL_90;
                }

LABEL_88:
                a = CGAffineTransformIdentity.a;
                b = CGAffineTransformIdentity.b;
                d = CGAffineTransformIdentity.d;
                ty = CGAffineTransformIdentity.ty;
                tx = CGAffineTransformIdentity.tx;
                c = CGAffineTransformIdentity.c;
                goto LABEL_89;
              }

              a = 1.0;
              ty = 0.0;
              c = 0.0;
LABEL_84:
              tx = 0.0;
              goto LABEL_89;
            }

            if (*buf != 3)
            {
              v76 = v62;
              d = -1.0;
              c = 0.0;
              a = 1.0;
LABEL_81:
              v149 = v76;
              tx = 0.0;
              goto LABEL_90;
            }

            v149 = v62;
            tx = v61;
            c = 0.0;
            a = -1.0;
            v77 = -1.0;
          }

          d = v77;
          goto LABEL_90;
        }

        v74 = sub_10000268C();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v136 = [(PHAsset *)v146 localIdentifier];
          *buf = 138412290;
          *&buf[4] = v136;
          _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%@ processedFileWithFaceMetadata: could not create new metadata; do nothing", buf, 0xCu);
        }

        CFRelease(isrc);
LABEL_55:
        v51 = v48;
LABEL_118:

        goto LABEL_119;
      }

      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
LABEL_54:

        goto LABEL_55;
      }

      v63 = [(PHAsset *)v146 localIdentifier];
      *buf = 138412290;
      *&buf[4] = v63;
      _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%@ processedFileWithFaceMetadata: could not create image source; do nothing", buf, 0xCu);
    }

    else
    {
      v57 = sub_10000268C();
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      v63 = [(PHAsset *)v146 localIdentifier];
      *buf = 138412290;
      *&buf[4] = v63;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@ processedFileWithFaceMetadata: no extra face data in the asset; do nothing", buf, 0xCu);
    }

    goto LABEL_54;
  }

  v52 = sub_10000268C();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    v75 = [(PHAsset *)v146 localIdentifier];
    *buf = 138412290;
    *&buf[4] = v75;
    _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%@ processedFileWithFaceMetadata: input asset data is nil", buf, 0xCu);
  }

  v51 = 0;
LABEL_119:

  if (v11)
  {
    if (v51)
    {
      v11[2](v11, v51, 0);
    }

    else
    {
      v131 = [(PHAsset *)v146 localIdentifier];
      v159 = NSLocalizedDescriptionKey;
      v132 = [NSString stringWithFormat:@"Failed to add face metadata for asset %@", v131];
      v160 = v132;
      v133 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
      v134 = [NSError errorWithDomain:@"NanoPhotosErrorDomain" code:1 userInfo:v133];

      v135 = sub_10000268C();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v131;
        *&buf[12] = 2112;
        *&buf[14] = v134;
        _os_log_error_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "Failed to add face metadata for asset %@, error %@", buf, 0x16u);
      }

      (v11)[2](v11, 0, v134);
    }
  }
}

- (void)_npto_processPairedVideoAssetResource:(id)a3 maxPixelSize:(double)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [NPTOTemporaryFile alloc];
  v10 = [v7 URL];
  v11 = [v10 pathExtension];
  v12 = [(NPTOTemporaryFile *)v9 initWithPathExtension:v11];

  v13 = [v7 URL];
  v14 = [AVURLAsset URLAssetWithURL:v13 options:0];
  v15 = [AVAssetExportSession exportSessionWithAsset:v14 presetName:AVAssetExportPresetAuxSmall];

  v16 = [(NPTOTemporaryFile *)v12 URL];
  [v15 setOutputURL:v16];

  v17 = sub_10000268C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v15 supportedFileTypes];
    *buf = 138412290;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Valid file types are %@", buf, 0xCu);
  }

  v19 = [v15 supportedFileTypes];
  if ([v19 containsObject:AVFileTypeMPEG4])
  {
    [v15 setOutputFileType:AVFileTypeMPEG4];
  }

  else
  {
    v20 = [v15 supportedFileTypes];
    if ([v20 containsObject:AVFileTypeQuickTimeMovie])
    {
      [v15 setOutputFileType:AVFileTypeQuickTimeMovie];
    }

    else
    {
      v21 = [v15 supportedFileTypes];
      v22 = [v21 firstObject];
      [v15 setOutputFileType:v22];
    }
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10004F458;
  v27[3] = &unk_10008B418;
  v28 = v15;
  v29 = self;
  v31 = v7;
  v32 = v8;
  v30 = v12;
  v23 = v7;
  v24 = v12;
  v25 = v8;
  v26 = v15;
  [v26 exportAsynchronouslyWithCompletionHandler:v27];
}

+ (void)_npto_archiveLivePhotoAssetResourceFiles:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[NSMutableDictionary dictionary];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004F8AC;
  v7 = v20[3] = &unk_10008B440;
  v21 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v20];

  v8 = [[NPTOTemporaryFile alloc] initWithPathExtension:@"nlp"];
  v19 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = sub_10000268C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = [(NPTOTemporaryFile *)v8 URL];
      *buf = 138412546;
      v23 = v16;
      v24 = 2112;
      v25 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to archive live photo to URL %@: %@", buf, 0x16u);
    }

    if (v5)
    {
      v5[2](v5, 0, v10);
    }
  }

  else
  {
    v12 = [(NPTOTemporaryFile *)v8 URL];
    v18 = 0;
    v13 = [v9 writeToURL:v12 options:0 error:&v18];
    v14 = v18;

    if (v13)
    {
      if (v5)
      {
        (v5)[2](v5, v8, 0);
      }
    }

    else
    {
      v15 = sub_10000268C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = [(NPTOTemporaryFile *)v8 URL];
        *buf = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to write archived live photo to URL %@: %@", buf, 0x16u);
      }

      if (v5)
      {
        v5[2](v5, 0, v14);
      }
    }
  }
}

- (double)_npto_maxPixelSizeForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:NRDevicePropertyMainScreenClass];
  v6 = [v5 intValue];

  v7 = 384.0;
  if (v4 && (v6 & 0xFFFFFFFE) != 0xC)
  {
    v8 = [v4 valueForProperty:NRDevicePropertyMainScreenHeight];
    [v8 floatValue];
    v7 = v9;
  }

  if ([(PHAsset *)self playbackStyle]!= 2)
  {
    v7 = v7 + v7;
  }

  if (([(PHAsset *)self mediaSubtypes]& 1) != 0)
  {
    v7 = v7 + v7;
  }

  return v7;
}

- (id)_npto_findInterestingAssetResourcesFrom:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = *v18;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      v12 = [v11 type];
      v13 = v4;
      if (v12 > 8)
      {
        if (v12 != 9)
        {
          if (v12 != 10)
          {
            continue;
          }

LABEL_12:
          v13 = v5;
        }

LABEL_13:
        [v13 addObject:v11];
        continue;
      }

      if (v12 == 1)
      {
        goto LABEL_13;
      }

      if (v12 == 5)
      {
        goto LABEL_12;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);
LABEL_16:

  if ([v5 count])
  {
    v14 = v5;
  }

  else
  {
    v14 = v4;
  }

  v15 = v14;

  return v14;
}

@end