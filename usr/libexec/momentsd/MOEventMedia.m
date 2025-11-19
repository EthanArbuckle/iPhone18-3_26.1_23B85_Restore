@interface MOEventMedia
- (MOEventMedia)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventMedia

- (void)encodeWithCoder:(id)a3
{
  mediaTitle = self->_mediaTitle;
  v5 = a3;
  [v5 encodeObject:mediaTitle forKey:@"mediaTitle"];
  [v5 encodeObject:self->_mediaAlbum forKey:@"mediaAlbum"];
  [v5 encodeObject:self->_mediaPlayerBundleId forKey:@"mediaPlayerBundleId"];
  [v5 encodeObject:self->_mediaProductId forKey:@"mediaProductId"];
  [v5 encodeObject:self->_mediaGenre forKey:@"mediaGenre"];
  [v5 encodeObject:self->_mediaType forKey:@"mediaType"];
  [v5 encodeObject:self->_mediaArtist forKey:@"mediaArtist"];
  [v5 encodeObject:self->_mediaRepetitions forKey:@"mediaRepetitions"];
  [v5 encodeObject:self->_mediaSumTimePlayed forKey:@"mediaSumTimePlayed"];
  [v5 encodeObject:self->_mediaPlaySessions forKey:@"mediaPlaySessions"];
  [v5 encodeObject:self->_mediaFirstPartyTimePlayedRatio forKey:@"firstPartyTimePlayedRatio"];
}

- (MOEventMedia)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = MOEventMedia;
  v5 = [(MOEventMedia *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaTitle"];
    mediaTitle = v5->_mediaTitle;
    v5->_mediaTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaAlbum"];
    mediaAlbum = v5->_mediaAlbum;
    v5->_mediaAlbum = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaPlayerBundleId"];
    mediaPlayerBundleId = v5->_mediaPlayerBundleId;
    v5->_mediaPlayerBundleId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaProductId"];
    mediaProductId = v5->_mediaProductId;
    v5->_mediaProductId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaGenre"];
    mediaGenre = v5->_mediaGenre;
    v5->_mediaGenre = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    mediaType = v5->_mediaType;
    v5->_mediaType = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaArtist"];
    mediaArtist = v5->_mediaArtist;
    v5->_mediaArtist = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaRepetitions"];
    mediaRepetitions = v5->_mediaRepetitions;
    v5->_mediaRepetitions = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaSumTimePlayed"];
    mediaSumTimePlayed = v5->_mediaSumTimePlayed;
    v5->_mediaSumTimePlayed = v22;

    v24 = objc_autoreleasePoolPush();
    v25 = [NSSet alloc];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v25 initWithObjects:{v26, v27, v28, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v24);
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"mediaPlaySessions"];
    mediaPlaySessions = v5->_mediaPlaySessions;
    v5->_mediaPlaySessions = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstPartyTimePlayedRatio"];
    mediaFirstPartyTimePlayedRatio = v5->_mediaFirstPartyTimePlayedRatio;
    v5->_mediaFirstPartyTimePlayedRatio = v32;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventMedia);
  objc_storeStrong(&v4->_mediaType, self->_mediaType);
  objc_storeStrong(&v4->_mediaAlbum, self->_mediaAlbum);
  objc_storeStrong(&v4->_mediaArtist, self->_mediaArtist);
  objc_storeStrong(&v4->_mediaPlayerBundleId, self->_mediaPlayerBundleId);
  objc_storeStrong(&v4->_mediaProductId, self->_mediaProductId);
  objc_storeStrong(&v4->_mediaGenre, self->_mediaGenre);
  objc_storeStrong(&v4->_mediaRepetitions, self->_mediaRepetitions);
  objc_storeStrong(&v4->_mediaSumTimePlayed, self->_mediaSumTimePlayed);
  objc_storeStrong(&v4->_mediaPlaySessions, self->_mediaPlaySessions);
  objc_storeStrong(&v4->_mediaTitle, self->_mediaTitle);
  objc_storeStrong(&v4->_mediaFirstPartyTimePlayedRatio, self->_mediaFirstPartyTimePlayedRatio);
  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NSString *)self->_mediaTitle mask];
  v5 = [(NSString *)self->_mediaAlbum mask];
  v6 = [v3 initWithFormat:@"mediaTitle, %@, mediaAlbum, %@, mediaPlayerBundleId, %@, mediaProductId, %@, mediaType, %@, mediaRepetitions, %@, mediaSumTimePlayed, %@, number of media play events, %lu", v4, v5, self->_mediaPlayerBundleId, self->_mediaProductId, self->_mediaType, self->_mediaRepetitions, self->_mediaSumTimePlayed, -[NSArray count](self->_mediaPlaySessions, "count")];

  return v6;
}

@end