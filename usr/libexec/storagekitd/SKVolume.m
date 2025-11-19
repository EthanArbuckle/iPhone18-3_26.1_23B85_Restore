@interface SKVolume
- (SKVolume)initWithDisk:(id)a3 filesystem:(id)a4 name:(id)a5;
- (SKVolume)initWithDisk:(id)a3 filesystem:(id)a4 name:(id)a5 password:(id)a6;
- (id)description;
- (id)formatArgs;
- (id)formatter;
- (id)redactedDescription;
@end

@implementation SKVolume

- (SKVolume)initWithDisk:(id)a3 filesystem:(id)a4 name:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[SKVolume alloc] initWithDisk:v10 filesystem:v9 name:v8 password:0];

  return v11;
}

- (SKVolume)initWithDisk:(id)a3 filesystem:(id)a4 name:(id)a5 password:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SKVolume;
  v15 = [(SKVolume *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_disk, a3);
    objc_storeStrong(&v16->_name, a5);
    objc_storeStrong(&v16->_password, a6);
    if (v14 && ([v12 isEncrypted] & 1) == 0)
    {
      v17 = [v12 majorType];
      v18 = +[SKFilesystem filesystemFor:caseSensitive:encrypted:isExtension:](SKFilesystem, "filesystemFor:caseSensitive:encrypted:isExtension:", v17, [v12 isCaseSensitive], 1, objc_msgSend(v12, "isExtension"));

      v12 = v18;
    }

    objc_storeStrong(&v16->_filesystem, v12);
  }

  return v16;
}

- (id)formatArgs
{
  v3 = +[NSMutableArray array];
  v4 = [(SKVolume *)self filesystem];
  v5 = [v4 formatArgs];
  v6 = [v5 componentsSeparatedByString:@" "];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 isEqualToString:&stru_10004A890];

    if ((v8 & 1) == 0)
    {
      [v3 addObjectsFromArray:v6];
    }
  }

  v9 = [(SKVolume *)self password];
  if (v9)
  {
    v10 = v9;
    v11 = [(SKVolume *)self password];
    v12 = [v11 length];

    if (v12)
    {
      [v3 addObject:@"-E"];
      [v3 addObject:@"-S"];
      v13 = [(SKVolume *)self password];
      [v3 addObject:v13];
    }
  }

  [v3 addObject:@"-v"];
  v14 = [(SKVolume *)self name];
  [v3 addObject:v14];

  v15 = [(SKVolume *)self disk];
  v16 = [v15 diskIdentifier];
  v17 = [NSString stringWithFormat:@"/dev/%@", v16];
  [v3 addObject:v17];

  return v3;
}

- (id)formatter
{
  v2 = [(SKVolume *)self filesystem];
  v3 = [v2 formatExecutable];

  return v3;
}

- (id)redactedDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SKVolume *)self disk];
  v6 = [(SKVolume *)self filesystem];
  v7 = [NSString stringWithFormat:@"<%@: { disk: %@, filesystem: %@}>", v4, v5, v6];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(SKVolume *)self disk];
  v6 = [(SKVolume *)self filesystem];
  v7 = [(SKVolume *)self name];
  v8 = [NSString stringWithFormat:@"<%@: { disk: %@, filesystem: %@, name: %@}>", v4, v5, v6, v7];

  return v8;
}

@end