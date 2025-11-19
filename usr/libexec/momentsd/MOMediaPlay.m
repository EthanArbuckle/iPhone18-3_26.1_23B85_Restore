@interface MOMediaPlay
+ (id)mediaPlayWithTitle:(id)a3 album:(id)a4 bundleId:(id)a5 productId:(id)a6 genre:(id)a7 mediaType:(id)a8 artist:(id)a9 sumTimePlayed:(id)a10 repetitions:(int)a11 mediaPlaySessions:(id)a12 firstPartyTimePlayedRatio:(id)a13;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMediaPlay:(id)a3;
- (MOMediaPlay)initWithCoder:(id)a3;
- (MOMediaPlay)initWithTitle:(id)a3 album:(id)a4 bundleId:(id)a5 productId:(id)a6 genre:(id)a7 mediaType:(id)a8 artist:(id)a9 sumTimePlayed:(id)a10 repetitions:(int)a11 mediaPlaySessions:(id)a12 firstPartyTimePlayedRatio:(id)a13;
- (id)copyWithReplacementAlbum:(id)a3;
- (id)copyWithReplacementArtist:(id)a3;
- (id)copyWithReplacementBundleId:(id)a3;
- (id)copyWithReplacementGenre:(id)a3;
- (id)copyWithReplacementMediaPlaySessions:(id)a3;
- (id)copyWithReplacementMediaType:(id)a3;
- (id)copyWithReplacementProductId:(id)a3;
- (id)copyWithReplacementSumTimePlayed:(id)a3;
- (id)copyWithReplacementTitle:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOMediaPlay

- (MOMediaPlay)initWithTitle:(id)a3 album:(id)a4 bundleId:(id)a5 productId:(id)a6 genre:(id)a7 mediaType:(id)a8 artist:(id)a9 sumTimePlayed:(id)a10 repetitions:(int)a11 mediaPlaySessions:(id)a12 firstPartyTimePlayedRatio:(id)a13
{
  v37 = a3;
  v36 = a4;
  v30 = a5;
  v35 = a5;
  v34 = a6;
  v31 = a7;
  v33 = a7;
  v32 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a12;
  v22 = a13;
  if (!v21)
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOMediaPlay initWithTitle:v23 album:? bundleId:? productId:? genre:? mediaType:? artist:? sumTimePlayed:? repetitions:? mediaPlaySessions:? firstPartyTimePlayedRatio:?];
    }

    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MOMediaPlay.m" lineNumber:20 description:{@"Invalid parameter not satisfying: mediaPlaySessions != nil (in %s:%d)", "-[MOMediaPlay initWithTitle:album:bundleId:productId:genre:mediaType:artist:sumTimePlayed:repetitions:mediaPlaySessions:firstPartyTimePlayedRatio:]", 20}];
  }

  v38.receiver = self;
  v38.super_class = MOMediaPlay;
  v25 = [(MOMediaPlay *)&v38 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_title, a3);
    objc_storeStrong(&v26->_album, a4);
    objc_storeStrong(&v26->_bundleId, v30);
    objc_storeStrong(&v26->_productId, a6);
    objc_storeStrong(&v26->_genre, v31);
    objc_storeStrong(&v26->_mediaType, a8);
    objc_storeStrong(&v26->_artist, a9);
    objc_storeStrong(&v26->_sumTimePlayed, a10);
    v26->_repetitions = a11;
    objc_storeStrong(&v26->_mediaPlaySessions, a12);
    objc_storeStrong(&v26->_firstPartyTimePlayedRatio, a13);
  }

  return v26;
}

+ (id)mediaPlayWithTitle:(id)a3 album:(id)a4 bundleId:(id)a5 productId:(id)a6 genre:(id)a7 mediaType:(id)a8 artist:(id)a9 sumTimePlayed:(id)a10 repetitions:(int)a11 mediaPlaySessions:(id)a12 firstPartyTimePlayedRatio:(id)a13
{
  v19 = a13;
  v20 = a12;
  v21 = a10;
  v22 = a9;
  v23 = a8;
  v24 = a7;
  v25 = a6;
  v26 = a5;
  v27 = a4;
  v28 = a3;
  LODWORD(v30) = a11;
  v32 = [[a1 alloc] initWithTitle:v28 album:v27 bundleId:v26 productId:v25 genre:v24 mediaType:v23 artist:v22 sumTimePlayed:v21 repetitions:v30 mediaPlaySessions:v20 firstPartyTimePlayedRatio:v19];

  return v32;
}

- (id)copyWithReplacementTitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  artist = self->_artist;
  mediaPlaySessions = self->_mediaPlaySessions;
  LODWORD(v10) = self->_repetitions;
  v8 = [v5 initWithTitle:v4 album:self->_album bundleId:self->_bundleId productId:self->_productId genre:self->_genre mediaType:self->_mediaType artist:artist sumTimePlayed:self->_sumTimePlayed repetitions:v10 mediaPlaySessions:mediaPlaySessions firstPartyTimePlayedRatio:self->_firstPartyTimePlayedRatio];

  return v8;
}

- (id)copyWithReplacementAlbum:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_repetitions;
  v6 = [v5 initWithTitle:self->_title album:v4 bundleId:self->_bundleId productId:self->_productId genre:self->_genre mediaType:self->_mediaType artist:self->_artist sumTimePlayed:self->_sumTimePlayed repetitions:v8 mediaPlaySessions:self->_mediaPlaySessions firstPartyTimePlayedRatio:self->_firstPartyTimePlayedRatio];

  return v6;
}

- (id)copyWithReplacementBundleId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  artist = self->_artist;
  mediaPlaySessions = self->_mediaPlaySessions;
  LODWORD(v10) = self->_repetitions;
  v8 = [v5 initWithTitle:self->_title album:self->_album bundleId:v4 productId:self->_productId genre:self->_genre mediaType:self->_mediaType artist:artist sumTimePlayed:self->_sumTimePlayed repetitions:v10 mediaPlaySessions:mediaPlaySessions firstPartyTimePlayedRatio:self->_firstPartyTimePlayedRatio];

  return v8;
}

- (id)copyWithReplacementProductId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_repetitions;
  v6 = [v5 initWithTitle:self->_title album:self->_album bundleId:self->_bundleId productId:v4 genre:self->_genre mediaType:self->_mediaType artist:self->_artist sumTimePlayed:self->_sumTimePlayed repetitions:v8 mediaPlaySessions:self->_mediaPlaySessions firstPartyTimePlayedRatio:self->_firstPartyTimePlayedRatio];

  return v6;
}

- (id)copyWithReplacementGenre:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  artist = self->_artist;
  mediaPlaySessions = self->_mediaPlaySessions;
  LODWORD(v10) = self->_repetitions;
  v8 = [v5 initWithTitle:self->_title album:self->_album bundleId:self->_bundleId productId:self->_productId genre:v4 mediaType:self->_mediaType artist:artist sumTimePlayed:self->_sumTimePlayed repetitions:v10 mediaPlaySessions:mediaPlaySessions firstPartyTimePlayedRatio:self->_firstPartyTimePlayedRatio];

  return v8;
}

- (id)copyWithReplacementMediaType:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_repetitions;
  v6 = [v5 initWithTitle:self->_title album:self->_album bundleId:self->_bundleId productId:self->_productId genre:self->_genre mediaType:v4 artist:self->_artist sumTimePlayed:self->_sumTimePlayed repetitions:v8 mediaPlaySessions:self->_mediaPlaySessions firstPartyTimePlayedRatio:self->_firstPartyTimePlayedRatio];

  return v6;
}

- (id)copyWithReplacementArtist:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  mediaPlaySessions = self->_mediaPlaySessions;
  LODWORD(v9) = self->_repetitions;
  v7 = [v5 initWithTitle:self->_title album:self->_album bundleId:self->_bundleId productId:self->_productId genre:self->_genre mediaType:self->_mediaType artist:v4 sumTimePlayed:self->_sumTimePlayed repetitions:v9 mediaPlaySessions:mediaPlaySessions firstPartyTimePlayedRatio:self->_firstPartyTimePlayedRatio];

  return v7;
}

- (id)copyWithReplacementSumTimePlayed:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_repetitions;
  v6 = [v5 initWithTitle:self->_title album:self->_album bundleId:self->_bundleId productId:self->_productId genre:self->_genre mediaType:self->_mediaType artist:self->_artist sumTimePlayed:v4 repetitions:v8 mediaPlaySessions:self->_mediaPlaySessions firstPartyTimePlayedRatio:self->_firstPartyTimePlayedRatio];

  return v6;
}

- (id)copyWithReplacementMediaPlaySessions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_repetitions;
  v6 = [v5 initWithTitle:self->_title album:self->_album bundleId:self->_bundleId productId:self->_productId genre:self->_genre mediaType:self->_mediaType artist:self->_artist sumTimePlayed:self->_sumTimePlayed repetitions:v8 mediaPlaySessions:v4 firstPartyTimePlayedRatio:self->_firstPartyTimePlayedRatio];

  return v6;
}

- (BOOL)isEqualToMediaPlay:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_30;
  }

  v6 = self->_title == 0;
  v7 = [v4 title];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_30;
  }

  title = self->_title;
  if (title)
  {
    v10 = [v5 title];
    v11 = [(NSString *)title isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  v12 = self->_album == 0;
  v13 = [v5 album];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_30;
  }

  album = self->_album;
  if (album)
  {
    v16 = [v5 album];
    v17 = [(NSString *)album isEqual:v16];

    if (!v17)
    {
      goto LABEL_30;
    }
  }

  v18 = self->_bundleId == 0;
  v19 = [v5 bundleId];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_30;
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    v22 = [v5 bundleId];
    v23 = [(NSString *)bundleId isEqual:v22];

    if (!v23)
    {
      goto LABEL_30;
    }
  }

  v24 = self->_productId == 0;
  v25 = [v5 productId];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_30;
  }

  productId = self->_productId;
  if (productId)
  {
    v28 = [v5 productId];
    v29 = [(NSString *)productId isEqual:v28];

    if (!v29)
    {
      goto LABEL_30;
    }
  }

  v30 = self->_genre == 0;
  v31 = [v5 genre];
  v32 = v31 != 0;

  if (v30 == v32)
  {
    goto LABEL_30;
  }

  genre = self->_genre;
  if (genre)
  {
    v34 = [v5 genre];
    v35 = [(NSString *)genre isEqual:v34];

    if (!v35)
    {
      goto LABEL_30;
    }
  }

  v36 = self->_mediaType == 0;
  v37 = [v5 mediaType];
  v38 = v37 != 0;

  if (v36 == v38)
  {
    goto LABEL_30;
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    v40 = [v5 mediaType];
    v41 = [(NSString *)mediaType isEqual:v40];

    if (!v41)
    {
      goto LABEL_30;
    }
  }

  v42 = self->_artist == 0;
  v43 = [v5 artist];
  v44 = v43 != 0;

  if (v42 == v44)
  {
    goto LABEL_30;
  }

  artist = self->_artist;
  if (artist)
  {
    v46 = [v5 artist];
    v47 = [(NSString *)artist isEqual:v46];

    if (!v47)
    {
      goto LABEL_30;
    }
  }

  v48 = self->_sumTimePlayed == 0;
  v49 = [v5 sumTimePlayed];
  v50 = v49 != 0;

  if (v48 == v50)
  {
    goto LABEL_30;
  }

  sumTimePlayed = self->_sumTimePlayed;
  if (sumTimePlayed)
  {
    v52 = [v5 sumTimePlayed];
    v53 = [(NSNumber *)sumTimePlayed isEqual:v52];

    if (!v53)
    {
      goto LABEL_30;
    }
  }

  repetitions = self->_repetitions;
  if (repetitions != [v5 repetitions] || (v55 = self->_mediaPlaySessions == 0, objc_msgSend(v5, "mediaPlaySessions"), v56 = objc_claimAutoreleasedReturnValue(), v57 = v56 != 0, v56, v55 == v57))
  {
LABEL_30:
    v60 = 0;
  }

  else
  {
    mediaPlaySessions = self->_mediaPlaySessions;
    if (mediaPlaySessions)
    {
      v59 = [v5 mediaPlaySessions];
      v60 = [(NSArray *)mediaPlaySessions isEqual:v59];
    }

    else
    {
      v60 = 1;
    }
  }

  return v60 & 1;
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
    v6 = [(MOMediaPlay *)self isEqualToMediaPlay:v5];
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
  v10 = [(NSNumber *)self->_sumTimePlayed hash];
  v11 = self->_repetitions - &v10[32 * v9 - v9] + 32 * &v10[32 * v9 - v9];
  return [(NSArray *)self->_mediaPlaySessions hash]+ 32 * v11 - v11;
}

- (MOMediaPlay)initWithCoder:(id)a3
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
      v10 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key title (expected %@, decoded %@)", v7, v9, 0];
      v101 = NSLocalizedDescriptionKey;
      v102 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      v12 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v11];
      [v4 failWithError:v12];
      v13 = 0;
LABEL_42:

      goto LABEL_43;
    }

LABEL_6:
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
        v11 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key album (expected %@, decoded %@)", v9, v10, 0];
        v99 = NSLocalizedDescriptionKey;
        v100 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v17 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v12];
        [v4 failWithError:v17];
        v13 = 0;
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {
      v18 = [v4 error];

      if (v18)
      {
        v13 = 0;
LABEL_46:

        goto LABEL_47;
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v78 = self;
        v19 = objc_opt_class();
        v10 = NSStringFromClass(v19);
        v20 = objc_opt_class();
        v11 = NSStringFromClass(v20);
        v12 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key bundleId (expected %@, decoded %@)", v10, v11, 0];
        v97 = NSLocalizedDescriptionKey;
        v98 = v12;
        v17 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v21 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v17];
        [v4 failWithError:v21];
        v13 = 0;
LABEL_39:

LABEL_40:
        self = v78;
        goto LABEL_41;
      }
    }

    else
    {
      v22 = [v4 error];

      if (v22)
      {
        v13 = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productId"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v78 = self;
        v23 = objc_opt_class();
        v11 = NSStringFromClass(v23);
        v24 = objc_opt_class();
        v12 = NSStringFromClass(v24);
        v17 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key productId (expected %@, decoded %@)", v11, v12, 0];
        v95 = NSLocalizedDescriptionKey;
        v96 = v17;
        v77 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        v25 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v77];
        [v4 failWithError:v25];
        v13 = 0;
LABEL_37:

LABEL_38:
        v21 = v77;
        goto LABEL_39;
      }
    }

    else
    {
      v26 = [v4 error];

      if (v26)
      {
        v13 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    v78 = self;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v27 = objc_opt_class();
        v12 = NSStringFromClass(v27);
        v28 = objc_opt_class();
        v17 = NSStringFromClass(v28);
        v93 = NSLocalizedDescriptionKey;
        v94 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key genre (expected %@, decoded %@)", v12, v17, 0];
        v77 = v94;
        v25 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        v29 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v25];
        [v4 failWithError:v29];
        v30 = v29;
LABEL_35:
        v13 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      v31 = [v4 error];

      if (v31)
      {
        v13 = 0;
LABEL_43:

        goto LABEL_44;
      }
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = objc_opt_class();
        NSStringFromClass(v34);
        v77 = v17 = v33;
        v25 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key mediaType (expected %@, decoded %@)", v33, v77, 0];
        v91 = NSLocalizedDescriptionKey;
        v92 = v25;
        v74 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v35 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v74];
        [v4 failWithError:v35];

LABEL_34:
        v30 = v74;
        goto LABEL_35;
      }
    }

    else
    {
      v36 = [v4 error];

      if (v36)
      {
        v13 = 0;
        goto LABEL_42;
      }
    }

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artist"];
    if (v73)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v37 = objc_opt_class();
        v77 = NSStringFromClass(v37);
        v38 = objc_opt_class();
        v25 = NSStringFromClass(v38);
        v17 = v73;
        v74 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key artist (expected %@, decoded %@)", v77, v25, 0];
        v89 = NSLocalizedDescriptionKey;
        v90 = v74;
        v69 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v39 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v69];
        [v4 failWithError:v39];

        goto LABEL_34;
      }
    }

    else
    {
      v41 = [v4 error];

      if (v41)
      {
        v13 = 0;
        v17 = 0;
        goto LABEL_40;
      }
    }

    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sumTimePlayed"];
    if (v77)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v42 = objc_opt_class();
        v25 = NSStringFromClass(v42);
        v43 = objc_opt_class();
        v75 = NSStringFromClass(v43);
        v70 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key sumTimePlayed (expected %@, decoded %@)", v25, v75, 0];
        v87 = NSLocalizedDescriptionKey;
        v88 = v70;
        v44 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v45 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v44];
        [v4 failWithError:v45];

LABEL_65:
        v30 = v75;
LABEL_66:
        v13 = 0;
        v17 = v73;
        goto LABEL_36;
      }
    }

    else
    {
      v46 = [v4 error];

      if (v46)
      {
        goto LABEL_61;
      }
    }

    v71 = [v4 decodeInt64ForKey:@"repetitions"];
    if (v71)
    {
      goto LABEL_55;
    }

    v55 = [v4 error];

    if (!v55)
    {
      if (([v4 containsValueForKey:@"repetitions"] & 1) == 0)
      {
        v85 = NSLocalizedDescriptionKey;
        v86 = @"Missing serialized value for MOMediaPlay.repetitions";
        v25 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v61 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:1 userInfo:v25];
        [v4 failWithError:v61];
        v30 = v61;
        goto LABEL_66;
      }

LABEL_55:
      v47 = [NSSet alloc];
      v48 = objc_opt_class();
      v49 = [v47 initWithObjects:{v48, objc_opt_class(), 0}];
      v25 = [v4 decodeObjectOfClasses:v49 forKey:@"mediaPlaySessions"];

      if (!v25)
      {
        v67 = 0;
        v56 = [v4 error];

        v17 = v73;
        if (v56)
        {
          v13 = 0;
          v25 = 0;
          goto LABEL_37;
        }

        v83 = NSLocalizedDescriptionKey;
        v84 = @"Retrieved nil serialized value for nonnull MOMediaPlay.mediaPlaySessions";
        v62 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v63 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:2 userInfo:v62];
        [v4 failWithError:v63];

        v30 = v62;
        goto LABEL_70;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v57 = objc_opt_class();
        v75 = NSStringFromClass(v57);
        v58 = objc_opt_class();
        v70 = NSStringFromClass(v58);
        v68 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key mediaPlaySessions (expected %@, decoded %@)", v75, v70, 0];
        v81 = NSLocalizedDescriptionKey;
        v82 = v68;
        v59 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v60 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v59];
        [v4 failWithError:v60];

        goto LABEL_65;
      }

      v67 = v25;
      v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstPartyTimePlayedRatio"];
      if (v76)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v50 = objc_opt_class();
          v66 = NSStringFromClass(v50);
          v51 = objc_opt_class();
          v72 = NSStringFromClass(v51);
          v52 = [[NSString alloc] initWithFormat:@"Unarchived unexpected class for MOMediaPlay key firstPartyTimePlayedRatio (expected %@, decoded %@)", v66, v72, 0];
          v79 = NSLocalizedDescriptionKey;
          v80 = v52;
          v53 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v54 = [[NSError alloc] initWithDomain:@"MOMediaPlayOCNTErrorDomain" code:3 userInfo:v53];
          [v4 failWithError:v54];

          v17 = v73;
          v30 = v76;
LABEL_70:
          v13 = 0;
          v25 = v67;
          goto LABEL_36;
        }
      }

      else
      {
        v64 = [v4 error];

        if (v64)
        {
          v13 = 0;
          v17 = v73;
LABEL_74:
          v30 = v76;
          goto LABEL_36;
        }
      }

      v17 = v73;
      LODWORD(v65) = v71;
      v13 = [(MOMediaPlay *)v78 initWithTitle:v5 album:v7 bundleId:v9 productId:v10 genre:v11 mediaType:v12 artist:v73 sumTimePlayed:v77 repetitions:v65 mediaPlaySessions:v25 firstPartyTimePlayedRatio:v76];
      v78 = v13;
      goto LABEL_74;
    }

LABEL_61:
    v13 = 0;
    v17 = v73;
    goto LABEL_38;
  }

  v14 = [v4 error];

  if (!v14)
  {
    goto LABEL_6;
  }

  v13 = 0;
LABEL_47:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  title = self->_title;
  v15 = v4;
  if (title)
  {
    [v4 encodeObject:title forKey:@"title"];
    v4 = v15;
  }

  album = self->_album;
  if (album)
  {
    [v15 encodeObject:album forKey:@"album"];
    v4 = v15;
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v15 encodeObject:bundleId forKey:@"bundleId"];
    v4 = v15;
  }

  productId = self->_productId;
  if (productId)
  {
    [v15 encodeObject:productId forKey:@"productId"];
    v4 = v15;
  }

  genre = self->_genre;
  if (genre)
  {
    [v15 encodeObject:genre forKey:@"genre"];
    v4 = v15;
  }

  mediaType = self->_mediaType;
  if (mediaType)
  {
    [v15 encodeObject:mediaType forKey:@"mediaType"];
    v4 = v15;
  }

  artist = self->_artist;
  if (artist)
  {
    [v15 encodeObject:artist forKey:@"artist"];
    v4 = v15;
  }

  sumTimePlayed = self->_sumTimePlayed;
  if (sumTimePlayed)
  {
    [v15 encodeObject:sumTimePlayed forKey:@"sumTimePlayed"];
    v4 = v15;
  }

  [v4 encodeInt64:self->_repetitions forKey:@"repetitions"];
  mediaPlaySessions = self->_mediaPlaySessions;
  if (mediaPlaySessions)
  {
    [v15 encodeObject:mediaPlaySessions forKey:@"mediaPlaySessions"];
  }

  firstPartyTimePlayedRatio = self->_firstPartyTimePlayedRatio;
  if (firstPartyTimePlayedRatio)
  {
    [v15 encodeObject:firstPartyTimePlayedRatio forKey:@"firstPartyTimePlayedRatio"];
  }
}

- (id)description
{
  v3 = [NSString alloc];
  v10 = *&self->_bundleId;
  v11 = *&self->_title;
  v9 = *&self->_genre;
  artist = self->_artist;
  sumTimePlayed = self->_sumTimePlayed;
  v6 = [NSNumber numberWithInt:self->_repetitions];
  v7 = [v3 initWithFormat:@"<MOMediaPlay | title:%@ album:%@ bundleId:%@ productId:%@ genre:%@ mediaType:%@ artist:%@ sumTimePlayed:%@ repetitions:%@ mediaPlaySessions:%@>", v11, v10, v9, artist, sumTimePlayed, v6, self->_mediaPlaySessions];

  return v7;
}

- (void)initWithTitle:(os_log_t)log album:bundleId:productId:genre:mediaType:artist:sumTimePlayed:repetitions:mediaPlaySessions:firstPartyTimePlayedRatio:.cold.1(os_log_t log)
{
  v1 = 136315394;
  v2 = "[MOMediaPlay initWithTitle:album:bundleId:productId:genre:mediaType:artist:sumTimePlayed:repetitions:mediaPlaySessions:firstPartyTimePlayedRatio:]";
  v3 = 1024;
  v4 = 20;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mediaPlaySessions != nil (in %s:%d)", &v1, 0x12u);
}

@end