@interface MOMediaPlaySession
+ (BOOL)isFirstPartyApp:(id)a3;
+ (BOOL)isValidThirdParty:(id)a3 bundleCategory:(id)a4;
+ (BOOL)isValidThirdPartyEvent:(id)a3 bundleCategory:(id)a4 mediaTypeString:(id)a5 playTime:(double)a6;
+ (id)describeCategory:(int)a3;
+ (id)getMOPlaySessionMediaType:(id)a3 bundleId:(id)a4;
+ (id)redactString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMediaPlaySession:(id)a3;
- (MOMediaPlaySession)initWithCoder:(id)a3;
- (MOMediaPlaySession)initWithTitle:(id)a3 album:(id)a4 bundleId:(id)a5 productId:(id)a6 genre:(id)a7 mediaType:(id)a8 artist:(id)a9 startDate:(id)a10 endDate:(id)a11 duration:(unsigned int)a12 isRemote:(BOOL)a13 deviceSource:(id)a14 bgColor:(id)a15;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOMediaPlaySession

- (MOMediaPlaySession)initWithTitle:(id)a3 album:(id)a4 bundleId:(id)a5 productId:(id)a6 genre:(id)a7 mediaType:(id)a8 artist:(id)a9 startDate:(id)a10 endDate:(id)a11 duration:(unsigned int)a12 isRemote:(BOOL)a13 deviceSource:(id)a14 bgColor:(id)a15
{
  v46 = a3;
  v39 = a4;
  v21 = a4;
  v22 = self;
  v45 = v21;
  v40 = a5;
  v23 = a5;
  v41 = a6;
  v24 = a6;
  v42 = a7;
  v25 = a7;
  v43 = a8;
  v26 = a8;
  v47 = a9;
  v27 = a10;
  v28 = a11;
  v29 = a14;
  v30 = a15;
  v48 = v28;
  if (v27)
  {
    if (v28)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v31 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [MOMediaPlaySession initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:];
  }

  v32 = +[NSAssertionHandler currentHandler];
  [v32 handleFailureInMethod:a2 object:v22 file:@"MOMediaPlaySession.m" lineNumber:33 description:{@"Invalid parameter not satisfying: startDate != nil (in %s:%d)", "-[MOMediaPlaySession initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:]", 33}];

  v28 = v48;
  if (!v48)
  {
LABEL_7:
    v33 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [MOMediaPlaySession initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:];
    }

    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:v22 file:@"MOMediaPlaySession.m" lineNumber:34 description:{@"Invalid parameter not satisfying: endDate != nil (in %s:%d)", "-[MOMediaPlaySession initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:]", 34}];

    v28 = v48;
  }

LABEL_10:
  v49.receiver = v22;
  v49.super_class = MOMediaPlaySession;
  v35 = [(MOMediaPlaySession *)&v49 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_title, a3);
    objc_storeStrong(&v36->_album, v39);
    objc_storeStrong(&v36->_bundleId, v40);
    objc_storeStrong(&v36->_productId, v41);
    objc_storeStrong(&v36->_genre, v42);
    objc_storeStrong(&v36->_mediaType, v43);
    objc_storeStrong(&v36->_artist, a9);
    objc_storeStrong(&v36->_startDate, a10);
    objc_storeStrong(&v36->_endDate, a11);
    v36->_duration = a12;
    v28 = v48;
    v36->_isRemote = a13;
    objc_storeStrong(&v36->_deviceSource, a14);
    objc_storeStrong(&v36->_bgColor, a15);
  }

  return v36;
}

- (BOOL)isEqualToMediaPlaySession:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_29;
  }

  v6 = self->_title == 0;
  v7 = [v4 title];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_29;
  }

  title = self->_title;
  if (title)
  {
    v10 = [v5 title];
    v11 = [(NSString *)title isEqual:v10];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  v12 = self->_album == 0;
  v13 = [v5 album];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_29;
  }

  album = self->_album;
  if (album)
  {
    v16 = [v5 album];
    v17 = [(NSString *)album isEqual:v16];

    if (!v17)
    {
      goto LABEL_29;
    }
  }

  v18 = self->_bundleId == 0;
  v19 = [v5 bundleId];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_29;
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    v22 = [v5 bundleId];
    v23 = [(NSString *)bundleId isEqual:v22];

    if (!v23)
    {
      goto LABEL_29;
    }
  }

  v24 = self->_productId == 0;
  v25 = [v5 productId];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_29;
  }

  productId = self->_productId;
  if (productId)
  {
    v28 = [v5 productId];
    v29 = [(NSString *)productId isEqual:v28];

    if (!v29)
    {
      goto LABEL_29;
    }
  }

  v30 = self->_genre == 0;
  v31 = [v5 genre];
  v32 = v31 != 0;

  if (v30 == v32)
  {
    goto LABEL_29;
  }

  genre = self->_genre;
  if (genre)
  {
    v34 = [v5 genre];
    v35 = [(NSString *)genre isEqual:v34];

    if (!v35)
    {
      goto LABEL_29;
    }
  }

  v36 = self->_mediaType == 0;
  v37 = [v5 mediaType];
  v38 = v37 != 0;

  if (v36 == v38)
  {
    goto LABEL_29;
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    v40 = [v5 mediaType];
    v41 = [(NSString *)mediaType isEqual:v40];

    if (!v41)
    {
      goto LABEL_29;
    }
  }

  v42 = self->_artist == 0;
  v43 = [v5 artist];
  v44 = v43 != 0;

  if (v42 == v44)
  {
    goto LABEL_29;
  }

  artist = self->_artist;
  if (artist)
  {
    v46 = [v5 artist];
    v47 = [(NSString *)artist isEqual:v46];

    if (!v47)
    {
      goto LABEL_29;
    }
  }

  v48 = self->_startDate == 0;
  v49 = [v5 startDate];
  v50 = v49 != 0;

  if (v48 == v50)
  {
    goto LABEL_29;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    v52 = [v5 startDate];
    v53 = [(NSDate *)startDate isEqual:v52];

    if (!v53)
    {
      goto LABEL_29;
    }
  }

  v54 = self->_endDate == 0;
  v55 = [v5 endDate];
  v56 = v55 != 0;

  if (v54 == v56)
  {
LABEL_29:
    v59 = 0;
  }

  else
  {
    endDate = self->_endDate;
    if (endDate)
    {
      v58 = [v5 endDate];
      v59 = [(NSDate *)endDate isEqual:v58];
    }

    else
    {
      v59 = 1;
    }
  }

  return v59 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MOMediaPlaySession *)self isEqualToMediaPlaySession:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_album hash]+ 32 * v3 - v3;
  v5 = [(NSString *)self->_bundleId hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_productId hash]+ 32 * v5 - v5;
  v7 = [(NSString *)self->_genre hash]+ 32 * v6 - v6;
  v8 = [(NSString *)self->_mediaType hash]+ 32 * v7 - v7;
  v9 = [(NSString *)self->_artist hash]+ 32 * v8 - v8;
  v10 = [(NSDate *)self->_startDate hash]+ 32 * v9 - v9;
  return [(NSDate *)self->_endDate hash]+ 32 * v10 - v10;
}

- (MOMediaPlaySession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key title (expected %@, decoded %@)", v7, v9, 0];
      v102 = NSLocalizedDescriptionKey;
      v103 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v12 = [[NSError alloc] initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v11];
      [v4 failWithError:v12];
LABEL_4:
      v13 = 0;
LABEL_43:

      goto LABEL_44;
    }

LABEL_7:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"album"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key album (expected %@, decoded %@)", v9, v10, 0];
        v100 = NSLocalizedDescriptionKey;
        v101 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v17 = [[NSError alloc] initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v12];
        [v4 failWithError:v17];
        v13 = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      v18 = [v4 error];

      if (v18)
      {
        v13 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_opt_class();
        v10 = NSStringFromClass(v19);
        v20 = objc_opt_class();
        v11 = NSStringFromClass(v20);
        v12 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key bundleId (expected %@, decoded %@)", v10, v11, 0];
        v98 = NSLocalizedDescriptionKey;
        v99 = v12;
        v17 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        v21 = [[NSError alloc] initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v17];
        [v4 failWithError:v21];
        v22 = v21;
        v13 = 0;
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      v23 = [v4 error];

      if (v23)
      {
        v13 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productId"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = objc_opt_class();
        v11 = NSStringFromClass(v24);
        v25 = objc_opt_class();
        v12 = NSStringFromClass(v25);
        v17 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key productId (expected %@, decoded %@)", v11, v12, 0];
        v96 = NSLocalizedDescriptionKey;
        v97 = v17;
        v79 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        v26 = [[NSError alloc] initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v79];
        [v4 failWithError:v26];
        v27 = v26;
        v13 = 0;
LABEL_39:

LABEL_40:
        v22 = v79;
        goto LABEL_41;
      }
    }

    else
    {
      v28 = [v4 error];

      if (v28)
      {
        v13 = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v77 = self;
        v29 = objc_opt_class();
        v12 = NSStringFromClass(v29);
        v30 = objc_opt_class();
        v17 = NSStringFromClass(v30);
        v94 = NSLocalizedDescriptionKey;
        v95 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key genre (expected %@, decoded %@)", v12, v17, 0];
        v79 = v95;
        v78 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v31 = [[NSError alloc] initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v78];
        [v4 failWithError:v31];
        v13 = 0;
LABEL_37:

LABEL_38:
        self = v77;
        v27 = v78;
        goto LABEL_39;
      }
    }

    else
    {
      v32 = [v4 error];

      if (v32)
      {
        v13 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v77 = self;
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = objc_opt_class();
        NSStringFromClass(v35);
        v79 = v17 = v34;
        v92 = NSLocalizedDescriptionKey;
        v93 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key mediaType (expected %@, decoded %@)", v34, v79, 0];
        v78 = v93;
        v76 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v36 = [[NSError alloc] initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v76];
        [v4 failWithError:v36];
LABEL_34:
        v13 = 0;
LABEL_35:

LABEL_36:
        v31 = v76;
        goto LABEL_37;
      }
    }

    else
    {
      v37 = [v4 error];

      if (v37)
      {
        goto LABEL_4;
      }
    }

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artist"];
    if (v75)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v77 = self;
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v40 = objc_opt_class();
        v78 = NSStringFromClass(v40);
        v17 = v75;
        v79 = v39;
        v90 = NSLocalizedDescriptionKey;
        v91 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key artist (expected %@, decoded %@)", v39, v78, 0];
        v76 = v91;
        v36 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v41 = [[NSError alloc] initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v36];
        [v4 failWithError:v41];

        goto LABEL_34;
      }
    }

    else
    {
      v43 = [v4 error];

      if (v43)
      {
        v13 = 0;
        v17 = 0;
        goto LABEL_42;
      }
    }

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    if (!v22)
    {
      v13 = 0;
      v17 = v75;
      goto LABEL_41;
    }

    v79 = v22;
    v44 = [v4 error];

    if (v44)
    {
      v13 = 0;
      v17 = v75;
      goto LABEL_40;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v46 = objc_opt_class();
    if ((isKindOfClass & 1) == 0)
    {
      v77 = self;
      v48 = NSStringFromClass(v46);
      v49 = objc_opt_class();
      v76 = NSStringFromClass(v49);
      v78 = v48;
      v36 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key startDate (expected %@, decoded %@)", v48, v76, 0];
      v88 = NSLocalizedDescriptionKey;
      v89 = v36;
      v50 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v51 = [[NSError alloc] initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v50];
      [v4 failWithError:v51];

LABEL_60:
      v13 = 0;
      v17 = v75;
      goto LABEL_35;
    }

    v27 = [v4 decodeObjectOfClass:v46 forKey:@"endDate"];
    if (!v27)
    {
      v13 = 0;
      v17 = v75;
      goto LABEL_39;
    }

    v78 = v27;
    v47 = [v4 error];

    if (v47)
    {
      v13 = 0;
      v17 = v75;
      v27 = v78;
      goto LABEL_39;
    }

    v77 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = [v4 decodeInt32ForKey:@"duration"];
      v70 = [v4 decodeBoolForKey:@"isRemote"];
      if ((v70 & 1) == 0)
      {
        v61 = [v4 error];

        if (v61)
        {
          v13 = 0;
          v17 = v75;
          goto LABEL_38;
        }

        if (([v4 containsValueForKey:@"isRemote"] & 1) == 0)
        {
          v84 = NSLocalizedDescriptionKey;
          v85 = @"Missing serialized value for MOMediaPlay.isRemote";
          v76 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v36 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:1 userInfo:v76];
          [v4 failWithError:v36];
          goto LABEL_60;
        }
      }

      v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceSource"];
      if (v76)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v52 = objc_opt_class();
          v36 = NSStringFromClass(v52);
          v53 = objc_opt_class();
          v74 = NSStringFromClass(v53);
          v71 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key deviceSource (expected %@, decoded %@)", v36, v74, 0];
          v82 = NSLocalizedDescriptionKey;
          v83 = v71;
          v54 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v55 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v54];
          [v4 failWithError:v55];

LABEL_76:
          goto LABEL_60;
        }
      }

      else
      {
        v62 = [v4 error];

        if (v62)
        {
          v13 = 0;
          v17 = v75;
          goto LABEL_36;
        }
      }

      v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bkColor"];
      if (v36)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v63 = objc_opt_class();
          v74 = NSStringFromClass(v63);
          v64 = objc_opt_class();
          v72 = NSStringFromClass(v64);
          v69 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key bkColor (expected %@, decoded %@)", v74, v72, 0];
          v80 = NSLocalizedDescriptionKey;
          v81 = v69;
          v65 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
          v66 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v65];
          [v4 failWithError:v66];

          goto LABEL_76;
        }
      }

      else
      {
        v67 = [v4 error];

        if (v67)
        {
          goto LABEL_60;
        }
      }

      v17 = v75;
      BYTE4(v68) = v70;
      LODWORD(v68) = v73;
      v13 = [(MOMediaPlaySession *)v77 initWithTitle:v5 album:v7 bundleId:v9 productId:v10 genre:v11 mediaType:v12 artist:v75 startDate:v79 endDate:v78 duration:v68 isRemote:v76 deviceSource:v36 bgColor:?];
      v77 = v13;
      goto LABEL_35;
    }

    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    v58 = objc_opt_class();
    v36 = NSStringFromClass(v58);
    v76 = v57;
    v74 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlaySession key endDate (expected %@, decoded %@)", v57, v36, 0];
    v86 = NSLocalizedDescriptionKey;
    v87 = v74;
    v59 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v60 = [[NSError alloc] initWithDomain:@"MOMediaPlaySessionOCNTErrorDomain" code:3 userInfo:v59];
    [v4 failWithError:v60];

    goto LABEL_76;
  }

  v14 = [v4 error];

  if (!v14)
  {
    goto LABEL_7;
  }

  v13 = 0;
LABEL_48:

  return v13;
}

+ (BOOL)isValidThirdParty:(id)a3 bundleCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || ([v6 hasPrefix:@"com.apple."] & 1) != 0)
  {
    goto LABEL_3;
  }

  v9 = [a1 describeCategory:6011];
  if ([v7 isEqualToString:v9])
  {
    goto LABEL_7;
  }

  v10 = [a1 describeCategory:6009];
  if ([v7 isEqualToString:v10])
  {

LABEL_7:
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v12 = [a1 describeCategory:6016];
  v13 = [v7 isEqualToString:v12];

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = 0;
LABEL_9:

  return v8;
}

+ (BOOL)isValidThirdPartyEvent:(id)a3 bundleCategory:(id)a4 mediaTypeString:(id)a5 playTime:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10 || ([v10 hasPrefix:@"com.apple."] & 1) != 0)
  {
    goto LABEL_3;
  }

  v15 = [a1 describeCategory:6011];
  v16 = [v11 isEqualToString:v15];
  if (a6 >= 90.0 && (v16 & 1) != 0)
  {

    goto LABEL_8;
  }

  v17 = [a1 describeCategory:6009];
  v18 = [v11 isEqualToString:v17];
  if (v18)
  {
    if (a6 < 600.0 || !v12)
    {
      goto LABEL_21;
    }

LABEL_16:
    v20 = [v12 lowercaseString];
    v21 = [v20 containsString:@"podcast"];

    if ((v18 & 1) == 0)
    {
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 1;
    goto LABEL_4;
  }

  a1 = [a1 describeCategory:6016];
  v19 = [v11 isEqualToString:a1];
  if (v12 && a6 >= 600.0 && (v19 & 1) != 0)
  {
    goto LABEL_16;
  }

LABEL_21:
LABEL_3:
  v13 = 0;
LABEL_4:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  title = self->_title;
  v16 = v4;
  if (title)
  {
    [v4 encodeObject:title forKey:@"title"];
    v4 = v16;
  }

  album = self->_album;
  if (album)
  {
    [v16 encodeObject:album forKey:@"album"];
    v4 = v16;
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v16 encodeObject:bundleId forKey:@"bundleId"];
    v4 = v16;
  }

  productId = self->_productId;
  if (productId)
  {
    [v16 encodeObject:productId forKey:@"productId"];
    v4 = v16;
  }

  genre = self->_genre;
  if (genre)
  {
    [v16 encodeObject:genre forKey:@"genre"];
    v4 = v16;
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v16 encodeObject:mediaType forKey:@"mediaType"];
    v4 = v16;
  }

  artist = self->_artist;
  if (artist)
  {
    [v16 encodeObject:artist forKey:@"artist"];
    v4 = v16;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    [v16 encodeObject:startDate forKey:@"startDate"];
    v4 = v16;
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [v16 encodeObject:endDate forKey:@"endDate"];
    v4 = v16;
  }

  duration = self->_duration;
  if (duration)
  {
    [v16 encodeInt32:duration forKey:@"duration"];
    v4 = v16;
  }

  [v4 encodeBool:self->_isRemote forKey:@"isRemote"];
  deviceSource = self->_deviceSource;
  if (deviceSource)
  {
    [v16 encodeObject:deviceSource forKey:@"deviceSource"];
  }

  if (self->_bgColor)
  {
    [v16 encodeObject:self->_deviceSource forKey:@"bkColor"];
  }
}

+ (id)redactString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [v4 length];
    if (v5 >> 1 >= 5)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5 >> 1;
    }

    v7 = [v4 substringToIndex:v6];
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%lu", v7, [v4 hash]);
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (id)description
{
  v3 = +[NSCalendar currentCalendar];
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setCalendar:v3];
  [v4 setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
  v5 = [v4 stringFromDate:self->_startDate];
  v6 = [v4 stringFromDate:self->_endDate];
  v7 = [NSString alloc];
  v8 = [(MOMediaPlaySession *)self redactedTitle];
  v9 = [(MOMediaPlaySession *)self redactedAlbum];
  mediaType = self->_mediaType;
  v11 = [v7 initWithFormat:@"<MOMediaPlaySession | title:%@ album:%@ mediaType:%@ bundleId:%@ startDate:%@ endDate:%@ isRemote:%d deviceSource:%@>", v8, v9, mediaType, self->_bundleId, v5, v6, self->_isRemote, self->_deviceSource];

  return v11;
}

+ (id)getMOPlaySessionMediaType:(id)a3 bundleId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && ![v6 hasPrefix:@"com.apple."])
  {
    v9 = &off_1003693D0;
  }

  else if (v5)
  {
    v8 = [v5 lowercaseString];
    if ([v8 containsString:@"music"])
    {
      v9 = &off_100369400;
    }

    else if ([v8 containsString:@"podcast"])
    {
      v9 = &off_100369418;
    }

    else if ([v8 containsString:@"video"])
    {
      v9 = &off_100369430;
    }

    else
    {
      v9 = &off_100369448;
    }
  }

  else
  {
    v9 = &off_1003693E8;
  }

  return v9;
}

+ (id)describeCategory:(int)a3
{
  if ((a3 - 6000) >= 0x16)
  {
    v4 = [NSString stringWithFormat:@"Unknown (%lu)", a3];
  }

  else
  {
    v4 = *(&off_100337BB8 + (a3 - 6000));
  }

  return v4;
}

+ (BOOL)isFirstPartyApp:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithArray:&off_10036DAB8];
  v5 = v4;
  v6 = v3 && ([v4 containsObject:v3] & 1) != 0;

  return v6;
}

- (void)initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 33;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate != nil (in %s:%d)", v1, 0x12u);
}

- (void)initWithTitle:album:bundleId:productId:genre:mediaType:artist:startDate:endDate:duration:isRemote:deviceSource:bgColor:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v2 = 34;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate != nil (in %s:%d)", v1, 0x12u);
}

@end