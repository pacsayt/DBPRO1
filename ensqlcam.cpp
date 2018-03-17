// ensqlcam.cpp

// Ezen az egy helyen van az 'sqlca' valtozo GLOBALISAN definialva
// A tobbszoros definialas (vo.:linker-hiba) elkerulese vegett
// a *.pc file-okban csak deklaracio van (a megfelelo #define-okkal)
#undef SQLCA
#include <sqlca.h>

#include "ensqlcam.h"
#include <memory.h>

EnSQLCAm gl_sEnSQLCAm = {
                          {'S', 'Q', 'L', 'C', 'A', ' ', ' ', ' '},
                          sizeof( EnSQLCAm),
                          0,
                          { 0, {0}},
                          {'N', 'O', 'T', ' ', 'S', 'E', 'T', ' '},
                          {0, 0, 0, 0, 0, 0},
                          {0, 0, 0, 0, 0, 0, 0, 0},
                          {0, 0, 0, 0, 0, 0, 0, 0}
                        } ;

void SQL_SQLCAFeltolt()
{
  memcpy( gl_sEnSQLCAm.sqlcaid, sqlca.sqlcaid, 8) ;
  gl_sEnSQLCAm.sqlabc  = sqlca.sqlabc  ;
  gl_sEnSQLCAm.sqlcode = sqlca.sqlcode ;

  gl_sEnSQLCAm.sqlerrm.sqlerrml = sqlca.sqlerrm.sqlerrml ;
  memcpy( gl_sEnSQLCAm.sqlerrm.sqlerrmc, sqlca.sqlerrm.sqlerrmc, 70) ;

  memcpy( gl_sEnSQLCAm.sqlerrp, sqlca.sqlerrp,  8) ;
  memcpy( gl_sEnSQLCAm.sqlerrd, sqlca.sqlerrd, 24) ;
  memcpy( gl_sEnSQLCAm.sqlwarn, sqlca.sqlwarn,  8) ;
  memcpy( gl_sEnSQLCAm.sqlext , sqlca.sqlext ,  8) ;
}

/*
void SQL_SQLCAFeltolt(EnSQLCAm* pSQLCA)
{
  if ( pSQLCA != NULL )
  {
    memcpy( gl_sEnSQLCAm.sqlcaid, pSQLCA->sqlcaid, 8) ;
    gl_sEnSQLCAm.sqlabc  = pSQLCA->sqlabc  ;
    gl_sEnSQLCAm.sqlcode = pSQLCA->sqlcode ;

    gl_sEnSQLCAm.sqlerrm.sqlerrml = pSQLCA->sqlerrm.sqlerrml ;
    memcpy( gl_sEnSQLCAm.sqlerrm.sqlerrmc, pSQLCA->sqlerrm.sqlerrmc, 70) ;

    memcpy( gl_sEnSQLCAm.sqlerrp, pSQLCA->sqlerrp,  8) ;
    memcpy( gl_sEnSQLCAm.sqlerrd, pSQLCA->sqlerrd, 24) ;
    memcpy( gl_sEnSQLCAm.sqlwarn, pSQLCA->sqlwarn,  8) ;
    memcpy( gl_sEnSQLCAm.sqlext , pSQLCA->sqlext ,  8) ;

    //  memcpy( &gl_sEnSQLCAm, pSQLCA, sizeof(EnSQLCAm)) ;
  }
}
*/