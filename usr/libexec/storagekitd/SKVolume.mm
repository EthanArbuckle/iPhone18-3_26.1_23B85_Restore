@interface SKVolume
- (SKVolume)initWithDisk:(id)disk filesystem:(id)filesystem name:(id)name;
- (SKVolume)initWithDisk:(id)disk filesystem:(id)filesystem name:(id)name password:(id)password;
- (id)description;
- (id)formatArgs;
- (id)formatter;
- (id)redactedDescription;
@end

@implementation SKVolume

- (SKVolume)initWithDisk:(id)disk filesystem:(id)filesystem name:(id)name
{
  nameCopy = name;
  filesystemCopy = filesystem;
  diskCopy = disk;
  v11 = [[SKVolume alloc] initWithDisk:diskCopy filesystem:filesystemCopy name:nameCopy password:0];

  return v11;
}

- (SKVolume)initWithDisk:(id)disk filesystem:(id)filesystem name:(id)name password:(id)password
{
  diskCopy = disk;
  filesystemCopy = filesystem;
  nameCopy = name;
  passwordCopy = password;
  v20.receiver = self;
  v20.super_class = SKVolume;
  v15 = [(SKVolume *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_disk, disk);
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v16->_password, password);
    if (passwordCopy && ([filesystemCopy isEncrypted] & 1) == 0)
    {
      majorType = [filesystemCopy majorType];
      v18 = +[SKFilesystem filesystemFor:caseSensitive:encrypted:isExtension:](SKFilesystem, "filesystemFor:caseSensitive:encrypted:isExtension:", majorType, [filesystemCopy isCaseSensitive], 1, objc_msgSend(filesystemCopy, "isExtension"));

      filesystemCopy = v18;
    }

    objc_storeStrong(&v16->_filesystem, filesystemCopy);
  }

  return v16;
}

- (id)formatArgs
{
  v3 = +[NSMutableArray array];
  filesystem = [(SKVolume *)self filesystem];
  formatArgs = [filesystem formatArgs];
  v6 = [formatArgs componentsSeparatedByString:@" "];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 isEqualToString:&stru_10004A890];

    if ((v8 & 1) == 0)
    {
      [v3 addObjectsFromArray:v6];
    }
  }

  password = [(SKVolume *)self password];
  if (password)
  {
    v10 = password;
    password2 = [(SKVolume *)self password];
    v12 = [password2 length];

    if (v12)
    {
      [v3 addObject:@"-E"];
      [v3 addObject:@"-S"];
      password3 = [(SKVolume *)self password];
      [v3 addObject:password3];
    }
  }

  [v3 addObject:@"-v"];
  name = [(SKVolume *)self name];
  [v3 addObject:name];

  disk = [(SKVolume *)self disk];
  diskIdentifier = [disk diskIdentifier];
  v17 = [NSString stringWithFormat:@"/dev/%@", diskIdentifier];
  [v3 addObject:v17];

  return v3;
}

- (id)formatter
{
  filesystem = [(SKVolume *)self filesystem];
  formatExecutable = [filesystem formatExecutable];

  return formatExecutable;
}

- (id)redactedDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  disk = [(SKVolume *)self disk];
  filesystem = [(SKVolume *)self filesystem];
  v7 = [NSString stringWithFormat:@"<%@: { disk: %@, filesystem: %@}>", v4, disk, filesystem];

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  disk = [(SKVolume *)self disk];
  filesystem = [(SKVolume *)self filesystem];
  name = [(SKVolume *)self name];
  v8 = [NSString stringWithFormat:@"<%@: { disk: %@, filesystem: %@, name: %@}>", v4, disk, filesystem, name];

  return v8;
}

@end