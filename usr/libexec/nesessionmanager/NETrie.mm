@interface NETrie
- (BOOL)search:(const char *)search length:(int)length;
- (BOOL)searchWithString:(id)string;
- (NETrie)initWithDomains:(id)domains prefixCount:(int)count reverse:(BOOL)reverse partialSearchAllowed:(BOOL)allowed partialSearchTerminator:(char)terminator extra_bytes:(unint64_t)extra_bytes;
- (void)dealloc;
@end

@implementation NETrie

- (BOOL)searchWithString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    [v5 UTF8String];
    [v5 length];
    if (self)
    {
      reverse = self->_reverse;
      partialSearchAllowed = self->_partialSearchAllowed;
      partialSearchTerminator = self->_partialSearchTerminator;
    }

    v9 = ne_trie_search() != 0xFFFF;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)search:(const char *)search length:(int)length
{
  v4 = 0;
  if (search && length)
  {
    if (self)
    {
      reverse = self->_reverse;
      partialSearchAllowed = self->_partialSearchAllowed;
      partialSearchTerminator = self->_partialSearchTerminator;
    }

    return ne_trie_search() != 0xFFFF;
  }

  return v4;
}

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "NETrie - dealloc", buf, 2u);
  }

  if (self->_trie.memory)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "NETrie - dealloc - free memory", buf, 2u);
    }

    free(self->_trie.memory);
  }

  *&self->_trie.child_maps_mem_size = 0u;
  *&self->_trie.is_mmap = 0u;
  *&self->_trie.nodes_count = 0u;
  *&self->_trie.trie_memory_size = 0u;
  *&self->_trie.nodes = 0u;
  *&self->_trie.bytes = 0u;
  *&self->_trie.magic = 0u;
  v5.receiver = self;
  v5.super_class = NETrie;
  [(NETrie *)&v5 dealloc];
}

- (NETrie)initWithDomains:(id)domains prefixCount:(int)count reverse:(BOOL)reverse partialSearchAllowed:(BOOL)allowed partialSearchTerminator:(char)terminator extra_bytes:(unint64_t)extra_bytes
{
  domainsCopy = domains;
  v48.receiver = self;
  v48.super_class = NETrie;
  v14 = [(NETrie *)&v48 init];
  if (!v14)
  {
LABEL_33:
    v21 = v14;
    goto LABEL_34;
  }

  if (domainsCopy && [domainsCopy count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v38 = domainsCopy;
    v15 = domainsCopy;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v16)
    {
      terminatorCopy = terminator;
      v17 = 0;
      v18 = *v45;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v17 += [*(*(&v44 + 1) + 8 * i) length];
        }

        v16 = [v15 countByEnumeratingWithState:&v44 objects:v58 count:16];
      }

      while (v16);
      terminator = terminatorCopy;
    }

    if (!count)
    {
      [v15 count];
    }

    [v15 count];
    if (ne_trie_init())
    {
      v14->_reverse = reverse;
      v14->_partialSearchAllowed = allowed;
      v14->_partialSearchTerminator = terminator;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v22 = v15;
      v23 = [v22 countByEnumeratingWithState:&v40 objects:v57 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v40 + 1) + 8 * j);
            [v27 UTF8String];
            [v27 length];
            reverse = v14->_reverse;
            if (ne_trie_insert() == 0xFFFF)
            {
              v29 = ne_log_obj();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v50 = v27;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "NETrie - failed insert for %@", buf, 0xCu);
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v40 objects:v57 count:16];
        }

        while (v24);
      }

      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v22 count];
        nodes_free_next = v14->_trie.nodes_free_next;
        child_maps_free_next = v14->_trie.child_maps_free_next;
        bytes_free_next = v14->_trie.bytes_free_next;
        root = v14->_trie.root;
        *buf = 67110144;
        *v50 = v33;
        *&v50[4] = 1024;
        *&v50[6] = nodes_free_next;
        v51 = 1024;
        v52 = child_maps_free_next;
        v53 = 1024;
        v54 = bytes_free_next;
        v55 = 1024;
        v56 = root;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "NETrie - initialized with %d domains (Nodes used = %d, child maps used = %d, bytes used = %d, root = %d)", buf, 0x20u);
      }

      domainsCopy = v38;
      goto LABEL_33;
    }

    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "NETrie - failed init", buf, 2u);
    }

    v21 = 0;
    domainsCopy = v38;
  }

  else
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "NETrie - No domain", buf, 2u);
    }

    v21 = 0;
  }

LABEL_34:

  return v21;
}

@end