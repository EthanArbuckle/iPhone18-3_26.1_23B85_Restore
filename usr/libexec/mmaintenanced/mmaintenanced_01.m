unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

void std::__owns_two_states<char>::~__owns_two_states(void *a1)
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete();
}

void *std::__owns_two_states<char>::~__owns_two_states(void *a1)
{
  *a1 = off_10002D580;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = off_10002D100;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__alternate<char>::~__alternate(void *a1)
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  operator delete();
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_empty);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(a1, a2, a3);
  if (v8 == a2)
  {
    return a2;
  }

  v9 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(a1, v8, a3, end, marked_count + 1, v9);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(a1, a2, a3);
  v7 = v6;
  if (v6 == a2 && v6 != a3 && v6 + 1 != a3 && *v6 == 92)
  {
    v8 = v6[1];
    if (v8 == 40)
    {
      v9 = v6 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
      marked_count = a1->__marked_count_;
      do
      {
        v11 = v9;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(a1, v9, a3);
        v9 = v12;
      }

      while (v12 != v11);
      if (v11 == a3 || v12 + 1 == a3 || *v12 != 92 || v12[1] != 41)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      v7 = v12 + 2;
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, marked_count);
    }

    else
    {
      v13 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v8);
      v14 = 2;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 != a3)
  {
    v7 = __mexp_end;
    v8 = __mexp_begin;
    v11 = *a2;
    if (v11 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, 0, 0xFFFFFFFFFFFFFFFFLL, __s, __mexp_begin, __mexp_end, 1);
      return ++v6;
    }

    if (a2 + 1 != a3 && v11 == 92 && a2[1] == 123)
    {
      v14 = a2 + 2;
      LODWORD(__max) = 0;
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, a2 + 2, a3, &__max);
      if (v15 == v14)
      {
        goto LABEL_25;
      }

      if (v15 != a3)
      {
        v16 = v15 + 1;
        v17 = *v15;
        if (v17 == 44)
        {
          v26 = -1;
          v18 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(this, v16, a3, &v26);
          if (v18 != a3)
          {
            v19 = v18;
            if (v18 + 1 != a3 && *v18 == 92)
            {
              v20 = v18[1];
              v21 = v20 == 125;
              if (v20 == 125)
              {
                v22 = v26;
                if (v26 == -1)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
                  v22 = -1;
                  goto LABEL_23;
                }

                if (v26 >= __max)
                {
                  v23 = v8;
                  v24 = v7;
                  v25 = this;
LABEL_23:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(v25, __max, v22, __s, v23, v24, 1);
                  return &v19[2 * v21];
                }

LABEL_25:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
              }
            }
          }
        }

        else if (v16 != a3 && v17 == 92 && *v16 == 125)
        {
          v6 = v15 + 2;
          std::basic_regex<char,std::regex_traits<char>>::__push_loop(this, __max, __max, __s, v8, v7, 1);
          return v6;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if (a2 + 1 == a3 && v6 == 36 || ((v6 - 46) <= 0x2E ? (v8 = ((1 << (v6 - 46)) & 0x600000000001) == 0) : (v8 = 1), !v8))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
      v7 = v9;
      if (v9 == a2)
      {
        if (*v9 == 46)
        {
          operator new();
        }

        goto LABEL_12;
      }
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v6);
    }

    return v7;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(this, a2, a3);
  if (v7 != a2)
  {
    return v7;
  }

LABEL_12:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR<char const*>(std::basic_regex<char> *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a2;
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v4 = a2[1];
    if ((v4 - 36) <= 0x3A && ((1 << (v4 - 36)) & 0x580000000000441) != 0)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      v3 += 2;
    }
  }

  return v3;
}

void *std::__match_any<char>::~__match_any(void *a1)
{
  *a1 = off_10002D100;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__match_any<char>::~__match_any(void *a1)
{
  *a1 = off_10002D100;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v11 = a1->__marked_count_;
        ++a1->__open_count_;
        v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v9 + 1, a3);
        if (v12 == a3 || (v9 = v12, *v12 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v11);
        --a1->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_12;
    }

    ++v9;
  }

LABEL_12:
  if (v9 == a2)
  {
    return v9;
  }

  v13 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v13);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(a1, a2, a3);
  if (v6 != a2)
  {
    return v6;
  }

  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(a1, a2, a3);
  v6 = v7;
  if (v7 != a2)
  {
    return v6;
  }

  if (a2 != a3 && *v7 == 46)
  {
    operator new();
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(a1, a2, a3);
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_ORD_CHAR_ERE<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3)
  {
    locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
    v5 = (locale_low - 36);
    if (v5 > 0x3A)
    {
      goto LABEL_8;
    }

    if (((1 << (locale_low - 36)) & 0x5800000080004D1) != 0)
    {
      return v3;
    }

    if (v5 == 5)
    {
      if (a1->__open_count_)
      {
        return v3;
      }

      locale = 41;
    }

    else
    {
LABEL_8:
      if ((locale_low - 123) < 2)
      {
        return v3;
      }

      locale = this->__traits_.__loc_.__locale_;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, locale);
    return (v3 + 1);
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<char const*>(uint64_t a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this == a3)
  {
    return v3;
  }

  v4 = &this->__traits_.__loc_.__locale_ + 1;
  if ((&v3->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v3->__traits_.__loc_.__locale_) != 92)
  {
    return v3;
  }

  v5 = *v4;
  v6 = (v5 - 36) > 0x3A || ((1 << (v5 - 36)) & 0x5800000080004F1) == 0;
  if (!v6 || (v5 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
    return v3 + 2;
  }

  if ((*(a1 + 24) & 0x1F0) != 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v5);
    v9 = 2;
    if (!v8)
    {
      v9 = 0;
    }

    return v3 + v9;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v4, a3, 0);
}

BOOL EccDatabase::db_integrity_check(sqlite3 **this)
{
  v1 = sqlite3_exec(this[1], "PRAGMA quick_check", pragma_quick_check_callback, 0, 0);
  if (v1 && os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
    EccDatabase::db_integrity_check();
  }

  return v1 == 0;
}

BOOL pragma_quick_check_callback(void *a1, int a2, char **a3, char **a4)
{
  if (a2 >= 1 && (v4 = *a3, **a3 == 111) && *(v4 + 1) == 107)
  {
    return *(v4 + 2) != 0;
  }

  else
  {
    return 1;
  }
}

uint64_t EccDatabase::attempt_db_recreation(sqlite3 **this)
{
  v2 = this + 1;
  v3 = sqlite3_close(this[1]);
  if (v3)
  {
    v5 = v3;
    v6 = ecc_log;
    if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
    {
      EccDatabase::attempt_db_recreation(this, v5, v6);
    }

    return 0;
  }

  v7 = (this + 100);
  if (remove(v7, v4))
  {
    v8 = ecc_log;
    if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
    {
      EccDatabase::attempt_db_recreation(v7, v8);
    }

    return 0;
  }

  v9 = sqlite3_open(v7, v2);
  v10 = ecc_log;
  if (v9)
  {
    if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
    {
      EccDatabase::attempt_db_recreation();
    }

    return 0;
  }

  v11 = 1;
  if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "recreated %s successfully", &v13, 0xCu);
  }

  return v11;
}

void EccDatabase::EccDatabase(EccDatabase *this)
{
  *this = 0;
  *(this + 1) = 0;
  memcpy(this + 100, "/var/db/mmaintenanced/memory_errors.db", 0x400uLL);
  memcpy(this + 1124, "/System/Volumes/iSCPreboot/dramecc/dramecc.db", 0x400uLL);
  memcpy(this + 2148, "/System/Volumes/iSCPreboot/dramecc/", 0x400uLL);
  *(this + 397) = 0;
  *(this + 399) = 0;
  *(this + 398) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  memcpy(this + 100, "/var/db/mmaintenanced/memory_errors.db", 0x400uLL);
  memcpy(this + 1124, "/System/Volumes/iSCPreboot/dramecc/dramecc.db", 0x400uLL);
  memcpy(this + 2148, "/System/Volumes/iSCPreboot/dramecc/", 0x400uLL);
  *(this + 397) = 0;
  *(this + 399) = 0;
  *(this + 398) = 0;
}

BOOL EccDatabase::prepare_statements(sqlite3 **this)
{
  v2 = sqlite3_prepare_v2(this[1], "INSERT INTO ecc_errors_v2('time','addr','row','column','bank','count','correctable') VALUES(?, ?, ?, ?, ?, ?, ?);", -1, this + 3, 0);
  v3 = sqlite3_prepare_v2(this[1], "SELECT COUNT(*) FROM ecc_errors_v2 WHERE correctable = ?;", -1, this + 6, 0) | v2;
  v4 = sqlite3_prepare_v2(this[1], "SELECT DISTINCT addr FROM ecc_errors_v2 WHERE correctable = ?;", -1, this + 4, 0);
  v5 = v3 | v4 | sqlite3_prepare_v2(this[1], "SELECT COUNT(*) FROM ecc_errors_v2 WHERE correctable = ? AND time >= ?;", -1, this + 7, 0);
  v6 = sqlite3_prepare_v2(this[1], "SELECT DISTINCT addr FROM ecc_errors_v2 WHERE correctable = ? AND time >= ?;", -1, this + 5, 0);
  v7 = v6 | sqlite3_prepare_v2(this[1], "SELECT COUNT(DISTINCT correctable) FROM ecc_errors_v2 WHERE addr = ?;", -1, this + 8, 0);
  v8 = v5 | v7 | sqlite3_prepare_v2(this[1], "SELECT COUNT(*) FROM ecc_errors_v2 WHERE correctable = 0 AND (addr >> ?) = ?;", -1, this + 9, 0);
  v9 = sqlite3_prepare_v2(this[1], "SELECT (addr >> ?) as Page, MAX(time) as Time FROM ecc_errors_v2 WHERE correctable=0 GROUP BY Page ORDER BY Time DESC LIMIT ?;", -1, this + 10, 0);
  v10 = v8 | v9 | sqlite3_prepare_v2(this[1], "DELETE FROM ecc_errors_v2 WHERE (addr >> ?) = ?;", -1, this + 11, 0);
  if (v10 && os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
    EccDatabase::prepare_statements();
  }

  return v10 == 0;
}

uint64_t EccDatabase::get_ecc_max_db_pages(EccDatabase *this, unsigned int *a2)
{
  v3 = 4;
  result = sysctlbyname("vm.vm_ecc_max_db_pages", this, &v3, 0, 0);
  if (result)
  {
    return *__error();
  }

  return result;
}

void EccDatabase::update_persistent_retirement_limit(EccDatabase *this, unsigned int *a2)
{
  if (EccDatabase::get_ecc_max_db_pages((this + 96), a2) && os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
    EccDatabase::update_persistent_retirement_limit();
  }

  if (!*(this + 24))
  {
    *(this + 24) = 1024;
  }
}

BOOL EccDatabase::insert_initialization_time(EccDatabase *this)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(*(this + 1), "INSERT INTO time_table('time') VALUES(?);", -1, &ppStmt, 0))
  {
    result = os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    EccDatabase::insert_initialization_time();
  }

  else
  {
    sqlite3_bind_int(ppStmt, 1, *(this + 802));
    if (sqlite3_step(ppStmt) == 101)
    {
      sqlite3_finalize(ppStmt);
      return 1;
    }

    if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
    {
      EccDatabase::insert_initialization_time();
    }

    sqlite3_finalize(ppStmt);
  }

  return 0;
}

BOOL EccDatabase::get_time_from_db(sqlite3 **this, uint64_t *a2)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(this[1], "SELECT time FROM time_table;", -1, &ppStmt, 0))
  {
    result = os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    EccDatabase::get_time_from_db();
  }

  else
  {
    if (sqlite3_step(ppStmt) == 100)
    {
      *a2 = sqlite3_column_int(ppStmt, 0);
      sqlite3_finalize(ppStmt);
      return 1;
    }

    if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
    {
      EccDatabase::get_time_from_db();
    }

    sqlite3_finalize(ppStmt);
  }

  return 0;
}

BOOL EccDatabase::init_time_table(sqlite3 **this)
{
  v1 = sqlite3_exec(this[1], "CREATE TABLE IF NOT EXISTS time_table (ID INTEGER PRIMARY KEY, time INT);", 0, 0, 0);
  if (v1 && os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
    EccDatabase::init_time_table();
  }

  return v1 == 0;
}

BOOL EccDatabase::time_table_exists(sqlite3 **this)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(this[1], "SELECT name FROM sqlite_master WHERE type='table' AND name='time_table';", -1, &ppStmt, 0))
  {
    return 0;
  }

  v1 = sqlite3_step(ppStmt) == 100;
  sqlite3_finalize(ppStmt);
  return v1;
}

uint64_t EccDatabase::init_time_handling(EccDatabase *this)
{
  std::ifstream::basic_ifstream(v10);
  v2 = *(&v10[4] + *(v10[0] - 3));
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v10 + *(v10[0] - 3)), *(&v10[4] + *(v10[0] - 3)) | 4);
  }

  v3 = sqlite3_open(this + 100, this + 1);
  if (v3)
  {
    v4 = ecc_log;
    if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
    {
      EccDatabase::init_time_handling(this + 100, v3, v4);
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    v7 = EccDatabase::time_table_exists(this);
    v8 = (this + 3208);
    if (!v7)
    {
      *v8 = 0;
      v6 = 1;
      goto LABEL_14;
    }

    time_from_db = EccDatabase::get_time_from_db(this, v8);
    goto LABEL_12;
  }

  time(this + 401);
  if (EccDatabase::init_time_table(this))
  {
    time_from_db = EccDatabase::insert_initialization_time(this);
LABEL_12:
    v6 = time_from_db;
    goto LABEL_14;
  }

LABEL_9:
  v6 = 0;
LABEL_14:
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return v6;
}

void (__cdecl ***std::ifstream::basic_ifstream(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100011640(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void EccDatabase::initialize(EccDatabase *this)
{
  if (EccDatabase::init_time_handling(this) && (EccDatabase::db_integrity_check(this) || EccDatabase::attempt_db_recreation(this)) && EccDatabase::create_ecc_table(this) && EccDatabase::prepare_statements(this))
  {
    EccDatabase::update_persistent_retirement_limit(this, v2);
    *this = 1;
  }
}

uint64_t EccDatabase::get_unique_addr_count(sqlite3_stmt **this, int a2, int a3, char a4, sqlite3_int64 a5, unsigned int *a6)
{
  v12 = 4;
  if (a3)
  {
    v12 = 5;
  }

  v13 = this[v12];
  *a6 = 0;
  sqlite3_reset(v13);
  sqlite3_bind_int(v13, 1, a2);
  if (a3)
  {
    sqlite3_bind_int64(v13, 2, a5);
  }

  v14 = sqlite3_step(v13);
  v15 = a4 ^ 1 | a2;
  while (v14 == 100)
  {
    if (v15)
    {
      ++*a6;
    }

    else
    {
      v16 = sqlite3_column_int64(v13, 0);
      sqlite3_reset(this[8]);
      sqlite3_bind_int64(this[8], 1, v16);
      if (sqlite3_step(this[8]) != 100)
      {
        if (!os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

LABEL_21:
        EccDatabase::get_unique_addr_count();
        return 1;
      }

      if (sqlite3_column_int(this[8], 0) == 2)
      {
        ++*a6;
      }

      if (sqlite3_step(this[8]) != 101)
      {
        if (!os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
        {
          return 1;
        }

        goto LABEL_21;
      }
    }

    v14 = sqlite3_step(v13);
  }

  if (v14 == 101)
  {
    return 0;
  }

  if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
    EccDatabase::get_unique_addr_count();
  }

  return 1;
}

uint64_t EccDatabase::get_total_count(EccDatabase *this, int a2, int a3, sqlite3_int64 a4, unsigned int *a5)
{
  v9 = 48;
  if (a3)
  {
    v9 = 56;
  }

  v10 = *(this + v9);
  sqlite3_reset(v10);
  sqlite3_bind_int(v10, 1, a2);
  if (a3)
  {
    sqlite3_bind_int64(v10, 2, a4);
  }

  if (sqlite3_step(v10) == 100)
  {
    *a5 = sqlite3_column_int(v10, 0);
    v11 = sqlite3_step(v10);
    result = 0;
    if (v11 == 101)
    {
      return result;
    }

    if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
LABEL_10:
    EccDatabase::get_total_count();
  }

  return 1;
}

uint64_t EccDatabase::finalize_all_stmt(uint64_t this)
{
  if (*this == 1)
  {
    v2 = this;
    sqlite3_finalize(*(this + 16));
    sqlite3_finalize(*(v2 + 24));
    sqlite3_finalize(*(v2 + 32));
    sqlite3_finalize(*(v2 + 40));
    sqlite3_finalize(*(v2 + 48));
    sqlite3_finalize(*(v2 + 56));
    sqlite3_finalize(*(v2 + 64));
    sqlite3_finalize(*(v2 + 72));
    sqlite3_finalize(*(v2 + 80));
    sqlite3_finalize(*(v2 + 88));
    v3 = *(v2 + 8);

    return sqlite3_close(v3);
  }

  return this;
}

void EccDatabase::~EccDatabase(EccDatabase *this)
{
  EccDatabase::finalize_all_stmt(this);
  v2 = *(this + 397);
  if (v2)
  {
    *(this + 398) = v2;
    operator delete(v2);
  }
}

uint64_t EccDatabase::insert(uint64_t a1, uint64_t a2)
{
  sqlite3_reset(*(a1 + 24));
  sqlite3_bind_int64(*(a1 + 24), 1, *a2);
  sqlite3_bind_int64(*(a1 + 24), 2, *(a2 + 8));
  sqlite3_bind_null(*(a1 + 24), 3);
  sqlite3_bind_null(*(a1 + 24), 4);
  sqlite3_bind_null(*(a1 + 24), 5);
  sqlite3_bind_int(*(a1 + 24), 6, *(a2 + 28));
  sqlite3_bind_int(*(a1 + 24), 7, *(a2 + 32));
  if (sqlite3_step(*(a1 + 24)) == 101)
  {
    return 0;
  }

  if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
    EccDatabase::insert();
  }

  return 1;
}

uint64_t EccDatabase::remove_addr(sqlite3_stmt **this, unint64_t a2)
{
  v3 = a2 >> vm_page_shift;
  sqlite3_reset(this[11]);
  sqlite3_bind_int64(this[11], 1, vm_page_shift);
  sqlite3_bind_int64(this[11], 2, v3);
  if (sqlite3_step(this[11]) == 101)
  {
    return 0;
  }

  if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
    EccDatabase::remove_addr();
  }

  return 1;
}

BOOL EccDatabase::is_page_retired(sqlite3_stmt **this, unint64_t a2)
{
  v3 = a2 >> vm_page_shift;
  sqlite3_reset(this[9]);
  sqlite3_bind_int64(this[9], 1, vm_page_shift);
  sqlite3_bind_int64(this[9], 2, v3);
  if (sqlite3_step(this[9]) == 100)
  {
    return sqlite3_column_int(this[9], 0) != 0;
  }

  if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
    EccDatabase::is_page_retired();
  }

  return 1;
}

void EccDatabase::regenerate_retired_pages(EccDatabase *this)
{
  v2 = open(this + 1124, 1537, 384);
  v3 = fdopen(v2, "w");
  if (v3)
  {
    v4 = v3;
    sqlite3_reset(*(this + 10));
    sqlite3_bind_int64(*(this + 10), 1, vm_page_shift);
    sqlite3_bind_int(*(this + 10), 2, *(this + 24));
    for (i = sqlite3_step(*(this + 10)); i == 100; i = sqlite3_step(*(this + 10)))
    {
      v6 = sqlite3_column_int64(*(this + 10), 0) << vm_page_shift;
      fprintf(v4, "%llx\n", v6 & ~vm_page_mask);
      if (is_internal_release == 1)
      {
        v7 = ecc_log;
        if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "wrote page %llu", buf, 0xCu);
        }
      }
    }

    v8 = i;
    fclose(v4);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v11) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "regenerated the retired page list, rc=%d", buf, 8u);
    }
  }

  else
  {
    v9 = ecc_log;
    if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
    {
      EccDatabase::regenerate_retired_pages(this + 1124, v9);
    }
  }
}

BOOL update_path(char *a1, const char *a2, const char *a3)
{
  v3 = snprintf(a1, 0x400uLL, "%s/%s", a2, a3);
  if (v3 >= 0x401 && os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
  {
    update_path();
  }

  return v3 < 0x401;
}

BOOL EccDatabase::enable_test(EccDatabase *this, const char *a2)
{
  bzero(__dst, 0x400uLL);
  if (strlcpy(__dst, a2, 0x400uLL) - 1025 > 0xFFFFFFFFFFFFFBFFLL)
  {
    *(this + 1) = 1;
    result = update_path(this + 100, __dst, "memory_errors.db");
    if (result)
    {
      remove((this + 100), v7);
      result = update_path(this + 1124, __dst, "dramecc.db");
      if (result)
      {
        remove((this + 1124), v8);
        return update_path(this + 2148, __dst, "");
      }
    }
  }

  else
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "Test path is too long", 21);
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v5 = std::locale::use_facet(&v9, &std::ctype<char>::id);
    (v5->__vftable[2].~facet_0)(v5, 10);
    std::locale::~locale(&v9);
    std::ostream::put();
    std::ostream::flush();
    result = 0;
    *(this + 1) = 0;
  }

  return result;
}

uint64_t EccDatabase::reset_db(EccDatabase *this)
{
  result = EccDatabase::finalize_all_stmt(this);
  *this = 0;
  return result;
}

uint64_t EccDatabase::get_quarters_count(EccDatabase *this)
{
  v4 = 0;
  if (!*(this + 401))
  {
    return 0xFFFFFFFFLL;
  }

  time(&v4);
  v2 = (difftime(v4, *(this + 401)) / 2630016.0 / 3.0);
  if (v2 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v2;
  }
}

uint64_t get_device_tree_property(const char *a1)
{
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (v2)
  {
    v3 = v2;
    v4 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
    if (v4)
    {
      v5 = v4;
      CFProperty = IORegistryEntryCreateCFProperty(v3, v4, 0, 0);
      if (CFProperty)
      {
        v7 = CFProperty;
        if (CFDataGetLength(CFProperty) == 4)
        {
          v8 = *CFDataGetBytePtr(v7);
        }

        else
        {
          if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
          {
            get_device_tree_property();
          }

          v8 = 0;
        }

        CFRelease(v7);
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
      {
        get_device_tree_property();
      }

      v8 = 0;
    }

    IOObjectRelease(v3);
  }

  else
  {
    if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
    {
      get_device_tree_property();
    }

    return 0;
  }

  return v8;
}

uint64_t ecc_log_kernel_notification(uint64_t a1, time_t a2)
{
  v3 = *(a1 + 4);
  if ((v3 & 4) != 0)
  {
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v10)
    {
      return result;
    }

    v12 = *(a1 + 8);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received test event for addr %llx, ignoring", &buf, 0xCu);
    return 0;
  }

  v4 = ecc_db;
  if (*ecc_db)
  {
    v19 = 0;
    v20 = 0;
    LOBYTE(v5) = v3;
    v21 = 0;
    if (!a2)
    {
      v17[0] = 0;
      time(v17);
      a2 = v17[0];
      v5 = *(a1 + 4);
      v4 = ecc_db;
    }

    v6 = *(a1 + 8);
    *&buf = a2;
    *(&buf + 1) = v6;
    LOBYTE(v21) = v5 & 1;
    if (mkdir((v4 + 2148), 0x180u) && *__error() != 17)
    {
      if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
      {
        ecc_log_kernel_notification();
      }

      return 5;
    }

    if ((v3 & 2) != 0)
    {
      if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
      {
        ecc_log_kernel_notification();
      }
    }

    else
    {
      v7 = ecc_db;
      *(ecc_db + 3200) = *(a1 + 20);
      if ((v5 & 1) == 0 && EccDatabase::is_page_retired(v7, v6))
      {
        return 0;
      }

      if ((v3 & 0x10) != 0)
      {
        if (EccDatabase::remove_addr(ecc_db, v6))
        {
          if (is_internal_release != 1)
          {
            return 5;
          }

          v8 = ecc_log;
          if (!os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
          {
            return 5;
          }

          LODWORD(v17[0]) = 134217984;
          *(v17 + 4) = v6;
          v9 = "Failed to remove address %llx from database";
LABEL_32:
          p_buf = v17;
          v13 = v8;
          v15 = OS_LOG_TYPE_ERROR;
          v16 = 12;
          goto LABEL_19;
        }
      }

      else if (EccDatabase::insert(ecc_db, &buf))
      {
        if (is_internal_release != 1)
        {
          return 5;
        }

        v8 = ecc_log;
        if (!os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
        {
          return 5;
        }

        LODWORD(v17[0]) = 134217984;
        *(v17 + 4) = v6;
        v9 = "Failed to insert error into database for addr %llx";
        goto LABEL_32;
      }

      if (v5)
      {
        return 0;
      }
    }

    EccDatabase::regenerate_retired_pages(ecc_db);
    return 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    v13 = &_os_log_default;
    v9 = "Received a notification, but EccDatabase is not in a valid state";
    p_buf = &buf;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 2;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v13, v15, v9, p_buf, v16);
  }

  return 5;
}

BOOL is_ecc_supported(uint64_t a1, unsigned int *a2)
{
  v4 = 0;
  ecc_max_db_pages = EccDatabase::get_ecc_max_db_pages(&v4, a2);
  result = 0;
  if (ecc_max_db_pages != 2)
  {
    return get_device_tree_property("dram-ecc") != 0;
  }

  return result;
}

void ecc_send_ca_report(time_t a1, unsigned int *a2)
{
  if (is_ecc_supported(a1, a2))
  {
    v22 = 0;
    if (a1)
    {
      v22 = a1;
    }

    else
    {
      time(&v22);
    }

    if (!*(ecc_db + 3200))
    {
      *(ecc_db + 3200) = get_device_tree_property("dram-vendor-id");
    }

    v3 = v22;
    if (difftime(v22, report_to_ca(long)::prevtime) >= 300.0)
    {
      v4 = 0;
      report_to_ca(long)::prevtime = v3;
      v5 = 1;
      do
      {
        v6 = 0;
        v7 = v5;
        v8 = 1;
        do
        {
          v9 = v8;
          v23 = 0;
          if (EccDatabase::get_total_count(ecc_db, v4 & 1, v6 & 1, v3 - 86400, &v23))
          {
            v10 = ecc_log;
            if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *&buf[4] = v4;
              LOWORD(v25) = 1024;
              *(&v25 + 2) = v6;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get total count for correctable=%d epoch=%d ", buf, 0xEu);
            }
          }

          else
          {
            v25 = 0;
            *buf = v4;
            buf[2] = v6;
            v11 = *(ecc_db + 3200);
            *&buf[4] = 4;
            v25 = __PAIR64__(v23, v11);
            quarters_count = 0;
            quarters_count = EccDatabase::get_quarters_count(ecc_db);
            notify_ca(buf);
          }

          v8 = 0;
          v6 = 1;
        }

        while ((v9 & 1) != 0);
        v5 = 0;
        v4 = 1;
      }

      while ((v7 & 1) != 0);
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = 0;
        v21 = v13;
        v15 = 1;
        do
        {
          v16 = 0;
          v17 = v15;
          v18 = 1;
          do
          {
            v19 = v18;
            if (v12 & v16)
            {
              break;
            }

            v23 = 0;
            if (EccDatabase::get_unique_addr_count(ecc_db, v12 & 1, v14 & 1, v16 & 1, v3 - 86400, &v23) == 1)
            {
              v20 = ecc_log;
              if (os_log_type_enabled(ecc_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                *&buf[4] = v12;
                LOWORD(v25) = 1024;
                *(&v25 + 2) = v14;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to get unique addr count for correctable=%d epoch=%d ", buf, 0xEu);
              }
            }

            else
            {
              v25 = 0;
              *buf = v12;
              buf[1] = v16;
              buf[2] = v14;
              LODWORD(v25) = *(ecc_db + 3200);
              HIDWORD(v25) = v23;
              quarters_count = 0;
              quarters_count = EccDatabase::get_quarters_count(ecc_db);
              notify_ca(buf);
            }

            v18 = 0;
            v16 = 1;
          }

          while ((v19 & 1) != 0);
          v15 = 0;
          v14 = 1;
        }

        while ((v17 & 1) != 0);
        v13 = 0;
        v12 = 1;
      }

      while ((v21 & 1) != 0);
    }
  }
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void notify_ca(unsigned __int8 *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *a1;
    v3 = a1[1];
    v4 = a1[2];
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    v7 = *(a1 + 3);
    *buf = 67110400;
    v25 = v2;
    v26 = 1024;
    v27 = v3;
    v28 = 1024;
    v29 = v4;
    v30 = 1024;
    v31 = v5;
    v32 = 1024;
    v33 = v6;
    v34 = 1024;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notified CoreAnalytics of ECC error -> correctable: %u, preceded_by_correctable: %u, epoch: %u, uniqueness: %u, vendor: %u, count: %u", buf, 0x26u);
  }

  v8 = ecc_db;
  if (*(ecc_db + 1) == 1)
  {
    v9 = *(ecc_db + 3184);
    v10 = *(ecc_db + 3192);
    if (v9 >= v10)
    {
      v13 = *(ecc_db + 3176);
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v13) >> 2);
      v15 = v14 + 1;
      if (v14 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v13) >> 2);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x666666666666666)
      {
        v17 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ca_mem_err>>(ecc_db + 3176, v17);
      }

      v18 = 20 * v14;
      v19 = *a1;
      *(v18 + 16) = *(a1 + 4);
      *v18 = v19;
      v12 = 20 * v14 + 20;
      v20 = v8[397];
      v21 = v8[398] - v20;
      v22 = v18 - v21;
      memcpy((v18 - v21), v20, v21);
      v23 = v8[397];
      v8[397] = v22;
      v8[398] = v12;
      v8[399] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      v11 = *a1;
      *(v9 + 16) = *(a1 + 4);
      *v9 = v11;
      v12 = v9 + 20;
    }

    v8[398] = v12;
  }

  else
  {
    analytics_send_event_lazy();
  }
}

void *___ZL9notify_caR10ca_mem_err_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (**(a1 + 32))
  {
    v4 = "CE";
  }

  else
  {
    v4 = "UE";
  }

  xpc_dictionary_set_string(v2, "CEorUE", v4);
  xpc_dictionary_set_BOOL(v3, "PrecededByCE", *(*(a1 + 32) + 1));
  if (*(*(a1 + 32) + 2))
  {
    v5 = "Epoch";
  }

  else
  {
    v5 = "Accumulated";
  }

  xpc_dictionary_set_string(v3, "TimePeriod", v5);
  v6 = 0;
  v7 = *(*(a1 + 32) + 4);
  if (v7 <= 4)
  {
    v6 = (&off_10002D6E0)[v7];
  }

  xpc_dictionary_set_string(v3, "CountType", v6);
  xpc_dictionary_set_uint64(v3, "Vendor", *(*(a1 + 32) + 8));
  xpc_dictionary_set_uint64(v3, "ErrorCount", *(*(a1 + 32) + 12));
  if (*(ecc_db + 3208))
  {
    xpc_dictionary_set_uint64(v3, "QuartersCount", *(*(a1 + 32) + 16));
  }

  return v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ca_mem_err>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100012F7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100012F5CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1000131B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *_GLOBAL__sub_I_ecc_logging_cpp(EccDatabase *a1)
{
  result = EccDatabase::get_db(a1);
  ecc_db = result;
  return result;
}

vm_size_t get_neural_nofootprint_pages()
{
  if (get_neural_nofootprint_pages(int)::get_neural_ledger_once != -1)
  {
    get_neural_nofootprint_pages();
  }

  if (get_neural_nofootprint_pages(int)::neural_ledger_index < 0)
  {
    if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
    {
      get_neural_nofootprint_pages();
    }

    v0 = 0;
    goto LABEL_11;
  }

  v0 = malloc_type_malloc(48 * get_neural_nofootprint_pages(int)::ledger_entry_count, 0x1000040EED21634uLL);
  if ((ledger() & 0x80000000) != 0)
  {
    if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
    {
      get_neural_nofootprint_pages();
    }

LABEL_11:
    v1 = 0;
    goto LABEL_12;
  }

  v1 = v0[6 * get_neural_nofootprint_pages(int)::neural_ledger_index] / vm_page_size;
LABEL_12:
  free(v0);
  return v1;
}

void ___Z28get_neural_nofootprint_pagesi_block_invoke(id a1)
{
  getpid();
  if ((ledger() & 0x80000000) != 0)
  {
    if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
    {
      ___Z28get_neural_nofootprint_pagesi_block_invoke_cold_1();
    }

    v1 = 0;
  }

  else
  {
    get_neural_nofootprint_pages(int)::ledger_entry_count = v5;
    v1 = malloc_type_malloc(96 * v5, 0x1000040565EDBD2uLL);
    if ((ledger() & 0x80000000) != 0)
    {
      if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
      {
        ___Z28get_neural_nofootprint_pagesi_block_invoke_cold_1();
      }
    }

    else
    {
      v2 = get_neural_nofootprint_pages(int)::ledger_entry_count;
      if (get_neural_nofootprint_pages(int)::ledger_entry_count >= 1)
      {
        v3 = 0;
        v4 = v1;
        while (strncmp("neural_nofootprint_total", v4, 0x18uLL))
        {
          ++v3;
          v4 += 96;
          if (v2 == v3)
          {
            goto LABEL_14;
          }
        }

        get_neural_nofootprint_pages(int)::neural_ledger_index = v3;
      }
    }
  }

LABEL_14:
  free(v1);
}

void log_neural_processes(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 192))
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = (a1 + 200);
      v6 = (a1 + 204);
      do
      {
        v7 = *v5;
        neural_nofootprint_pages = get_neural_nofootprint_pages();
        if (neural_nofootprint_pages >= 1)
        {
          v9 = ane_check_log;
          if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v14 = v6;
            v15 = 2048;
            v16 = neural_nofootprint_pages;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Detected process %s with %lld pages of neural memory", buf, 0x16u);
          }
        }

        if (neural_nofootprint_pages > v4)
        {
          v4 = neural_nofootprint_pages;
          v3 = v5;
        }

        ++v2;
        v10 = *(a1 + 192);
        v5 += 72;
        v6 += 72;
      }

      while (v10 > v2);
      if (v3)
      {
        v11 = ane_check_log;
        if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v14 = v3 + 1;
          v15 = 2048;
          v16 = v4;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Top neural process is %s with %lld pages", buf, 0x16u);
        }

        return;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = ane_check_log;
    if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
    {
      log_neural_processes(v10, v12);
    }
  }

  else if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
  {
    log_neural_processes();
  }
}

uint64_t get_ane_memory_usage_bytes(void)
{
  v3 = 0u;
  memset(v2, 0, sizeof(v2));
  create_memory_info(v2);
  if (BYTE12(v3))
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v1, "com.apple.driver.AppleH[0-9]+ANEInterface[.DMA]*.ane[0-9]*", 0);
  }

  if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
  {
    get_ane_memory_usage_bytes();
  }

  return 0;
}

void send_ane_ca_event(BOOL a1, BOOL a2, uint64_t a3, uint64_t a4, BOOL a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v10, "killed_modelmanagerd", a1);
  xpc_dictionary_set_BOOL(v10, "kill_resolved_abandonment", a2);
  xpc_dictionary_set_int64(v10, "memory_usage_over_threshold", a3 - 1073741825);
  xpc_dictionary_set_int64(v10, "final_memory_usage_over_threshold", a4 - 1073741825);
  xpc_dictionary_set_BOOL(v10, "ended_in_maintenance_error", a5);
  analytics_send_event();

  xpc_release(v10);
}

uint64_t sync_are_models_loaded(void)
{
  v0 = dispatch_semaphore_create(0);
  dispatch_retain(v0);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___Z22sync_are_models_loadedv_block_invoke;
  v7[3] = &unk_10002D750;
  v7[4] = &v8;
  v7[5] = v0;
  are_ane_models_loaded(v7);
  v1 = dispatch_time(0, 3000000000);
  v2 = dispatch_semaphore_wait(v0, v1);
  dispatch_release(v0);
  if (v2)
  {
    if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
    {
      sync_are_models_loaded();
    }

    v3 = 1;
    send_ane_ca_event(0, 0, 0, 0, 1);
  }

  else if (*(v9 + 24) == 1)
  {
    v4 = ane_check_log;
    if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "models loaded, skipping ane abandonment check", v6, 2u);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

void ___Z22sync_are_models_loadedv_block_invoke(uint64_t a1, int a2)
{
  v4 = ane_check_log;
  if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_DEBUG))
  {
    ___Z22sync_are_models_loadedv_block_invoke_cold_1(a2, v4);
  }

  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = a2 != 0;
  dispatch_semaphore_signal(v5);
  dispatch_release(*(a1 + 40));
}

void perform_ane_check(void)
{
  if ((sync_are_models_loaded() & 1) == 0)
  {
    ane_memory_usage_bytes = get_ane_memory_usage_bytes();
    v1 = ane_check_log;
    v2 = os_log_type_enabled(ane_check_log, OS_LOG_TYPE_DEFAULT);
    if (ane_memory_usage_bytes > 1073741825)
    {
      if (v2)
      {
        *buf = 134217984;
        v9 = ane_memory_usage_bytes - 1073741825;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "ANE memory usage speculated to be over threshold by %lld bytes", buf, 0xCu);
      }

      if ((sync_are_models_loaded() & 1) == 0)
      {
        v3 = ane_check_log;
        if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Getting pre-assertion neural memory usage", buf, 2u);
        }

        v4 = jetsam_snapshot();
        log_neural_processes(v4);
        if (v4)
        {
          free(v4);
        }

        v5 = dispatch_semaphore_create(0);
        dispatch_retain(v5);
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = ___Z17perform_ane_checkv_block_invoke;
        v7[3] = &__block_descriptor_tmp_13;
        v7[4] = v5;
        run_with_ane_memory_maintenance_assertion(v7);
        v6 = dispatch_time(0, 30000000000);
        if (dispatch_semaphore_wait(v5, v6))
        {
          if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
          {
            perform_ane_check();
          }

          send_ane_ca_event(0, 0, 0, 0, 1);
        }

        dispatch_release(v5);
      }
    }

    else if (v2)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "ANE memory clearly not abandoned, skipping further checks", buf, 2u);
    }
  }
}

void ___Z17perform_ane_checkv_block_invoke(uint64_t a1)
{
  ane_memory_usage_bytes = get_ane_memory_usage_bytes();
  v3 = ane_check_log;
  v4 = os_log_type_enabled(ane_check_log, OS_LOG_TYPE_DEFAULT);
  if (ane_memory_usage_bytes >= 1073741826)
  {
    if (v4)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Getting post-assertion neural memory usage", &v19, 2u);
    }

    v10 = jetsam_snapshot();
    log_neural_processes(v10);
    if (v10)
    {
      free(v10);
    }

    if (is_internal_release == 1 && can_perform_on_screen_ttr())
    {
      launch_tap_to_radar_for_ane_abandonment();
    }

    pid_for_name = get_pid_for_name("modelmanagerd");
    v12 = ane_check_log;
    v13 = os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR);
    if (pid_for_name == -1)
    {
      if (v13)
      {
        ___Z17perform_ane_checkv_block_invoke_cold_4();
      }
    }

    else
    {
      if (v13)
      {
        ___Z17perform_ane_checkv_block_invoke_cold_1(ane_memory_usage_bytes, pid_for_name, v12);
      }

      v14 = terminate_with_reason();
      if (!v14)
      {
        sleep(6u);
        v17 = get_ane_memory_usage_bytes();
        v18 = ane_check_log;
        if (v17 >= 1073741826)
        {
          if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
          {
            ___Z17perform_ane_checkv_block_invoke_cold_3(v17, v18);
          }
        }

        else if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 134217984;
          v20 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ANE memory usage dropped below threshold after modelmanagerd kill, final memory usage %lld bytes", &v19, 0xCu);
        }

        v6 = v17 < 1073741826;
        v5 = 1;
        v7 = ane_memory_usage_bytes;
        v8 = v17;
        goto LABEL_5;
      }

      v15 = v14;
      v16 = ane_check_log;
      if (os_log_type_enabled(ane_check_log, OS_LOG_TYPE_ERROR))
      {
        ___Z17perform_ane_checkv_block_invoke_cold_2(v15, v16);
      }
    }

    v5 = 0;
    v6 = 0;
    v7 = ane_memory_usage_bytes;
    v8 = 0;
    v9 = 1;
    goto LABEL_22;
  }

  if (v4)
  {
    v19 = 134217984;
    v20 = ane_memory_usage_bytes;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ANE memory usage below threshold while no model loaded: size in bytes = %lld", &v19, 0xCu);
  }

  v5 = 0;
  v6 = 0;
  v7 = ane_memory_usage_bytes;
  v8 = 0;
LABEL_5:
  v9 = 0;
LABEL_22:
  send_ane_ca_event(v5, v6, v7, v8, v9);
  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_release(*(a1 + 32));
}

uint64_t mcc_notify(int *a1)
{
  v2 = *a1;
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v2 < 1)
  {
    if (v3)
    {
      v5 = a1[3];
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[6];
      v9 = a1[7];
      v10 = a1[8];
      v11 = a1[9];
      v13 = a1[1];
      v12 = a1[2];
      *buf = 67111424;
      v18 = v12;
      v19 = 1024;
      v20 = v5;
      v21 = 1024;
      v22 = v6;
      v23 = 1024;
      v24 = v7;
      v25 = 1024;
      v26 = v8;
      v27 = 1024;
      v28 = v9;
      v29 = 1024;
      v30 = v10;
      v31 = 1024;
      v32 = v11;
      v33 = 1024;
      v34 = v13 & 1;
      v35 = 1024;
      v36 = (v13 >> 1) & 1;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Notified CoreAnalytics of MCC error: status(%x) amcc(%x) plane(%x) bank(%x) way(%x) index(%x) bit_off_cl(%x) bit_off_within_hcl(%x) single_bit(%u) multi_bit(%u)", buf, 0x3Eu);
    }

    v14 = *a1;
    v15 = *(a1 + 1);
    v16 = *(a1 + 4);
    analytics_send_event_lazy();
    return 0;
  }

  else
  {
    if (v3)
    {
      *buf = 67109120;
      v18 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown ECC event version %u\n", buf, 8u);
    }

    return 5;
  }
}

xpc_object_t ___Z10mcc_notify15mcc_ecc_event_t_block_invoke(_DWORD *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "status", a1[10]);
  xpc_dictionary_set_uint64(v2, "amcc", a1[11]);
  xpc_dictionary_set_uint64(v2, "plane", a1[12]);
  xpc_dictionary_set_uint64(v2, "bank", a1[13]);
  xpc_dictionary_set_uint64(v2, "way", a1[14]);
  xpc_dictionary_set_uint64(v2, "index", a1[15]);
  xpc_dictionary_set_uint64(v2, "bit_off_cl", a1[16]);
  xpc_dictionary_set_uint64(v2, "bit_off_within_hcl", a1[17]);
  xpc_dictionary_set_uint64(v2, "single_bit", a1[9] & 1);
  xpc_dictionary_set_uint64(v2, "multi_bit", (a1[9] >> 1) & 1);
  return v2;
}

uint64_t memory_error_notification_server_routine(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 5902) >= 0xFFFFFFFE)
  {
    return *(&memory_error_notification_subsystem + 5 * (v1 - 5900) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t _Xmemory_error_notification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 72)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 72) && *(result + 76) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 48);
      v8[0] = *(result + 32);
      v8[1] = v5;
      v9 = *(result + 64);
      v6 = *(result + 108);
      v7[0] = *(result + 92);
      v7[1] = v6;
      result = memory_error_notification(v4, v8, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xmcc_memory_error_notification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 72)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 72) && *(result + 76) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 48);
      v8[0] = *(result + 32);
      v8[1] = v5;
      v9 = *(result + 64);
      v6 = *(result + 108);
      v7[0] = *(result + 92);
      v7[1] = v6;
      result = mcc_memory_error_notification(v4, v8, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t memory_error_notification_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 5902) >= 0xFFFFFFFE && (v5 = *(&memory_error_notification_subsystem + 5 * (v4 - 5900) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t one-time initialization function for Log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, Log);
  __swift_project_value_buffer(v0, Log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, Log);
  __swift_project_value_buffer(v0, Log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, Log);
  __swift_project_value_buffer(v0, Log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, Log);
  __swift_project_value_buffer(v0, Log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, Log);
  __swift_project_value_buffer(v0, Log);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, Log);
  __swift_project_value_buffer(v0, Log);
  return Logger.init(subsystem:category:)();
}

Swift::Int64 __swiftcall roundToTwoSigFigs(of:)(Swift::Int64 of)
{
  v1 = [objc_allocWithZone(NSNumberFormatter) init];
  [v1 setUsesSignificantDigits:1];
  [v1 setMaximumSignificantDigits:2];
  [v1 setMinimumSignificantDigits:2];
  isa = Int64._bridgeToObjectiveC()().super.super.isa;
  v3 = [v1 stringFromNumber:isa];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = String._bridgeToObjectiveC()();

  v5 = [v1 numberFromString:v4];

  if (v5)
  {
    v6 = [v5 longLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

Swift::Bool __swiftcall reportMachMemoryInfo(ca_enabled:)(Swift::Bool ca_enabled)
{
  if (!getuid())
  {
    if (one-time initialization token for Log == -1)
    {
LABEL_28:
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, Log);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Will not run reportMachMemoryInfo as root", v28, 2u);
      }

      return 0;
    }

LABEL_103:
    swift_once();
    goto LABEL_28;
  }

  v1 = [objc_allocWithZone(VMUWiredMemoryInfo) init];
  if ([v1 sample])
  {
    v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    roundToTwoSigFigs(of:)(v2 / 0x3B9ACA00);
    v108.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    v106 = v1;
    v3 = [v1 zoneInfo];
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = *(v4 + 16);
    if (v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v6 = 0;
      v107 = v5;
      do
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_102;
        }

        v7 = *(v4 + 8 * v6 + 32);

        if (*(v7 + 16))
        {
          v8 = specialized __RawDictionaryStorage.find<A>(_:)(1702521203, 0xE400000000000000);
          if (v9)
          {
            outlined init with copy of Any(*(v7 + 56) + 32 * v8, v112);
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v10 = v111[0];
              [v111[0] longLongValue];
            }
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100026670;
        *(inited + 32) = 0x6D616E5F656E6F7ALL;
        *(inited + 40) = 0xE900000000000065;
        if (*(v7 + 16))
        {
          v12 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
          if (v13)
          {
            outlined init with copy of Any(*(v7 + 56) + 32 * v12, v111);
            swift_dynamicCast();
          }
        }

        v14 = String._bridgeToObjectiveC()();

        *(inited + 48) = v14;
        *(inited + 56) = 0x746E756F63;
        *(inited + 64) = 0xE500000000000000;
        if (*(v7 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E756F63, 0xE500000000000000), (v16 & 1) != 0) && (outlined init with copy of Any(*(v7 + 56) + 32 * v15, v111), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr), (swift_dynamicCast() & 1) != 0))
        {
          isa = v110;
        }

        else
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
        }

        *(inited + 72) = isa;
        *(inited + 80) = 0xD000000000000014;
        *(inited + 88) = 0x8000000100027A20;
        if (*(v7 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(0x7A69735F6D656C65, 0xE900000000000065), (v19 & 1) != 0) && (outlined init with copy of Any(*(v7 + 56) + 32 * v18, v111), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr), (swift_dynamicCast() & 1) != 0))
        {
          v20 = v110;
        }

        else
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          v20 = NSNumber.init(integerLiteral:)(0).super.super.isa;
        }

        *(inited + 96) = v20;
        *(inited + 104) = 0xD000000000000011;
        *(inited + 112) = 0x8000000100027A40;
        *(inited + 120) = Int64._bridgeToObjectiveC()();
        *(inited + 128) = 0xD000000000000010;
        *(inited + 136) = 0x8000000100027A00;
        *(inited + 144) = v108;
        v21 = v108.super.super.isa;
        v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
        swift_arrayDestroy();

        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v24 + 1;
        _swiftEmptyArrayStorage[v24 + 4] = v22;
      }

      while (v107 != v6);

      v34 = _swiftEmptyArrayStorage[2];
      if (!v34)
      {
        goto LABEL_49;
      }
    }

    else
    {

      v34 = _swiftEmptyArrayStorage[2];
      if (!v34)
      {
LABEL_49:
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, Log);

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v112[0] = v58;
          *v57 = 134218242;
          *(v57 + 4) = _swiftEmptyArrayStorage[2];

          *(v57 + 12) = 2080;
          if (ca_enabled)
          {
            v59 = 0x616E412065726F43;
          }

          else
          {
            v59 = 0x676F6C5F736FLL;
          }

          if (ca_enabled)
          {
            v60 = 0xEE0073636974796CLL;
          }

          else
          {
            v60 = 0xE600000000000000;
          }

          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v112);

          *(v57 + 14) = v61;
          _os_log_impl(&_mh_execute_header, v55, v56, "Sent %ld zones to %s", v57, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v58);
        }

        else
        {
        }

        v62 = [v106 vmRegionInfo];
        v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v64 = *(v63 + 16);
        if (!v64)
        {
LABEL_82:

          v82 = _swiftEmptyArrayStorage[2];
          if (v82)
          {
            v83 = &_swiftEmptyArrayStorage[4];
            v84 = &lazy cache variable for type metadata for NSObject;
            do
            {
              v87 = *v83;

              if (ca_enabled)
              {
                v85 = String._bridgeToObjectiveC()();
                type metadata accessor for NSObject(0, v84, NSObject_ptr);
                v86 = Dictionary._bridgeToObjectiveC()().super.isa;

                AnalyticsSendEvent();
              }

              else
              {
                v88 = Logger.logObject.getter();
                v89 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v88, v89))
                {
                  v90 = swift_slowAlloc();
                  v91 = swift_slowAlloc();
                  v112[0] = v91;
                  *v90 = 136315138;
                  type metadata accessor for NSObject(0, v84, NSObject_ptr);
                  v92 = Dictionary.description.getter();
                  v93 = v84;
                  v95 = v94;

                  v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v95, v112);
                  v84 = v93;

                  *(v90 + 4) = v96;
                  _os_log_impl(&_mh_execute_header, v88, v89, "%s", v90, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v91);
                }

                else
                {
                }
              }

              ++v83;
              --v82;
            }

            while (v82);
          }

          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v112[0] = v100;
            *v99 = 134218242;
            v101 = _swiftEmptyArrayStorage[2];

            *(v99 + 4) = v101;

            *(v99 + 12) = 2080;
            if (ca_enabled)
            {
              v102 = 0x616E412065726F43;
            }

            else
            {
              v102 = 0x676F6C5F736FLL;
            }

            if (ca_enabled)
            {
              v103 = 0xEE0073636974796CLL;
            }

            else
            {
              v103 = 0xE600000000000000;
            }

            v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v112);

            *(v99 + 14) = v104;
            _os_log_impl(&_mh_execute_header, v97, v98, "Sent %ld VM Regions to %s", v99, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v100);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          return 1;
        }

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
        v65 = 0;
        while (v65 < *(v63 + 16))
        {
          v66 = *(v63 + 8 * v65 + 32);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
          v67 = swift_initStackObject();
          *(v67 + 16) = xmmword_100026670;
          *(v67 + 32) = 1701667182;
          *(v67 + 40) = 0xE400000000000000;
          if (*(v66 + 16))
          {
            v68 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
            if (v69)
            {
              outlined init with copy of Any(*(v66 + 56) + 32 * v68, v111);
              swift_dynamicCast();
            }
          }

          v70 = String._bridgeToObjectiveC()();

          *(v67 + 48) = v70;
          *(v67 + 56) = 0x626B5F657A6973;
          *(v67 + 64) = 0xE700000000000000;
          if (*(v66 + 16))
          {
            v71 = specialized __RawDictionaryStorage.find<A>(_:)(1702521203, 0xE400000000000000);
            if (v72)
            {
              outlined init with copy of Any(*(v66 + 56) + 32 * v71, v111);
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
              if (swift_dynamicCast())
              {
                [(objc_class *)v110 longLongValue];
              }
            }
          }

          *(v67 + 72) = Int64._bridgeToObjectiveC()();
          *(v67 + 80) = 0x626B5F6B616570;
          *(v67 + 88) = 0xE700000000000000;
          if (*(v66 + 16))
          {
            v73 = specialized __RawDictionaryStorage.find<A>(_:)(1801545072, 0xE400000000000000);
            if (v74)
            {
              outlined init with copy of Any(*(v66 + 56) + 32 * v73, v111);
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
              if (swift_dynamicCast())
              {
                [(objc_class *)v110 longLongValue];
              }
            }
          }

          *(v67 + 96) = Int64._bridgeToObjectiveC()();
          *(v67 + 104) = 0x695F6761745F6D76;
          *(v67 + 112) = 0xE900000000000064;
          if (*(v66 + 16) && (v75 = specialized __RawDictionaryStorage.find<A>(_:)(6775156, 0xE300000000000000), (v76 & 1) != 0) && (outlined init with copy of Any(*(v66 + 56) + 32 * v75, v111), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr), (swift_dynamicCast() & 1) != 0))
          {
            v77 = v110;
          }

          else
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
            v77 = NSNumber.init(integerLiteral:)(0).super.super.isa;
          }

          *(v67 + 120) = v77;
          *(v67 + 128) = 0xD000000000000010;
          *(v67 + 136) = 0x8000000100027A00;
          *(v67 + 144) = v108;
          v78 = v108.super.super.isa;
          v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(v67);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
          swift_arrayDestroy();

          v81 = _swiftEmptyArrayStorage[2];
          v80 = _swiftEmptyArrayStorage[3];
          if (v81 >= v80 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1);
          }

          ++v65;
          _swiftEmptyArrayStorage[2] = v81 + 1;
          _swiftEmptyArrayStorage[v81 + 4] = v79;
          if (v64 == v65)
          {
            goto LABEL_82;
          }
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }
    }

    v35 = &_swiftEmptyArrayStorage[4];
    v36 = "tools.stats.vmkerninfo";
    v37 = &selRef_init;
    do
    {
      v41 = *v35;
      if (ca_enabled)
      {
        v38 = *v35;

        v39 = String._bridgeToObjectiveC()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
        v40 = Dictionary._bridgeToObjectiveC()().super.isa;

        AnalyticsSendEvent();
      }

      else
      {
        v42 = v37[470];
        v43 = *v35;

        if (v42 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, Log);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v112[0] = v48;
          *v47 = 136315138;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
          v49 = Dictionary.description.getter();
          v50 = v36;
          v52 = v51;

          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v52, v112);
          v36 = v50;

          *(v47 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v45, v46, "%s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          v37 = &selRef_init;
        }

        else
        {
        }
      }

      ++v35;
      --v34;
    }

    while (v34);
    goto LABEL_49;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, Log);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to sample wired memory info", v33, 2u);
  }

  return 0;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSSo8NSObjectCGGMd, &_ss23_ContiguousArrayStorageCySDySSSo8NSObjectCGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd, &_sSDySSSo8NSObjectCGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t getKillCounts(band:)(int a1)
{
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 18;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  v3 = v2;
  *(v2 + 32) = 0u;
  v4 = memorystatus_control();
  if (!v4)
  {
    return v3;
  }

  v5 = v4;

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, Log);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109632;
    *(v9 + 4) = a1;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5;
    *(v9 + 14) = 1024;
    *(v9 + 16) = errno.getter();
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get jetsam kill counts for band %d: status = %d and errno = %d", v9, 0x14u);
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 18;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0;
  return result;
}

Swift::Void __swiftcall reportJetsamKillCountTelemetry()()
{
  v0 = 0;
  v1 = 0xEC000000746E756FLL;
  v2 = 0xEB000000006E6F73;
  v3 = 0x797469726F697270;
  v4 = 0x635F6D617374656ALL;
  while (1)
  {
    v38 = v0;
    v43 = *(&outlined read-only object #0 of one-time initialization function for JetsamBands + v0 + 8);
    v39 = getKillCounts(band:)(v43);
    v40 = *(v39 + 16);
    if (v40)
    {
      break;
    }

LABEL_2:
    v0 = v38 + 1;

    if (v38 == 22)
    {
      return;
    }
  }

  v5 = 0;
  v41 = v39 + 32;
  while (1)
  {
    if (v43 && !*(v41 + 4 * v5))
    {
      goto LABEL_5;
    }

    v42 = String._bridgeToObjectiveC()();
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:v5];
    v7 = v1;
    v8 = v6;
    v9 = v4;
    v10 = v7;
    v11 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v41 + 4 * v5)];
    v12 = v3;
    v13 = [objc_allocWithZone(NSNumber) initWithInt:v43];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v14 = static _DictionaryStorage.allocate(capacity:)();

    v15 = v8;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(0x6165725F74697865, v2);
    if (v17)
    {
      break;
    }

    v18 = v2;
    v19 = v14 + 8;
    *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
    v20 = (v14[6] + 16 * v16);
    *v20 = 0x6165725F74697865;
    v20[1] = v18;
    *(v14[7] + 8 * v16) = v15;
    v21 = v14[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v24 = v18;
    v14[2] = v23;
    v25 = v11;
    v1 = v10;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
    if (v27)
    {
      goto LABEL_18;
    }

    *(v19 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v28 = (v14[6] + 16 * v26);
    *v28 = v9;
    v28[1] = v10;
    *(v14[7] + 8 * v26) = v25;
    v29 = v14[2];
    v22 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v22)
    {
      goto LABEL_19;
    }

    v4 = v9;
    v14[2] = v30;
    v31 = v13;
    v3 = v12;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v12, 0xE800000000000000);
    if (v33)
    {
      goto LABEL_20;
    }

    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v34 = (v14[6] + 16 * v32);
    *v34 = v12;
    v34[1] = 0xE800000000000000;
    *(v14[7] + 8 * v32) = v31;
    v35 = v14[2];
    v22 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v14[2] = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayDestroy();
    type metadata accessor for NSObject();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();

    v2 = v24;
LABEL_5:
    if (v40 == ++v5)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall reportIdleReaperTelemetry()()
{
  v36 = 0;
  v35 = 4;
  v0 = String.utf8CString.getter();
  v1 = sysctlbyname((v0 + 32), &v36, &v35, 0, 0);

  if (v1)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, Log);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get sweep count value with errno %d", v5, 8u);
    }
  }

  v34 = 0;
  v33 = 4;
  v6 = String.utf8CString.getter();
  v7 = sysctlbyname((v6 + 32), &v34, &v33, 0, 0);

  if (v7)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, Log);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to get total kill count value with errno %d", v11, 8u);
    }
  }

  v32 = 0;
  v31 = 4;
  v12 = String.utf8CString.getter();
  v13 = sysctlbyname((v12 + 32), &v32, &v31, 0, 0);

  if (v13)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, Log);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to get total freed mb value with errno %d", v17, 8u);
    }
  }

  v18 = v32;
  if (v32 >> 22)
  {
    __break(1u);
  }

  else if (one-time initialization token for Log == -1)
  {
    goto LABEL_21;
  }

  swift_once();
LABEL_21:
  v19 = v18 << 10;
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, Log);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109632;
    swift_beginAccess();
    *(v23 + 4) = v36;
    *(v23 + 8) = 1024;
    swift_beginAccess();
    *(v23 + 10) = v34;
    *(v23 + 14) = 1024;
    swift_beginAccess();
    *(v23 + 16) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Sweep Count = %u | total reaper kills = %u | total freed mb = %u", v23, 0x14u);
  }

  v24 = String._bridgeToObjectiveC()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_1000266C0;
  *(inited + 40) = 0x8000000100027B90;
  swift_beginAccess();
  v26 = v36;
  v27 = objc_allocWithZone(NSNumber);
  *(inited + 48) = [v27 initWithUnsignedInt:{v26, v31}];
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x8000000100027BB0;
  swift_beginAccess();
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v34];
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000100027BD0;
  v28 = v36;
  if (v36)
  {
    v29 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v19 / v28];
  }

  else
  {
    v29 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  }

  *(inited + 96) = v29;
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x8000000100027BF0;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v19];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  type metadata accessor for NSObject();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

Swift::Bool __swiftcall canPerformOnScreenTTR()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v39 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = String._bridgeToObjectiveC()();
  v40 = 0;
  v10 = [v8 attributesOfItemAtPath:v9 error:&v40];

  if (v10)
  {
    v11 = v40;
    v12 = [v10 fileModificationDate];
    if (v12)
    {
      v13 = v12;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceNow.getter();
      if (v14 < -604800.0)
      {
        (*(v1 + 8))(v7, v0);

        return 1;
      }

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, Log);
      (*(v1 + 16))(v5, v7, v0);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        Date.timeIntervalSinceNow.getter();
        v36 = v35;
        v37 = *(v1 + 8);
        v37(v5, v0);
        *(v34 + 4) = v36 / 60.0 / 60.0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Time since last TTR less than one week. Last TTR %f hours ago", v34, 0xCu);

        v37(v7, v0);
      }

      else
      {

        v38 = *(v1 + 8);
        v38(v5, v0);
        v38(v7, v0);
      }
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, Log);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = v30;
        *v29 = 136315138;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000041, 0x8000000100027C30, &v40);
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get modification date of %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
      }
    }
  }

  else
  {
    v16 = v40;
    v17 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v40 = v17;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NSError();
    if (swift_dynamicCast())
    {
      v18 = v39[0];
      v19 = [v39[0] code];

      if (v19 == 260)
      {

        return 1;
      }
    }

    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, Log);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to get file attributes for last ttr time record with err: %@", v23, 0xCu);
      outlined destroy of NSObject?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }
  }

  return 0;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

Swift::Void __swiftcall updateLastOnScreenTTRTimeFile()()
{
  if (utimes("/private/var/mobile/Library/MemoryMaintenance/ane_abandonment_ttr", 0) && errno.getter() != 2)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, Log);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v12))
    {
      goto LABEL_13;
    }

    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 1) = errno.getter();
    v6 = "Update last Tap-To-Radar file failed with errno %d";
    v7 = v12;
    v8 = oslog;
    v9 = v13;
    v10 = 8;
    goto LABEL_12;
  }

  v0 = [objc_opt_self() defaultManager];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 createFileAtPath:v1 contents:0 attributes:0];

  if (v2)
  {
    return;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, Log);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Failed to update last Tap-To-Radar file, could not create file";
    v7 = v4;
    v8 = oslog;
    v9 = v5;
    v10 = 2;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v8, v7, v6, v9, v10);
  }

LABEL_13:
}

uint64_t launch_tap_to_radar_for_ane_abandonment()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in launchTapToRadarForANEAbandonment(), v5);
}

uint64_t closure #1 in launchTapToRadarForANEAbandonment()()
{
  return _swift_task_switch(closure #1 in launchTapToRadarForANEAbandonment(), 0, 0);
}

{
  result = _CFCopySystemVersionDictionaryValue();
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (&class metadata base offset for TapToRadarService)
    {
      v6 = &type metadata accessor for TapToRadarService == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || &nominal type descriptor for TapToRadarService == 0 || &type metadata for TapToRadarService == 0)
    {
    }

    else
    {
      v9 = [objc_allocWithZone(RadarDraft) init];
      v10 = objc_allocWithZone(RadarComponent);
      v11 = String._bridgeToObjectiveC()();
      v12 = String._bridgeToObjectiveC()();
      v13 = [v10 initWithName:v11 version:v12 identifier:1017196];

      [v9 setComponent:v13];
      _StringGuts.grow(_:)(54);
      v14._countAndFlagsBits = 91;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = v3;
      v15._object = v5;
      String.append(_:)(v15);

      v16._countAndFlagsBits = 0xD000000000000033;
      v16._object = 0x8000000100027CA0;
      String.append(_:)(v16);
      v17 = String._bridgeToObjectiveC()();

      [v9 setTitle:v17];

      [v9 setClassification:6];
      [v9 setReproducibility:5];
      v18 = String._bridgeToObjectiveC()();
      [v9 setProblemDescription:v18];

      type metadata accessor for TapToRadarService();
      v19 = static TapToRadarService.shared.getter();
      TapToRadarService.createDraft(_:processName:displayReason:completion:)();

      updateLastOnScreenTTRTimeFile()();
    }

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in launchTapToRadarForANEAbandonment()(uint64_t a1)
{
  if (!a1)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, Log);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Successfully started Tap-To-Radar", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, Log);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to launch Tap-To-Radar with error: %@", v3, 0xCu);
    outlined destroy of NSObject?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

LABEL_10:

    return;
  }
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  outlined init with copy of TaskPriority?(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000184C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in launchTapToRadarForANEAbandonment()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in launchTapToRadarForANEAbandonment();

  return closure #1 in launchTapToRadarForANEAbandonment()();
}

uint64_t closure #1 in launchTapToRadarForANEAbandonment()partial apply()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in launchTapToRadarForANEAbandonment();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t sub_100018818()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in launchTapToRadarForANEAbandonment()partial apply;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrialFactorType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrialFactorType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id specialized thunk for @escaping @callee_guaranteed @Sendable (@guaranteed TRILevel) -> (@unowned Bool)@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 longValue];
  *a2 = result != -1;
  return result;
}

Swift::Bool __swiftcall persistPreTrialDefault(trialFactorName:defaultValue:)(Swift::String trialFactorName, Swift::Int64 defaultValue)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (!v4)
  {
    v5 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    [v5 addSuiteNamed:v4];
  }

  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithSuiteName:v7];

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      outlined destroy of NSObject?(v19, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      memset(v19, 0, sizeof(v19));
      outlined destroy of NSObject?(v19, &_sypSgMd, &_sypSgMR);
      isa = Int64._bridgeToObjectiveC()().super.super.isa;
      v17 = String._bridgeToObjectiveC()();
      [v8 setObject:isa forKey:v17];
    }
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, Log);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v19[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000100028040, v19);
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to create UserDefaults for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }
  }

  return v8 != 0;
}

double getTrialDefaultValue(trialFactorName:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v8 = 0u;
      v9 = 0u;
    }

    result = *&v8;
    *a1 = v8;
    a1[1] = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

Swift::Bool __swiftcall persistSystemVersion(version:forDomain:)(Swift::String version, Swift::String forDomain)
{
  object = forDomain._object;
  countAndFlagsBits = forDomain._countAndFlagsBits;
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithSuiteName:v5];

  if (!v6)
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();
    [v7 addSuiteNamed:v6];
  }

  v8 = objc_allocWithZone(NSUserDefaults);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithSuiteName:v9];

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      outlined destroy of NSObject?(v21, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      memset(v21, 0, sizeof(v21));
      outlined destroy of NSObject?(v21, &_sypSgMd, &_sypSgMR);
      v18 = String._bridgeToObjectiveC()();
      v19 = String._bridgeToObjectiveC()();
      [v10 setObject:v18 forKey:v19];
    }
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, Log);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v21[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v21);
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to create UserDefaults for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }
  }

  return v10 != 0;
}

Swift::Bool_optional __swiftcall isStoredOSVersionCurrent(forDomain:)(Swift::String forDomain)
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  if (!v3)
  {
    LOBYTE(v6) = 2;
    return v6;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {

    outlined destroy of NSObject?(v17, &_sypSgMd, &_sypSgMR);
LABEL_14:
    LOBYTE(v6) = 0;
    return v6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  v6 = _CFCopySystemVersionDictionaryValue();
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v13 == v8 && v14 == v10)
    {

      LOBYTE(v6) = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v6) = v11 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  return v6;
}

Swift::Bool __swiftcall getAndSetPreTrialDefault(trialFactorType:trialFactorName:sysctlName:)(MemoryMaintenance_Swift::TrialFactorType trialFactorType, Swift::String trialFactorName, Swift::String sysctlName)
{
  object = sysctlName._object;
  countAndFlagsBits = sysctlName._countAndFlagsBits;
  v5 = trialFactorName._object;
  v6 = trialFactorName._countAndFlagsBits;
  if (trialFactorType > MemoryMaintenance_Swift_TrialFactorType_TFTInt32)
  {
    if (trialFactorType == MemoryMaintenance_Swift_TrialFactorType_TFTInt64)
    {
      defaultValue = 0;
      v52 = 8;
      v10 = String.utf8CString.getter();
      v11 = sysctlbyname((v10 + 32), &defaultValue, &v52, 0, 0);

      if (!v11)
      {
        v31._countAndFlagsBits = v6;
        v31._object = v5;
        if (!persistPreTrialDefault(trialFactorName:defaultValue:)(v31, defaultValue))
        {
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, Log);

          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v33, v34))
          {
            goto LABEL_43;
          }

          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v51 = v36;
          *v35 = 136315138;
          v37 = &v51;
LABEL_35:
          *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v37);
          v40 = "Failing to save default value for %s, skipping trial factor";
          v41 = v34;
          v42 = v33;
          v43 = v35;
          v44 = 12;
LABEL_42:
          _os_log_impl(&_mh_execute_header, v42, v41, v40, v43, v44);
          __swift_destroy_boxed_opaque_existential_0(v36);

LABEL_43:

          return 0;
        }

        return 1;
      }

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, Log);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v51 = v16;
        *v15 = 136315138;
        v17 = &v51;
LABEL_16:
        *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v17);
        v21 = "Failed to get existing value for %s";
        v22 = v14;
        v23 = v13;
        v24 = v15;
        v25 = 12;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v23, v22, v21, v24, v25);
        __swift_destroy_boxed_opaque_existential_0(v16);
      }
    }

    else
    {
      defaultValue = 0;
      v52 = 8;
      v26 = String.utf8CString.getter();
      v27 = sysctlbyname((v26 + 32), &defaultValue, &v52, 0, 0);

      if (!v27)
      {
        v45._countAndFlagsBits = v6;
        v45._object = v5;
        if (!persistPreTrialDefault(trialFactorName:defaultValue:)(v45, defaultValue))
        {
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          __swift_project_value_buffer(v47, Log);

          v33 = Logger.logObject.getter();
          v48 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v33, v48))
          {
            goto LABEL_43;
          }

          v49 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v51 = v36;
          *v49 = 136315394;
          *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v51);
          *(v49 + 12) = 1024;
          *(v49 + 14) = errno.getter();
          v40 = "Failing to save default value for %s, skipping trial factor, errno = %d";
          v41 = v48;
          v42 = v33;
          v43 = v49;
          v44 = 18;
          goto LABEL_42;
        }

        return 1;
      }

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, Log);

      v13 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v29))
      {
        v30 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v51 = v16;
        *v30 = 136315394;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v51);
        *(v30 + 12) = 1024;
        *(v30 + 14) = errno.getter();
        v21 = "Failed to get existing value for %s, errno = %d";
        v22 = v29;
        v23 = v13;
        v24 = v30;
        v25 = 18;
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (trialFactorType)
    {
      LODWORD(v51) = 0;
      defaultValue = 4;
      v18 = String.utf8CString.getter();
      v19 = sysctlbyname((v18 + 32), &v51, &defaultValue, 0, 0);

      if (!v19)
      {
        v9 = v51;
LABEL_30:
        v38._countAndFlagsBits = v6;
        v38._object = v5;
        if (!persistPreTrialDefault(trialFactorName:defaultValue:)(v38, v9))
        {
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, Log);

          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v33, v34))
          {
            goto LABEL_43;
          }

          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v52 = v36;
          *v35 = 136315138;
          v37 = &v52;
          goto LABEL_35;
        }

        return 1;
      }
    }

    else
    {
      LODWORD(v51) = 0;
      defaultValue = 4;
      v7 = String.utf8CString.getter();
      v8 = sysctlbyname((v7 + 32), &v51, &defaultValue, 0, 0);

      if (!v8)
      {
        v9 = v51;
        goto LABEL_30;
      }
    }

    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, Log);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v52 = v16;
      *v15 = 136315138;
      v17 = &v52;
      goto LABEL_16;
    }
  }

  return 0;
}

Swift::Void __swiftcall registerForIdleReaperTrial()()
{
  v0._object = 0x8000000100028040;
  v0._countAndFlagsBits = 0xD000000000000028;
  v1.value = isStoredOSVersionCurrent(forDomain:)(v0).value;
  if (v1.value == 2)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, Log);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_7;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Failed to get UserDefaults database, bailing";
    goto LABEL_6;
  }

  value = v1.value;
  if (v1.value)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, Log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No OS update detected, continuing", v10, 2u);
    }
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, Log);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "OS update has occurred, resetting stored OS version", v14, 2u);
    }

    v15 = _CFCopySystemVersionDictionaryValue();
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._object = 0x8000000100028040;
    v21._countAndFlagsBits = v17;
    v21._object = v19;
    v20._countAndFlagsBits = 0xD000000000000028;
    LOBYTE(v16) = persistSystemVersion(version:forDomain:)(v21, v20);

    if ((v16 & 1) == 0)
    {
      oslog = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(oslog, v3))
      {
        goto LABEL_7;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Error: OS updated, but unable to reset OS version data, bailing";
LABEL_6:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);

LABEL_7:

      return;
    }
  }

  if (one-time initialization token for registrationLock != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&registrationLock);
  _s23MemoryMaintenance_Swift25registerForNamespaceTrial9projectID13namespaceName17factorToSysctlMap12osHasUpdatedySo20TRIProject_ProjectIdV_SSSayAA0G10FactorTypeO_SbSo8TRILevelCYbcS2StGSbtFyytz_tYTXEfU_(227, &outlined read-only object #0 of one-time initialization function for gIdleReaperFactorNameToSysctlMap, 0xD000000000000031, 0x80000001000280C0, !value);

  os_unfair_lock_unlock(&registrationLock);
}

Swift::Void __swiftcall registerForVmTrial()()
{
  v0._object = 0x8000000100028070;
  v0._countAndFlagsBits = 0xD000000000000025;
  v1.value = isStoredOSVersionCurrent(forDomain:)(v0).value;
  if (v1.value == 2)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, Log);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_7;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Failed to get UserDefaults database, bailing";
    goto LABEL_6;
  }

  value = v1.value;
  if (v1.value)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, Log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No OS update detected, continuing", v10, 2u);
    }
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, Log);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "OS update has occurred, resetting stored OS version", v14, 2u);
    }

    v15 = _CFCopySystemVersionDictionaryValue();
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._object = 0x8000000100028070;
    v21._countAndFlagsBits = v17;
    v21._object = v19;
    v20._countAndFlagsBits = 0xD000000000000025;
    LOBYTE(v16) = persistSystemVersion(version:forDomain:)(v21, v20);

    if ((v16 & 1) == 0)
    {
      oslog = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(oslog, v3))
      {
        goto LABEL_7;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Error: OS updated, but unable to reset OS version data, bailing";
LABEL_6:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);

LABEL_7:

      return;
    }
  }

  if (one-time initialization token for registrationLock != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&registrationLock);
  _s23MemoryMaintenance_Swift25registerForNamespaceTrial9projectID13namespaceName17factorToSysctlMap12osHasUpdatedySo20TRIProject_ProjectIdV_SSSayAA0G10FactorTypeO_SbSo8TRILevelCYbcS2StGSbtFyytz_tYTXEfU_(366, &outlined read-only object #0 of one-time initialization function for gVmFactorNameToSysctlMap, 0xD000000000000025, 0x8000000100028100, !value);

  os_unfair_lock_unlock(&registrationLock);
}

void _s23MemoryMaintenance_Swift25registerForNamespaceTrial9projectID13namespaceName17factorToSysctlMap12osHasUpdatedySo20TRIProject_ProjectIdV_SSSayAA0G10FactorTypeO_SbSo8TRILevelCYbcS2StGSbtFyytz_tYTXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v109 = [objc_opt_self() clientWithIdentifier:a1];
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (a2 + 80);
    v104 = a4;
    v108 = a3;
    while (1)
    {
      *trialFactorType = *(v9 - 48);
      v10 = *(v9 - 4);
      v113 = *(v9 - 5);
      v11 = *(v9 - 3);
      v12 = *(v9 - 2);
      v13 = *v9;
      log = *(v9 - 1);

      v115 = v11;
      v14 = String._bridgeToObjectiveC()();
      v15 = String._bridgeToObjectiveC()();
      v16 = [v109 levelForFactor:v14 withNamespaceName:v15];

      if (!v16)
      {

        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, Log);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *&v119[0] = swift_slowAlloc();
          *v36 = 136315394;
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v12, v119);

          *(v36 + 4) = v37;
          *(v36 + 12) = 2080;
          *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v119);
          _os_log_impl(&_mh_execute_header, v34, v35, "Failed to find trial factor for name %s in namespace %s", v36, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_5;
      }

      v112 = v16;
      if (a5)
      {
        v17 = v8;
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, Log);

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *&v119[0] = v22;
          *v21 = 136315138;
          *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v12, v119);
          _os_log_impl(&_mh_execute_header, v19, v20, "OS has updated, clearing stored default for %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);

          a4 = v104;
        }

        v23 = objc_allocWithZone(NSUserDefaults);
        v24 = String._bridgeToObjectiveC()();
        v25 = [v23 initWithSuiteName:v24];

        if (!v25)
        {

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *&v119[0] = v56;
            *v55 = 136315138;
            v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v12, v119);

            *(v55 + 4) = v57;
            _os_log_impl(&_mh_execute_header, v53, v54, "Failed to remove default value for %s, skipping", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v56);
          }

          else
          {
          }

          v8 = v17;
          goto LABEL_83;
        }

        v26 = String._bridgeToObjectiveC()();
        [v25 removeObjectForKey:v26];

        v8 = v17;
      }

      v27 = objc_allocWithZone(NSUserDefaults);
      v28 = String._bridgeToObjectiveC()();
      v29 = [v27 initWithSuiteName:v28];

      if (v29)
      {
        v30 = String._bridgeToObjectiveC()();
        v31 = [v29 objectForKey:v30];

        if (v31)
        {
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          outlined destroy of NSObject?(v119, &_sypSgMd, &_sypSgMR);
          v32 = 1;
          goto LABEL_23;
        }

        memset(v119, 0, sizeof(v119));
        outlined destroy of NSObject?(v119, &_sypSgMd, &_sypSgMR);
      }

      v32 = 0;
LABEL_23:
      v39 = v112;
      v38 = v113;
      *&v119[0] = v112;
      v113(&v117, v119);
      if ((v32 & 1) == 0 && (v117 & 1) == 0)
      {

        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, Log);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        a3 = v108;
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = v8;
          v45 = swift_slowAlloc();
          *&v119[0] = v45;
          *v43 = 136315138;
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v12, v119);

          *(v43 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v41, v42, "Trial factor %s is disabled and no default value is specified, skipping", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          v8 = v44;
          a3 = v108;
        }

        else
        {
        }

        goto LABEL_5;
      }

      v105 = v8;
      *&v119[0] = v112;
      v113(&v117, v119);
      v47 = 0;
      v106 = 1;
      if ((v117 & 1) == 0 && ((v32 ^ 1) & 1) == 0)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, Log);

        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v119[0] = v52;
          *v51 = 136315138;
          *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v12, v119);
          _os_log_impl(&_mh_execute_header, v49, v50, "Trial factor %s is disabled but a default value is specified, resetting", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
        }

        getTrialDefaultValue(trialFactorName:)(&v117);
        v106 = v118 == 0;
        if (v118)
        {
          outlined init with take of Any(&v117, v119);
          swift_dynamicCast();
          v47 = v116;
        }

        else
        {
          outlined destroy of NSObject?(&v117, &_sypSgMd, &_sypSgMR);
          v47 = 0;
        }

        v58 = objc_allocWithZone(NSUserDefaults);
        v59 = String._bridgeToObjectiveC()();
        v60 = [v58 initWithSuiteName:v59];

        if (v60)
        {
          v61 = String._bridgeToObjectiveC()();
          [v60 removeObjectForKey:v61];
        }

        else
        {

          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *&v119[0] = v65;
            *v64 = 136315138;
            *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v12, v119);
            _os_log_impl(&_mh_execute_header, v62, v63, "Failed to remove default value for %s, may be sticky", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v65);
          }
        }

        a4 = v104;
        v39 = v112;
        v38 = v113;
      }

      *&v119[0] = v39;
      v38(&v117, v119);

      v66 = v32 | ~v117;
      a3 = v108;
      v67 = log;
      if ((v66 & 1) == 0)
      {
        v114 = v47;
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        __swift_project_value_buffer(v68, Log);

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&v119[0] = v72;
          *v71 = 136315138;
          v67 = log;
          *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v13, v119);
          _os_log_impl(&_mh_execute_header, v69, v70, "First trial enablement, storing default values for %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          a4 = v104;
        }

        else
        {

          v67 = log;
        }

        v47 = v114;
        v73._countAndFlagsBits = v115;
        v73._object = v12;
        v74._countAndFlagsBits = v67;
        v74._object = v13;
        v39 = v112;
        if (!getAndSetPreTrialDefault(trialFactorType:trialFactorName:sysctlName:)(trialFactorType[0], v73, v74))
        {

          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *&v119[0] = v80;
            *v79 = 136315138;
            v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v13, v119);

            *(v79 + 4) = v81;
            _os_log_impl(&_mh_execute_header, v77, v78, "Failed to set default value for %s, skipping", v79, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v80);
          }

          else
          {
          }

          v8 = v105;
          goto LABEL_5;
        }
      }

      if (*trialFactorType > 1)
      {
        if (*trialFactorType == 2)
        {
          *&v119[0] = 0;
          if (v106)
          {
            v47 = [v39 longValue];
          }
        }

        else
        {
          *&v119[0] = 0;
          if (v106)
          {
            v47 = [v39 BOOLeanValue];
          }
        }

        *&v119[0] = v47;
        v75 = (String.utf8CString.getter() + 32);
        v76 = 8;
      }

      else
      {
        LODWORD(v119[0]) = 0;
        if (v106)
        {
          LODWORD(v47) = [v39 longValue];
        }

        LODWORD(v119[0]) = v47;
        v75 = (String.utf8CString.getter() + 32);
        v76 = 4;
      }

      v82 = sysctlbyname(v75, 0, 0, v119, v76);

      if (v82)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        __swift_project_value_buffer(v83, Log);

        v84 = v39;
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v119[0] = swift_slowAlloc();
          *v87 = 136315906;
          v89 = v39;
          v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v13, v119);

          *(v87 + 4) = v90;
          *(v87 + 12) = 2080;
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v12, v119);

          *(v87 + 14) = v91;
          *(v87 + 22) = 2112;
          *(v87 + 24) = v84;
          *v88 = v89;
          a3 = v108;
          *(v87 + 32) = 1024;
          v92 = v84;
          *(v87 + 34) = errno.getter();
          _os_log_impl(&_mh_execute_header, v85, v86, "Failed to set %s with factor %s (%@), errno = %d", v87, 0x26u);
          outlined destroy of NSObject?(v88, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          a4 = v104;

          swift_arrayDestroy();
        }

        else
        {
        }

        v8 = v105;
        goto LABEL_5;
      }

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      __swift_project_value_buffer(v93, Log);

      v94 = v39;
      v95 = v39;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = v67;
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v119[0] = v101;
        *v98 = 136315394;
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v13, v119);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2112;
        *(v98 + 14) = v95;
        *v100 = v94;
        v103 = v95;
        _os_log_impl(&_mh_execute_header, v96, v97, "Successfully set %s to value of %@", v98, 0x16u);
        outlined destroy of NSObject?(v100, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0(v101);
        a4 = v104;
      }

      else
      {
      }

      v8 = v105;
LABEL_83:
      a3 = v108;
LABEL_5:
      v9 += 7;
      if (!--v8)
      {

        return;
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type TrialFactorType and conformance TrialFactorType()
{
  result = lazy protocol witness table cache variable for type TrialFactorType and conformance TrialFactorType;
  if (!lazy protocol witness table cache variable for type TrialFactorType and conformance TrialFactorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialFactorType and conformance TrialFactorType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrialFactorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrialFactorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t closure #1 in areModelsLoaded(callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Query();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(closure #1 in areModelsLoaded(callback:), 0, 0);
}

uint64_t closure #1 in areModelsLoaded(callback:)()
{
  v1 = *(v0 + 40);
  Query.init()();
  v2 = async function pointer to Query.loadedAssets.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = closure #1 in areModelsLoaded(callback:);
  v4 = *(v0 + 40);

  return Query.loadedAssets.getter();
}

{
  v1 = v0[2];
  v2 = *(v0[8] + 16);

  (*(v1 + 16))(v1, v2 != 0);
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, Log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to connect to modelmanagerd", v4, 2u);
  }

  v5 = v0[7];
  v6 = v0[2];

  (*(v6 + 16))(v6, 0);

  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in areModelsLoaded(callback:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = v1;

  v7 = v4[5];
  v8 = v4[4];
  v9 = v4[3];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = closure #1 in areModelsLoaded(callback:);
  }

  else
  {
    v4[8] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = closure #1 in areModelsLoaded(callback:);
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t partial apply for closure #1 in areModelsLoaded(callback:)()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in launchTapToRadarForANEAbandonment();

  return closure #1 in areModelsLoaded(callback:)(v3, v4, v5, v2);
}

void are_ane_models_loadedTm(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = _Block_copy(a1);
  v9 = _Block_copy(v8);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, a3, v11);

  _Block_release(v8);
}

uint64_t areModelsLoaded(callback:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = _Block_copy(a1);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, a3, v11);
}

uint64_t closure #1 in runWithMemoryMaintenanceAssertion(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for Assertion();
  v5 = async function pointer to Assertion.__allocating_init(policy:description:)[1];
  v6 = swift_task_alloc();
  *(v4 + 56) = v6;
  *v6 = v4;
  v6[1] = closure #1 in runWithMemoryMaintenanceAssertion(block:);

  return Assertion.__allocating_init(policy:description:)(0xD000000000000011, 0x8000000100028130, 0xD000000000000031, 0x8000000100028150);
}

uint64_t closure #1 in runWithMemoryMaintenanceAssertion(block:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = closure #1 in runWithMemoryMaintenanceAssertion(block:);
  }

  else
  {
    v5 = closure #1 in runWithMemoryMaintenanceAssertion(block:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t closure #1 in runWithMemoryMaintenanceAssertion(block:)()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, Log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Acquired MemoryMaintenance assertion in modelmanagerd", v4, 2u);
  }

  v5 = v0[6];

  (*(v5 + 16))(v5);
  v6 = async function pointer to Assertion.invalidate()[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = closure #1 in runWithMemoryMaintenanceAssertion(block:);
  v8 = v0[8];

  return Assertion.invalidate()();
}

{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(closure #1 in runWithMemoryMaintenanceAssertion(block:), 0, 0);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

{
  v18 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to acquire MemoryMaintenance assertion in modelmanagerd: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t partial apply for closure #1 in runWithMemoryMaintenanceAssertion(block:)()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in launchTapToRadarForANEAbandonment();

  return closure #1 in runWithMemoryMaintenanceAssertion(block:)(v3, v4, v5, v2);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t closure #1 in runWithMemoryMaintenanceAssertion(block:)partial apply()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = closure #1 in launchTapToRadarForANEAbandonment()partial apply;

  return closure #1 in runWithMemoryMaintenanceAssertion(block:)(v3, v4, v5, v2);
}

id closure #1 in registerBackgroundActivity(taskID:activity:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, Log);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v14);
    _os_log_impl(&_mh_execute_header, v9, v10, "Starting task %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  (*(a4 + 16))(a4);

  return [a1 setTaskCompleted];
}

void thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void registerSystemHWMActivity(activity:)(const void *a1)
{
  v1 = _Block_copy(a1);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x80000001000281D0, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = _Block_copy(v1);
  v8 = [objc_opt_self() sharedScheduler];
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000027;
  v10[3] = 0x80000001000281D0;
  v10[4] = v7;
  v12[4] = closure #1 in registerBackgroundActivity(taskID:activity:)partial apply;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v12[3] = &block_descriptor_7;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);

  _Block_release(v1);
}

void registerANEAbandonmentCheckActivity(activity:)(const void *a1)
{
  v1 = _Block_copy(a1);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000100028200, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = _Block_copy(v1);
  v8 = [objc_opt_self() sharedScheduler];
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000032;
  v10[3] = 0x8000000100028200;
  v10[4] = v7;
  v12[4] = closure #1 in registerBackgroundActivity(taskID:activity:)partial apply;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v12[3] = &block_descriptor_14;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);

  _Block_release(v1);
}

void registerCompressorSweepActivity(activity:)(const void *a1)
{
  v1 = _Block_copy(a1);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000100028240, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = _Block_copy(v1);
  v8 = [objc_opt_self() sharedScheduler];
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000025;
  v10[3] = 0x8000000100028240;
  v10[4] = v7;
  v12[4] = closure #1 in registerBackgroundActivity(taskID:activity:)partial apply;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v12[3] = &block_descriptor_21;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);

  _Block_release(v1);
}

Swift::Void __swiftcall registerReportMachMemoryInfoActivity()()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, Log);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    aBlock[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x8000000100028270, aBlock);
    _os_log_impl(&_mh_execute_header, v1, v2, "Registering %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  aBlock[4] = closure #1 in registerReportMachMemoryInfoActivity();
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);
  v7 = [objc_opt_self() sharedScheduler];
  v8 = String._bridgeToObjectiveC()();
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000034;
  v9[3] = 0x8000000100028270;
  v9[4] = v6;
  v11[4] = closure #1 in registerBackgroundActivity(taskID:activity:)partial apply;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v11[3] = &block_descriptor_31;
  v10 = _Block_copy(v11);

  [v7 registerForTaskWithIdentifier:v8 usingQueue:0 launchHandler:v10];
  _Block_release(v10);

  _Block_release(v5);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void registerKRExperimentsActivity(activity:)(const void *a1)
{
  v1 = _Block_copy(a1);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x80000001000282B0, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = _Block_copy(v1);
  v8 = [objc_opt_self() sharedScheduler];
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000002ELL;
  v10[3] = 0x80000001000282B0;
  v10[4] = v7;
  v12[4] = closure #1 in registerBackgroundActivity(taskID:activity:)partial apply;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v12[3] = &block_descriptor_38;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);

  _Block_release(v1);
}

void registerReportECCStatusActivity(activity:)(const void *a1)
{
  v1 = _Block_copy(a1);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x80000001000282E0, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = _Block_copy(v1);
  v8 = [objc_opt_self() sharedScheduler];
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000002ELL;
  v10[3] = 0x80000001000282E0;
  v10[4] = v7;
  v12[4] = closure #1 in registerBackgroundActivity(taskID:activity:)partial apply;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v12[3] = &block_descriptor_45;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);

  _Block_release(v1);
}

void scheduleKREExperimentsDestructiveUpdate(activity:)(const void *a1)
{
  v1 = _Block_copy(a1);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x8000000100028310, aBlock);
    _os_log_impl(&_mh_execute_header, v3, v4, "Scheduling %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithIdentifier:v8];

  v10 = v9;
  [v10 setRequiresSignificantUserInactivity:1];
  [v10 setTrySchedulingBefore:86400.0];
  [v10 setPriority:1];

  v11 = objc_opt_self();
  v12 = [v11 sharedScheduler];
  aBlock[0] = 0;
  v13 = [v12 submitTaskRequest:v10 error:aBlock];

  if (v13)
  {
    v14 = aBlock[0];
    v15 = [v11 sharedScheduler];
    v16 = String._bridgeToObjectiveC()();
    v17 = swift_allocObject();
    v17[2] = 0xD00000000000003BLL;
    v17[3] = 0x8000000100028310;
    v17[4] = v1;
    aBlock[4] = partial apply for closure #1 in scheduleKREExperimentsDestructiveUpdate(activity:);
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
    aBlock[3] = &block_descriptor_51;
    v18 = _Block_copy(aBlock);

    [v15 registerForTaskWithIdentifier:v16 usingQueue:0 launchHandler:v18];

    _Block_release(v18);
  }

  else
  {
    v19 = aBlock[0];
    _Block_release(v1);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to schedule KRExperiments destructive update with %@", v22, 0xCu);
      outlined destroy of NSObject?(v23);
    }

    else
    {
    }
  }
}

void registerRearmExcResourceActivity(activity:)(const void *a1)
{
  v1 = _Block_copy(a1);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x8000000100028350, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = _Block_copy(v1);
  v8 = [objc_opt_self() sharedScheduler];
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000002FLL;
  v10[3] = 0x8000000100028350;
  v10[4] = v7;
  v12[4] = closure #1 in registerBackgroundActivity(taskID:activity:)partial apply;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v12[3] = &block_descriptor_58;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);

  _Block_release(v1);
}

void register_system_hwm_activityTm(const void *a1, void (*a2)(void))
{
  v3 = _Block_copy(a1);
  a2();

  _Block_release(v3);
}

void registerReportJetsamTelemetryActivity(activity:)(const void *a1)
{
  v1 = _Block_copy(a1);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x8000000100028380, v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v7 = _Block_copy(v1);
  v8 = [objc_opt_self() sharedScheduler];
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000034;
  v10[3] = 0x8000000100028380;
  v10[4] = v7;
  v12[4] = closure #1 in registerBackgroundActivity(taskID:activity:)partial apply;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v12[3] = &block_descriptor_65;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);

  _Block_release(v1);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id partial apply for closure #1 in scheduleKREExperimentsDestructiveUpdate(activity:)(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, Log);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting task %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  (*(v5 + 16))(v5);

  return [a1 setTaskCompleted];
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

util::MappedFile *util::MappedFile::MappedFile(util::MappedFile *this, const char *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v3 = open(a2, 0, 0);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    if (!fstat(v3, &v10))
    {
      st_size = v10.st_size;
      if ((v10.st_mode & 0xF000) == 0x8000 && v10.st_size > 0)
      {
        *(this + 1) = v10.st_size;
        v7 = mmap(0, st_size, 1, 1, v4, 0);
        if (v7 == -1)
        {
          v8 = 0;
        }

        else
        {
          v8 = v7;
        }

        *this = v8;
      }
    }

    close(v4);
  }

  return this;
}

void util::MappedFile::~MappedFile(util::MappedFile *this)
{
  v2 = *this;
  if (v2)
  {
    munmap(v2, *(this + 1));
  }
}

uint64_t util::starts_with(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((a1[23] & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = *a2;
  if ((a2[23] & 0x80u) == 0)
  {
    v3 = a2;
  }

  v4 = *v2;
  v5 = *v3;
  if (v4 != v5)
  {
    return v5 == 0;
  }

  v6 = v3 + 1;
  v7 = v2 + 1;
  while (v4)
  {
    v8 = *v7++;
    v4 = v8;
    v9 = *v6++;
    v5 = v9;
    if (v4 != v9)
    {
      return v5 == 0;
    }
  }

  return 1;
}

BOOL util::c_str_starts_with(util *this, const char *a2, const char *a3)
{
  v3 = *this;
  v4 = *a2;
  if (v3 != v4)
  {
    return v4 == 0;
  }

  v5 = a2 + 1;
  v6 = this + 1;
  while (v3)
  {
    v7 = *v6++;
    v3 = v7;
    v8 = *v5++;
    v4 = v8;
    if (v3 != v8)
    {
      return v4 == 0;
    }
  }

  return 1;
}

BOOL util::ends_with(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[23];
  if ((v2 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 1);
  }

  v4 = a2[23];
  v5 = *a2;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  else
  {
    v5 = a2;
  }

  v6 = &v3[v2];
  if (v2)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v15 = &v3[v2];
  }

  else
  {
    v13 = *v5;
    v11 = v5 + 1;
    v12 = v13;
    v14 = v3;
    v15 = &v3[v2];
    do
    {
      v16 = v14 + 1;
      while (*v14 != v12)
      {
        ++v14;
        ++v16;
        if (v14 == v6)
        {
          goto LABEL_15;
        }
      }

      v17 = v4 - 1;
      v18 = v11;
      while (v17)
      {
        if (v16 == v6)
        {
          goto LABEL_15;
        }

        v20 = *v16++;
        v19 = v20;
        v21 = *v18++;
        --v17;
        if (v19 != v21)
        {
          goto LABEL_34;
        }
      }

      v15 = v14;
LABEL_34:
      ++v14;
    }

    while (v14 != v6);
  }

LABEL_15:
  v8 = v15 - v3;
  return (v15 != v6 || v4 == 0) && v8 != -1 && v8 == v2 - v4;
}

uint64_t util::split@<X0>(const std::string *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v33 = 0;
  *(v22 + *(v22[0] - 24)) = v5;
  v22[1] = 0;
  v6 = (v22 + *(v22[0] - 24));
  std::ios_base::init(v6, &v24);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *(&v23 + *(v23 - 3)) = v7;
  std::locale::locale(&v25);
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  *__p = 0u;
  v30 = 0u;
  v31 = 24;
  std::string::operator=(__p, a1);
  *(&v30 + 1) = 0;
  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((SBYTE7(v30) & 0x80u) == 0)
  {
    v9 = BYTE7(v30);
  }

  else
  {
    v9 = __p[1];
  }

  if ((v31 & 8) != 0)
  {
    *&v26 = v8;
    *(&v26 + 1) = v8;
    *(&v30 + 1) = v8 + v9;
    *&v27 = v8 + v9;
  }

  if ((v31 & 0x10) != 0)
  {
    *(&v30 + 1) = v8 + v9;
    if ((SBYTE7(v30) & 0x80u) == 0)
    {
      v10 = 22;
    }

    else
    {
      v10 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::string::resize(__p, v10, 0);
    v11 = BYTE7(v30);
    if (SBYTE7(v30) < 0)
    {
      v11 = __p[1];
    }

    *(&v27 + 1) = v8;
    *&v28 = v8;
    *(&v28 + 1) = &v11[v8];
    if ((v31 & 3) != 0)
    {
      if (v9 >> 31)
      {
        v12 = ((v9 - 0x80000000) * 0x200000005uLL) >> 64;
        v13 = 0x7FFFFFFF * ((v12 + ((v9 - 0x80000000 - v12) >> 1)) >> 30);
        v8 = (v8 + v13 + 0x7FFFFFFF);
        v9 = v9 - v13 - 0x7FFFFFFF;
        *&v28 = v8;
      }

      if (v9)
      {
        *&v28 = v8 + v9;
      }
    }
  }

  memset(&v21, 0, sizeof(v21));
  while (2)
  {
    std::istream::sentry::sentry();
    if (v34 != 1)
    {
      goto LABEL_38;
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      *v21.__r_.__value_.__l.__data_ = 0;
      v21.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v21.__r_.__value_.__s.__data_[0] = 0;
      *(&v21.__r_.__value_.__s + 23) = 0;
    }

    v14 = 0;
    while (1)
    {
      v15 = *(&v26 + *(v22[0] - 24));
      v16 = v15[3];
      if (v16 != v15[4])
      {
        v15[3] = v16 + 1;
        LOBYTE(v15) = *v16;
        goto LABEL_29;
      }

      LODWORD(v15) = (*(*v15 + 80))(v15);
      if (v15 == -1)
      {
        break;
      }

LABEL_29:
      if (v15 == a2)
      {
        v17 = 0;
        goto LABEL_37;
      }

      std::string::push_back(&v21, v15);
      ++v14;
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0 && v21.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
      {
        v17 = 4;
        goto LABEL_37;
      }
    }

    if (v14)
    {
      v17 = 2;
    }

    else
    {
      v17 = 6;
    }

LABEL_37:
    std::ios_base::clear((v22 + *(v22[0] - 24)), *(&v25.__locale_ + *(v22[0] - 24)) | v17);
LABEL_38:
    if ((*(&v25.__locale_ + *(v22[0] - 24)) & 5) == 0)
    {
      std::vector<std::string>::push_back[abi:ne200100](a3, &v21);
      continue;
    }

    break;
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v23 = v18;
  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
  }

  std::locale::~locale(&v25);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10001EE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  __cxa_end_catch();
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  std::ios::~ios();
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

__n128 util::ltrim@<Q0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = this;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (*(&this->__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = v5;
    goto LABEL_13;
  }

  v5 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if (!size)
  {
    goto LABEL_12;
  }

LABEL_3:
  v7 = (v5 + size);
  v8 = v5;
  do
  {
    v9 = v8->__r_.__value_.__s.__data_[0];
    if (v9 < 0)
    {
      if (!__maskrune(v9, 0x4000uLL))
      {
        goto LABEL_10;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v9] & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    v8 = (v8 + 1);
    --size;
  }

  while (size);
  v8 = v7;
LABEL_10:
  LOBYTE(v4) = *(&this->__r_.__value_.__s + 23);
LABEL_13:
  v10 = this;
  if ((v4 & 0x80) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[0];
  }

  std::string::erase(this, v5 - v10, v8 - v5);
  result = *&this->__r_.__value_.__l.__data_;
  *a2 = *&this->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  return result;
}

__n128 util::rtrim@<Q0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    v5 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  }

  else
  {
    v5 = (this + v4);
    v6 = this;
  }

  while (v5 != v6)
  {
    v8 = SHIBYTE(v5[-1].__r_.__value_.__r.__words[2]);
    v5 = (v5 - 1);
    v7 = v8;
    if (v8 < 0)
    {
      if (!__maskrune(v7, 0x4000uLL))
      {
LABEL_9:
        v6 = (&v5->__r_.__value_.__l.__data_ + 1);
        break;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v7] & 0x4000) == 0)
    {
      goto LABEL_9;
    }
  }

  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v9 < 0)
  {
    v11 = this->__r_.__value_.__r.__words[0];
    v10 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = this + v9;
    v11 = this;
  }

  std::string::erase(this, v6 - v11, v10 - v6);
  result = *&this->__r_.__value_.__l.__data_;
  *a2 = *&this->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  return result;
}

void util::trim(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *a1, *(a1 + 8));
  }

  else
  {
    v3 = *a1;
  }

  util::rtrim(&v3, &__p);
  util::ltrim(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_10001F248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

__n128 util::to_upper@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v6 = *a1;
    v5 = (*a1 + *(a1 + 8));
  }

  else
  {
    v5 = (a1 + v4);
    v6 = a1;
  }

  while (v6 != v5)
  {
    *v6 = __toupper(*v6);
    ++v6;
  }

  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  return result;
}

__n128 util::to_lower@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v6 = *a1;
    v5 = (*a1 + *(a1 + 8));
  }

  else
  {
    v5 = (a1 + v4);
    v6 = a1;
  }

  while (v6 != v5)
  {
    *v6 = __tolower(*v6);
    ++v6;
  }

  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  return result;
}

unint64_t util::stringprintf@<X0>(util *this@<X0>, _BYTE *a2@<X8>, ...)
{
  va_start(va, a2);
  vsnprintf(__str, 0x400uLL, this, va);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v5] = 0;
  return result;
}

BOOL util::c_str_ends_with(util *this, const char *a2, const char *a3)
{
  v5 = strlen(this);
  v6 = strlen(a2);
  return v5 >= v6 && strcmp(this + v5 - v6, a2) == 0;
}

void create_memory_info(os_log_t log)
{
  *v1 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error: failed (kr == KERN_SUCCESS)", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error: failed (kr != KERN_SUCCESS)", v1, 2u);
}

void try_compressor_sweep(os_log_t log)
{
  *v1 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to retrieve vm statistics before compressor sweep", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to retrieve vm statistics after compressor sweep", v1, 2u);
}

void try_compressor_sweep(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Unable to perform compressor sweep: %s", &v4, 0xCu);
}

void get_pid_for_name()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Got empty process list", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Unable to retrieve processes list", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "could not allocate memory for the processes buffer", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Unable to retrieve processes size for retrieving SpringBoard PID", v2, v3, v4, v5, v6);
}

void jetsam_snapshot()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "memorystatus_control request for on demand snapshot returned snapshot size of 0", v2, v3, v4, v5, v6);
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void report_system_hwm_state()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Corrupt system hwm state file", v2, v3, v4, v5, v6);
}

void check_kernel_high_water_mark_log()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Failed to read from reboot log file", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Failed to remove /var/mobile/Library/Logs/khwm.log", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Could not write reboot count", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Failed to write SystemMemoryReset report for KHWM reboot", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Could not open reboot log file", v2, v3, v4, v5, v6);
}

void check_kernel_high_water_mark_log(uint64_t *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void write_sysstatus_should_check_file()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "could not close reboot time file", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "could not open or create sysstatus should check file", v2, v3, v4, v5, v6);
}

void can_perform_user_reboot()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "gettimeofday failed", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "current time got back in time", v2, v3, v4, v5, v6);
}

void update_last_reboot_time()
{
  v5 = *__error();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "could not close reboot log once per boot file", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "could not create reboot log once per boot file", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "could not open reboot time file", v2, v3, v4, v5, v6);
}

void perform_user_reboot()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Error: failed (update_last_reboot_time())", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Error: failed (set_darkboot(MEMORY_MAINTENANCE_DARK_BOOT_SET))", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Error: failed (write_sysstatus_should_check_file())", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Error: failed (reboot3(RB2_USERREBOOT) == 0)", v2, v3, v4, v5, v6);
}

void rearm_exc_resource_implementation(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Error re-arming memory limits: %s", &v4, 0xCu);
}

void perform_springboard_eval(NSObject *a1, void *a2)
{
  v4 = __error();
  v5 = strerror(*v4);
  v6 = 136315138;
  v7 = v5;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Unable to set temp hard memory limits on SpringBoard: %s", &v6, 0xCu);
  *a2 = springboard_log;
}

void perform_springboard_eval()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Could not find SpringBoard watchdog port", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Unable to restore SpringBoard's original memory limits", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Unable to get SpringBoard memlimit properties", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Could not find Springboard. Bailing out", v2, v3, v4, v5, v6);
}

void mcc_memory_error_notification_cold_1(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to log error, message not from kernel: audit_pid %d", v1, 8u);
}

void ___Z27memory_error_mach_port_initv_block_invoke_cold_1()
{
  _os_assumes_log();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to set context for inbound notifications on the mach port", v0, 2u);
  }
}

void current_pressure_level_corrected()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "pressure: could not retrieve memory level", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "pressure: could not retrieve zone memory info", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "pressure: could not retrieve collectable bytes", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "kext not found", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "no kext info", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "pressure: could not retrieve memory size", v2, v3, v4, v5, v6);
}

void EccDatabase::attempt_db_recreation(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1 + 100;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to close connection to %s, rc: %d", &v3, 0x12u);
}

void EccDatabase::attempt_db_recreation(uint64_t a1, NSObject *a2)
{
  v4 = *__error();
  v5 = 136315394;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to remove %s, errno: %d", &v5, 0x12u);
}

void EccDatabase::insert_initialization_time()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void EccDatabase::get_time_from_db()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void EccDatabase::init_time_handling(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "init_time_handling";
  v5 = 2080;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: failed to open database %s, rc: %d", &v3, 0x1Cu);
}

void EccDatabase::get_unique_addr_count()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void EccDatabase::get_total_count()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void EccDatabase::insert()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void EccDatabase::remove_addr()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void EccDatabase::is_page_retired()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void EccDatabase::regenerate_retired_pages(uint64_t a1, NSObject *a2)
{
  v4 = *__error();
  v5 = 136315650;
  v6 = "regenerate_retired_pages";
  v7 = 2080;
  v8 = a1;
  v9 = 1024;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Cannot open database file %s, errno %d", &v5, 0x1Cu);
}

void update_path()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void get_device_tree_property()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ecc_log_kernel_notification()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void get_neural_nofootprint_pages()
{
  dispatch_once(&get_neural_nofootprint_pages(int)::get_neural_ledger_once, &__block_literal_global_2);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Error: failed (neural_ledger_index > -1)", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "Error: failed (ret >= 0)", v2, v3, v4, v5, v6);
}

void log_neural_processes(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find top neural process from %lu entries", &v2, 0xCu);
}

void get_ane_memory_usage_bytes()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "No ANE tag found", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&_mh_execute_header, v0, v1, "error calling mach_memory_info", v2, v3, v4, v5, v6);
}

void ___Z22sync_are_models_loadedv_block_invoke_cold_1(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "is_model_loaded callback received %d", v2, 8u);
}

void ___Z17perform_ane_checkv_block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1 - 1073741825;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "ANE memory usage above abandonment threshold by %lld bytes, killing modelmanagerd (%d)", &v3, 0x12u);
}

void ___Z17perform_ane_checkv_block_invoke_cold_2(int a1, NSObject *a2)
{
  v4 = *__error();
  v5[0] = 67109376;
  v5[1] = a1;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "terminate_with_reason failed with status = %d and errno %d", v5, 0xEu);
}

void ___Z17perform_ane_checkv_block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1 - 1073741825;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ANE memory usage remained over threshold by %lld bytes", &v2, 0xCu);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}