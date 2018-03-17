// csatlako.h

long SQL_Csatlakozas(const char* pszNev, const char* pszJelszo) ;

void SQL_Kilepes() ;

long SQL_Select(int*  pSzamTiz , char* pSzamKetNN , double* pSzamHarHar,
                char* pszChr_10, char* pszVchr2_15, char*   pszDatum) ;

long SQL_SelectCursor(sSzamok* pSzamBuff) ;

long SQL_SelectCrsrPnt() ;

long SQL_SelectSequence(unsigned* pSzam) ;


long SQL_Insert(int   nSzamTiz , char  cSzamKetNN , double dSzamHarHar,
                char* pszChr_10, char* pszVchr2_15, char*  pszDatum) ;

long SQL_TombInsert(unsigned* pTomb, unsigned nTombMeret) ;
