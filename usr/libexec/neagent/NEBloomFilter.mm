@interface NEBloomFilter
+ (BOOL)mmapFromFile:(const char *)file bloomFilter:(ne_bloom_filter *)filter;
+ (char)mmapToFile:(const char *)file data:(char *)data dataLength:(unsigned int)length numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes murmurSeed:(unsigned int)seed tag:(id)tag;
+ (double)getFalsePositiveProbability:(unsigned int)probability numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes;
- (BOOL)contains:(id)contains;
- (NEBloomFilter)initWithData:(id)data numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes murmurSeed:(unsigned int)seed mmapFilename:(id)filename tag:(id)tag;
- (id)getFilterTag;
- (id)initFromFile:(id)file;
- (void)insert:(id)insert;
@end

@implementation NEBloomFilter

- (id)getFilterTag
{
  v2 = [[NSString alloc] initWithData:self->_tag encoding:4];

  return v2;
}

- (BOOL)contains:(id)contains
{
  bitVectorBuffer = self->_bitVectorBuffer;
  containsCopy = contains;
  bytes = [(NSData *)bitVectorBuffer bytes];
  numberOfBits = self->_numberOfBits;
  numberOfHashes = self->_numberOfHashes;
  murmurSeed = self->_murmurSeed;
  uTF8String = [containsCopy UTF8String];

  return [NEBloomFilter containsWithBitmap:bytes numberOfBits:numberOfBits numberOfHashes:numberOfHashes murmurSeed:murmurSeed value:uTF8String];
}

- (void)insert:(id)insert
{
  bitVectorBuffer = self->_bitVectorBuffer;
  insertCopy = insert;
  bytes = [(NSData *)bitVectorBuffer bytes];
  numberOfBits = self->_numberOfBits;
  numberOfHashes = self->_numberOfHashes;
  murmurSeed = self->_murmurSeed;
  uTF8String = [insertCopy UTF8String];

  [NEBloomFilter insertWithBitmap:bytes numberOfBits:numberOfBits numberOfHashes:numberOfHashes murmurSeed:murmurSeed value:uTF8String];
}

- (id)initFromFile:(id)file
{
  fileCopy = file;
  v20.receiver = self;
  v20.super_class = NEBloomFilter;
  v5 = [(NEBloomFilter *)&v20 init];
  if (!v5)
  {
    v16 = 0;
    goto LABEL_22;
  }

  if (!fileCopy)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v27 = 138412290;
      *&v27[4] = v5;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ - initFromFile: Invalid params", v27, 0xCu);
    }

    goto LABEL_17;
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v27 = 0u;
  if (+[NEBloomFilter mmapFromFile:bloomFilter:](NEBloomFilter, "mmapFromFile:bloomFilter:", [fileCopy UTF8String], v27))
  {
    if (v30 && HIDWORD(v28))
    {
      *(v5 + 12) = v28;
      *(v5 + 5) = DWORD2(v28);
      v6 = [NSData alloc];
      v7 = [v6 initWithBytes:v30 length:HIDWORD(v28)];
      v8 = *(v5 + 5);
      *(v5 + 5) = v7;

      v9 = -[NEBitVector initWithBitMap:bitmapSize:bitCount:]([NEBitVector alloc], "initWithBitMap:bitmapSize:bitCount:", [*(v5 + 5) bytes], objc_msgSend(*(v5 + 5), "length"), *(v5 + 3));
      v10 = *(v5 + 6);
      *(v5 + 6) = v9;

      if (v29 && *(&v29 + 1))
      {
        v11 = [NSData alloc];
        v12 = [v11 initWithBytes:*(&v29 + 1) length:v29];
        v13 = *(v5 + 4);
        *(v5 + 4) = v12;
      }

      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(v5 + 4);
        *buf = 138412802;
        v22 = v5;
        v23 = 2112;
        v24 = fileCopy;
        v25 = 2112;
        v26 = v15;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@ - initFromFile: retrieved bloom filter data from mmap file %@ tag <%@>", buf, 0x20u);
      }
    }

    else
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = fileCopy;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ - initFromFile: failed to get bloom filter data from mmap file %@", buf, 0x16u);
      }

      v14 = *(v5 + 5);
      *(v5 + 5) = 0;
    }

LABEL_17:
  }

  if (*(v5 + 6))
  {
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  v16 = v18;
LABEL_22:

  return v16;
}

- (NEBloomFilter)initWithData:(id)data numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes murmurSeed:(unsigned int)seed mmapFilename:(id)filename tag:(id)tag
{
  dataCopy = data;
  filenameCopy = filename;
  tagCopy = tag;
  v29.receiver = self;
  v29.super_class = NEBloomFilter;
  v17 = [(NEBloomFilter *)&v29 init];
  if (!v17)
  {
    v23 = 0;
    goto LABEL_26;
  }

  v18 = [dataCopy length];
  if (!seed || !hashes || !bits || !v18)
  {
    p_super = ne_log_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v17;
      _os_log_error_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%@ - initWithData: Invalid params", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v17->_numberOfBits = bits;
  v17->_numberOfHashes = hashes;
  v17->_murmurSeed = seed;
  if (!filenameCopy)
  {
    v22 = dataCopy;
LABEL_15:
    bitVectorBuffer = v17->_bitVectorBuffer;
    v17->_bitVectorBuffer = v22;
    goto LABEL_19;
  }

  v19 = +[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:](NEBloomFilter, "mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:", [filenameCopy UTF8String], objc_msgSend(dataCopy, "bytes"), objc_msgSend(dataCopy, "length"), v17->_numberOfBits, v17->_numberOfHashes, v17->_murmurSeed, tagCopy);
  v20 = ne_log_obj();
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = v17;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@ - initWithData: saved bloom filter data to mmap file", buf, 0xCu);
    }

    v22 = [[NSData alloc] initWithBytes:v19 length:{objc_msgSend(dataCopy, "length")}];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v31 = v17;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@ - initWithData: failed to save bloom filter data to mmap file", buf, 0xCu);
  }

  bitVectorBuffer = v17->_bitVectorBuffer;
  v17->_bitVectorBuffer = 0;
LABEL_19:

  if (v17->_bitVectorBuffer)
  {
    v26 = [[NEBitVector alloc] initWithBitMap:[(NSData *)v17->_bitVectorBuffer bytes] bitmapSize:[(NSData *)v17->_bitVectorBuffer length] bitCount:v17->_numberOfBits];
    p_super = &v17->_bitVector->super;
    v17->_bitVector = v26;
LABEL_21:
  }

  if (v17->_bitVector)
  {
    v27 = v17;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
LABEL_26:

  return v23;
}

+ (BOOL)mmapFromFile:(const char *)file bloomFilter:(ne_bloom_filter *)filter
{
  memset(&v62, 0, sizeof(v62));
  getpid();
  if (sandbox_check() || (getpid(), sandbox_check()))
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
      v75 = 1024;
      v76 = getpid();
      v77 = 2080;
      *v78 = file;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: NEBloomFilter - <pid %d> No read permission to file %s", buf, 0x1Cu);
    }

LABEL_5:

    return 0;
  }

  v8 = open(file, 0, file);
  if (v8 < 0)
  {
    v12 = *__error();
    if (strerror_r(v12, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v63 = 136316162;
      v64 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
      v65 = 1024;
      v66 = getpid();
      v67 = 2080;
      fileCopy4 = file;
      v69 = 1024;
      v70 = v12;
      v71 = 2080;
      v72 = buf;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s: NEBloomFilter - <pid %d> Failed to open file %s: [%d] %s", v63, 0x2Cu);
    }

    goto LABEL_5;
  }

  v9 = v8;
  if (fstat(v8, &v62) == -1 || !v62.st_size)
  {
    v13 = *__error();
    if (strerror_r(v13, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_39;
    }

    v15 = getpid();
    *v63 = 136316162;
    v64 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
    v65 = 1024;
    v66 = v15;
    v67 = 2080;
    fileCopy4 = file;
    v69 = 1024;
    v70 = v13;
    v71 = 2080;
    v72 = buf;
    v16 = "%s: NEBloomFilter - <pid %d> Failed to get file stats for file %s: [%d] %s";
    goto LABEL_23;
  }

  v10 = v62.st_atimespec.tv_nsec / 1000000000.0 + v62.st_atimespec.tv_sec;
  if (!filter->var3 || !filter->var0.var5 || filter->var7 != v10)
  {
    if ((v62.st_size - 0x100000000) <= 0xFFFFFFFF0000001FLL)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = getpid();
        *buf = 136315906;
        v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
        v75 = 1024;
        v76 = v17;
        v77 = 2048;
        *v78 = v62.st_size;
        *&v78[8] = 2080;
        *&v78[10] = file;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: NEBloomFilter - <pid %d> invalid file size %lld for file %s", buf, 0x26u);
      }

      goto LABEL_39;
    }

    v18 = mmap(0, v62.st_size, 1, 2, v9, 0);
    if (v18 != -1)
    {
      v19 = v18;
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v39 = getpid();
        *buf = 136316162;
        v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
        v75 = 1024;
        v76 = v39;
        v77 = 1024;
        *v78 = v9;
        *&v78[4] = 2048;
        *&v78[6] = v62.st_size;
        *&v78[14] = 2080;
        *&v78[16] = file;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilter - <pid %d> read mmap <fd %d, size %lld> for file %s", buf, 0x2Cu);
      }

      var4 = filter->var4;
      v22 = v19[1];
      *&filter->var0.var0 = *v19;
      *&filter->var0.var2 = v22;
      if (filter->var0.var0 == 0x5061747269636961)
      {
        var1 = filter->var0.var1;
        if (var1 - 1 < 2)
        {
          if (var1 == 1)
          {
            v24 = ne_log_obj();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v51 = getpid();
              var2 = filter->var0.var2;
              var3 = filter->var0.var3;
              v54 = filter->var0.var4;
              var5 = filter->var0.var5;
              *buf = 136316418;
              v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
              v75 = 1024;
              v76 = v51;
              v77 = 1024;
              *v78 = var2;
              *&v78[4] = 1024;
              *&v78[6] = var3;
              *&v78[10] = 1024;
              *&v78[12] = v54;
              *&v78[16] = 1024;
              *&v78[18] = var5;
              _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilter - <pid %d> read from mmap <numberOfBits %d numberOfHashes %d murmurSeed %d bitmapSize %d>", buf, 0x2Au);
            }

            v25 = 0;
            LODWORD(v26) = 0;
            v27 = 32;
          }

          else
          {
            v26 = *(v19 + 8);
            if (v26)
            {
              v25 = v19 + 36;
            }

            else
            {
              v25 = 0;
            }

            if (v26)
            {
              v24 = [[NSData alloc] initWithBytes:v19 + 36 length:v26];
            }

            else
            {
              v24 = 0;
            }

            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v56 = getpid();
              v57 = filter->var0.var2;
              v58 = filter->var0.var3;
              v59 = filter->var0.var4;
              v60 = filter->var0.var5;
              *buf = 136316930;
              v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
              v75 = 1024;
              v76 = v56;
              v77 = 1024;
              *v78 = v57;
              *&v78[4] = 1024;
              *&v78[6] = v58;
              *&v78[10] = 1024;
              *&v78[12] = v59;
              *&v78[16] = 1024;
              *&v78[18] = v60;
              *&v78[22] = 1024;
              v79 = v26;
              v80 = 2112;
              v81 = v24;
              _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilter - <pid %d> read from mmap <numberOfBits %d numberOfHashes %d murmurSeed %d bitmapSize %d tagSize %d><%@>", buf, 0x3Au);
            }

            v27 = v26 + 36;
          }

          v41 = filter->var0.var5 + v27;
          if (v62.st_size == v41)
          {
            filter->var1 = v26;
            filter->var2 = v25;
            filter->var3 = v19 + v27;
            if (var4)
            {
LABEL_60:
              filter->var7 = v10;
              filter->var4 = var4;
              filter->var5 = v19;
              filter->var6 = v41;
              close(v9);
              v11 = ne_log_obj();
              if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_14;
              }

              v45 = getpid();
              *buf = 136315650;
              v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
              v75 = 1024;
              v76 = v45;
              v77 = 2080;
              *v78 = file;
              v38 = "%s: NEBloomFilter - <pid %d> update done for %s";
              goto LABEL_51;
            }

            v42 = strlen(file);
            v43 = v42;
            v44 = malloc_type_malloc((&_mh_execute_header + (v42 << 32)) >> 32, 0x100004077774924uLL);
            if (v44)
            {
              var4 = v44;
              strncpy(v44, file, v43)[v43] = 0;
              LODWORD(v41) = v62.st_size;
              goto LABEL_60;
            }

            v49 = *__error();
            if (strerror_r(v49, buf, 0x80uLL))
            {
              buf[0] = 0;
            }

            v50 = ne_log_obj();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
            {
              v61 = getpid();
              *v63 = 136316162;
              v64 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
              v65 = 1024;
              v66 = v61;
              v67 = 2080;
              fileCopy4 = file;
              v69 = 1024;
              v70 = v49;
              v71 = 2080;
              v72 = buf;
              _os_log_fault_impl(&_mh_execute_header, v50, OS_LOG_TYPE_FAULT, "%s: NEBloomFilter - <pid %d> mmap failed to malloc for filename %s: [%d] %s", v63, 0x2Cu);
            }

LABEL_66:
            munmap(v19, v62.st_size);
            *&filter->var0.var0 = 0u;
            *&filter->var0.var2 = 0u;
            *&filter->var1 = 0u;
            *&filter->var3 = 0u;
            *&filter->var5 = 0u;
            filter->var7 = 0.0;
            goto LABEL_40;
          }

          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v46 = getpid();
            v47 = filter->var0.var5;
            *buf = 136316162;
            v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
            v75 = 1024;
            v76 = v46;
            v77 = 1024;
            *v78 = v62.st_size;
            *&v78[4] = 1024;
            *&v78[6] = v47;
            *&v78[10] = 1024;
            *&v78[12] = v27;
            v32 = "%s: NEBloomFilter - <pid %d> invalid mmap file size <%d> <bitmapSize %d data_memory_offset %d>";
            v33 = v29;
            v34 = 36;
            goto LABEL_64;
          }

LABEL_65:

          goto LABEL_66;
        }

        v29 = ne_log_obj();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v35 = getpid();
        v36 = filter->var0.var1;
        *buf = 136316162;
        v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
        v75 = 1024;
        v76 = v35;
        v77 = 2048;
        *v78 = v36;
        *&v78[8] = 1024;
        *&v78[10] = 1;
        *&v78[14] = 1024;
        *&v78[16] = 2;
        v32 = "%s: NEBloomFilter - <pid %d> format version (%llu) does not equal any valid version (%u or %u)";
        v33 = v29;
        v34 = 40;
      }

      else
      {
        v29 = ne_log_obj();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        v30 = getpid();
        var0 = filter->var0.var0;
        *buf = 136315906;
        v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
        v75 = 1024;
        v76 = v30;
        v77 = 2048;
        *v78 = var0;
        *&v78[8] = 2048;
        *&v78[10] = 0x5061747269636961;
        v32 = "%s: NEBloomFilter - <pid %d> magic number (%llx) does not equal the expected value (%llx)";
        v33 = v29;
        v34 = 38;
      }

LABEL_64:
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
      goto LABEL_65;
    }

    v28 = *__error();
    if (strerror_r(v28, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_39;
    }

    v48 = getpid();
    *v63 = 136316162;
    v64 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
    v65 = 1024;
    v66 = v48;
    v67 = 2080;
    fileCopy4 = file;
    v69 = 1024;
    v70 = v28;
    v71 = 2080;
    v72 = buf;
    v16 = "%s: NEBloomFilter - <pid %d> mmap failed for file %s: [%d] %s";
LABEL_23:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v16, v63, 0x2Cu);
LABEL_39:

LABEL_40:
    close(v9);
    return 0;
  }

  close(v9);
  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v37 = getpid();
    *buf = 136315650;
    v74 = "+[NEBloomFilter mmapFromFile:bloomFilter:]";
    v75 = 1024;
    v76 = v37;
    v77 = 2080;
    *v78 = file;
    v38 = "%s: NEBloomFilter - <pid %d> no update needed for %s";
LABEL_51:
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v38, buf, 0x1Cu);
  }

LABEL_14:

  return 1;
}

+ (char)mmapToFile:(const char *)file data:(char *)data dataLength:(unsigned int)length numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes murmurSeed:(unsigned int)seed tag:(id)tag
{
  tagCopy = tag;
  v16 = open(file, 518, 420);
  if (v16 < 0)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v37 = *__error();
      v38 = __error();
      v39 = strerror(*v38);
      *buf = 136315906;
      v47 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v48 = 2080;
      fileCopy3 = file;
      v50 = 1024;
      v51 = v37;
      v52 = 2080;
      v53[0] = v39;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s: NEBloomFilter - failed to open mmap file %s <errno %d - %s>", buf, 0x26u);
    }

    goto LABEL_11;
  }

  v17 = v16;
  if (tagCopy)
  {
    v18 = [tagCopy length] + 36;
  }

  else
  {
    v18 = 36;
  }

  v20 = v18 + length;
  if (ftruncate(v17, v20))
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      close(v17);
LABEL_11:
      v22 = 0;
      goto LABEL_12;
    }

    v34 = *__error();
    v35 = __error();
    v36 = strerror(*v35);
    *buf = 136316162;
    v47 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v48 = 2080;
    fileCopy3 = file;
    v50 = 1024;
    v51 = v20;
    v52 = 1024;
    LODWORD(v53[0]) = v34;
    WORD2(v53[0]) = 2080;
    *(v53 + 6) = v36;
    v30 = "%s: NEBloomFilter - failed to ftruncate mmap file <%s> to %d bytes <errno %d - %s>";
    v31 = v21;
    v32 = 44;
LABEL_31:
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    goto LABEL_10;
  }

  v24 = mmap(0, v20, 3, 1, v17, 0);
  if (v24 == -1)
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315906;
    v47 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
    v48 = 2080;
    fileCopy3 = file;
    v50 = 1024;
    v51 = v17;
    v52 = 1024;
    LODWORD(v53[0]) = v20;
    v30 = "%s: NEBloomFilter - Failed mmap file <%s> <fd %d, size %d>";
    v31 = v21;
    v32 = 34;
    goto LABEL_31;
  }

  v25 = v24;
  *v24 = xmmword_100019FA0;
  *(v24 + 4) = bits;
  *(v24 + 5) = hashes;
  *(v24 + 6) = seed;
  *(v24 + 7) = length;
  if (tagCopy && [tagCopy length] && (objc_msgSend(tagCopy, "dataUsingEncoding:", 4), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = v26;
    v28 = [v26 length];
    *(v25 + 8) = v28;
    v22 = v25 + 36;
    if (v28)
    {
      memcpy(v25 + 36, [v27 bytes], v28);
      v22 += v28;
    }
  }

  else
  {
    v27 = 0;
    *(v25 + 8) = 0;
    v22 = v25 + 36;
  }

  memcpy(v22, data, length);
  if (msync(v25, v20, 16) == -1)
  {
    v33 = *__error();
    if (strerror_r(v33, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *v40 = 136315650;
      v41 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      v42 = 1024;
      v43 = v33;
      v44 = 2080;
      v45 = buf;
      _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "%s: NEBloomFilter - Failed msync: [%d] %s", v40, 0x1Cu);
    }
  }

  else
  {
    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v47 = "+[NEBloomFilter mmapToFile:data:dataLength:numberOfBits:numberOfHashes:murmurSeed:tag:]";
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s: NEBloomFilter - done msync", buf, 0xCu);
    }
  }

  munmap(v25, v20);
  close(v17);

LABEL_12:
  return v22;
}

+ (double)getFalsePositiveProbability:(unsigned int)probability numberOfBits:(unsigned int)bits numberOfHashes:(unsigned int)hashes
{
  hashesCopy = hashes;
  v6 = 1.0 - pow(2.71828183, -(hashes * probability) / bits);

  return pow(v6, hashesCopy);
}

@end