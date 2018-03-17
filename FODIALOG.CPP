// FoDialog.cpp : implementation file
//

#include "stdafx.h"

#include "ensqlcam.h"

#include "dbpro1.h"
#include "fodialog.h"

#include "csatlako.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	void OnWizard();
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFoDialog dialog

CFoDialog::CFoDialog(CWnd* pParent /*=NULL*/)
	: CDialog(CFoDialog::IDD, pParent)
{
	//{{AFX_DATA_INIT(CFoDialog)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CFoDialog::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CFoDialog)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CFoDialog, CDialog)
	//{{AFX_MSG_MAP(CFoDialog)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_CSATL_DB, OnCsatlakozas)
	ON_BN_CLICKED(IDOK, OnKilepes)
	ON_BN_CLICKED(IDC_SELECT_B, OnSelect)
	ON_BN_CLICKED(IDC_INSERT_B, OnInsert)
	ON_BN_CLICKED(IDC_SEL_CRSR_B, OnSelCrsr)
	ON_BN_CLICKED(IDC_SEL_CRSR_PNT_B, OnSelCrsrPnt)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFoDialog message handlers

BOOL CFoDialog::OnInitDialog()
{
  CEdit *pNevEd    = (CEdit*) GetDlgItem(IDC_NEV_E)    ;
  CEdit *pJelszoEd = (CEdit*) GetDlgItem(IDC_JELSZO_E) ;

	CDialog::OnInitDialog();

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	CString strAboutMenu;
	strAboutMenu.LoadString(IDS_ABOUTBOX);
	if (!strAboutMenu.IsEmpty())
	{
		pSysMenu->AppendMenu(MF_SEPARATOR);
		pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
	}

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
  pNevEd->SetWindowText( "SCOTT") ;
  pJelszoEd->SetWindowText( "TIGER") ;
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CFoDialog::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CFoDialog::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CFoDialog::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CAboutDlg::OnWizard()
{
	// TODO: The property sheet attached to your project
	// via this function is not hooked up to any message
	// handler.  In order to actually use the property sheet,
	// you will need to associate this function with a control
	// in your project such as a menu item or tool bar button.

//	CMyPropertySheet propSheet;

//	propSheet.DoModal();

	// This is where you would retrieve information from the property
	// sheet if propSheet.DoModal() returned IDOK.  We aren't doing
	// anything for simplicity.
}

void CFoDialog::OnCsatlakozas()
{
  CEdit *pNevEd    = (CEdit*) GetDlgItem(IDC_NEV_E)    ;
  CEdit *pJelszoEd = (CEdit*) GetDlgItem(IDC_JELSZO_E) ;

  long lSQLCODE = 0 ;
  CString cNev, cJelszo ;

  pNevEd->GetWindowText( cNev) ;
  pJelszoEd->GetWindowText( cJelszo) ;

  lSQLCODE = SQL_Csatlakozas( cNev, cJelszo) ;

  SQLCAKiir() ;
}

void CFoDialog::OnSelect()
{
  CEdit *pEredmEd  = (CEdit*) GetDlgItem(IDC_SQL_EREDM_E) ;

  long     lSQLCODE    = 0   ;
  int      nSzamTiz    = 0   ;
  char     cSzamKetNN  = ' ' ;
  double   dSzamHarHar = 0.0 ;
  char     sChr_10[11] ;
  char     sVchr2_15[16] ;
  char     sDatum[13]  ;
  char     pszUjSor[150] ;
  unsigned uSequence   = 0 ;

  SQL_SelectSequence( &uSequence) ;
  
  SQLCAKiir() ;

  lSQLCODE = SQL_Select(&nSzamTiz, &cSzamKetNN, &dSzamHarHar, sChr_10, sVchr2_15, sDatum) ;

  MindentTorol() ;

  if ( lSQLCODE >= 0 )
  {
    sprintf( pszUjSor, "nSzamTiz:%d , cSzamKetNN:%d , dSzamHarHar:%f", nSzamTiz, cSzamKetNN, dSzamHarHar) ;
    AddLine( pszUjSor) ;
    TRACE("\n%s", pszUjSor) ;

    sprintf( pszUjSor, "sChr_10: %s , sVchr2_15: %s , sDatum: %s", sChr_10, sVchr2_15, sDatum) ;
    AddLine( pszUjSor) ;
    TRACE("\n%s", pszUjSor) ;
  }
  else
  {
    TRACE("\n Hiba tortent -> nem ad vissza ertelmes adatokat") ;
  }

  SQLCAKiir() ;
}

void CFoDialog::OnInsert()
{
  long   lSQLCODE    = 0  ;

  unsigned* pTomb ;
/*
  unsigned    nSzamTiz    = 0xffffffff ;
  char   cSzamKetNN  = 88 ;
  double dSzamHarHar = 888.888 ;
  char   sChr_10[11] = "sChr_10" ;
  char   sVchr2_15[16] = "sVchr2_15" ;
  char   sDatum[12]  = "1998-12-30" ;
	
  lSQLCODE = SQL_Insert( nSzamTiz, cSzamKetNN, dSzamHarHar, sChr_10, sVchr2_15, sDatum) ;

  MindentTorol() ;
*/
  const unsigned uiTombMer = 60000 ;
  pTomb = new unsigned[uiTombMer] ;

  if ( pTomb == NULL )
    return ;

  for ( int i = uiTombMer-1 ; i >= 0  ; i-- )
    pTomb[i] = i ;

//  lSQLCODE = SQL_TombInsert( pTomb, uiTombMer) ;

  for ( i = 0 ; i < uiTombMer && lSQLCODE == 0 ; i++ )
  {
    lSQLCODE = SQL_TombInsert( pTomb+i, 1) ;
  }
  
  SQLCAKiir() ; // sqlext-tel van hiba, ill. ami utana jon

  delete pTomb ;
}

void CFoDialog::OnSelCrsr()
{
  long    lSQLCODE  = 0 ;
  long    nSQLErrd2 = 0 ;
  char    pszUjSor[150] ;

  /*struct*/ sSzamok sSzamTomb[2] = { { 0, 0, 0.0}, { 0, 0, 0.0}} ;

  sSzamTomb[0].n_szam_tiz     = 0 ;
  sSzamTomb[0].c_szam_ket_nn  = 0 ;
  sSzamTomb[0].d_szam_har_har = 0.0 ;

  sSzamTomb[1].n_szam_tiz     = 0 ;
  sSzamTomb[1].c_szam_ket_nn  = 0 ;
  sSzamTomb[1].d_szam_har_har = 0.0 ;

  gl_sEnSQLCAm.sqlerrd[2] = 0 ;

  do
  {
    nSQLErrd2 = gl_sEnSQLCAm.sqlerrd[2] ;

    lSQLCODE  = SQL_SelectCursor( sSzamTomb) ;

    if ( lSQLCODE >= 0 && (gl_sEnSQLCAm.sqlerrd[2] - nSQLErrd2) > 0 )
    {
      sprintf( pszUjSor, "sqlerrd[2]:%d", gl_sEnSQLCAm.sqlerrd[2]) ;
      AddLine( pszUjSor) ;
      TRACE("\n%s", pszUjSor) ;

      sprintf( pszUjSor, "n_szam_tiz:%u , c_szam_ket_nn:%u , d_szam_har_har:%f",
               sSzamTomb[0].n_szam_tiz, sSzamTomb[0].c_szam_ket_nn, sSzamTomb[0].d_szam_har_har) ;
      AddLine( pszUjSor) ;
      TRACE("\n%s", pszUjSor) ;

      if ( lSQLCODE == 0 )
      {
        sprintf( pszUjSor, "n_szam_tiz:%u , c_szam_ket_nn:%u , d_szam_har_har:%f",
                 sSzamTomb[1].n_szam_tiz, sSzamTomb[1].c_szam_ket_nn, sSzamTomb[1].d_szam_har_har) ;
        AddLine( pszUjSor) ;
        TRACE("\n%s", pszUjSor) ;
      }
    }
    else
    {
      TRACE("\n Hiba tortent -> nem ad vissza ertelmes adatokat \n") ;
    }
  }
  while ( lSQLCODE == 0 /*(gl_sEnSQLCAm.sqlerrd[2] - nSQLErrd2) == 2*/ ) ;
}


void CFoDialog::OnSelCrsrPnt() 
{
	SQL_SelectCrsrPnt() ;

  SQLCAKiir() ;
}

void CFoDialog::OnKilepes() 
{
  SQL_Kilepes() ;	

//  CDialog::OnCancel() ;
  CDialog::OnOK() ;
}

void CFoDialog::SQLCAKiir()
{
  int i ;
  char pSzov[100] ;

  sprintf( pSzov, "sqlcaid:%.*s", 8, gl_sEnSQLCAm.sqlcaid ) ;
  pSzov[15] = '\0' ;

  AddLine( pSzov) ;
  TRACE("\n%s", pSzov ) ;

  sprintf( pSzov, "sqlabc:%d", gl_sEnSQLCAm.sqlabc ) ;
  AddLine( pSzov) ;
  TRACE("\nsqlabc:%d", gl_sEnSQLCAm.sqlabc ) ;

  sprintf( pSzov, "sqlcode:%d", gl_sEnSQLCAm.sqlcode ) ;
  AddLine( pSzov) ;
  TRACE("\nsqlcode:%d", gl_sEnSQLCAm.sqlcode ) ;

  sprintf( pSzov, "sqlerrm.sqlerrml:%d", gl_sEnSQLCAm.sqlerrm.sqlerrml ) ;
  AddLine( pSzov) ;
  TRACE("\nsqlerrml:%d", gl_sEnSQLCAm.sqlerrm.sqlerrml ) ;

  sprintf( pSzov, "sqlerrm.sqlerrmc:%.*s", 17+gl_sEnSQLCAm.sqlerrm.sqlerrml,
  	                                       gl_sEnSQLCAm.sqlerrm.sqlerrmc ) ;

  pSzov[17+gl_sEnSQLCAm.sqlerrm.sqlerrml] = '\0' ;

  AddLine( pSzov) ;
  TRACE("\n%s", pSzov ) ;

  if ( gl_sEnSQLCAm.sqlerrp == NULL )
  {
    strcpy( pSzov, "sqlerrp: NULL") ;
  }
  else
  {
//    sprintf( pSzov, "sqlerrp:%s", gl_sEnSQLCAm.sqlerrp ) ;
  }
//  AddLine( pSzov) ;
//  TRACE("\n%s", pSzov ) ;

  sprintf( pSzov, "sqlerrd[2]:%d", gl_sEnSQLCAm.sqlerrd[2] ) ;
  AddLine( pSzov) ;
  TRACE("\nsqlerrd[2]:%d", gl_sEnSQLCAm.sqlerrd[2] ) ;

  strcpy( pSzov, "sqlwarn:") ;

  for ( i=0 ; i < 8 ; i++ )
  {
    sprintf( pSzov, "%s %d:%c", pSzov, i, gl_sEnSQLCAm.sqlwarn[i]) ;
  }

  AddLine( pSzov) ;
  TRACE("\n%s", pSzov ) ;

  if ( gl_sEnSQLCAm.sqlext == NULL )
  {
    strcpy( pSzov, "sqlext: NULL") ;
  }
  else
  {
    sprintf( pSzov, "sqlext:%s", gl_sEnSQLCAm.sqlext ) ;
  }
  AddLine( pSzov) ;
  TRACE("\n%s", pSzov ) ;
}

void CFoDialog::AddLine(LPCTSTR lpsz)
{
  CEdit *pEredmEd  = (CEdit*) GetDlgItem(IDC_SQL_EREDM_E) ;

	char	pSzov[102];
	int		nLastChar;
	int		nSorokSzama ;

  nSorokSzama = pEredmEd->GetLineCount() ;

  nLastChar = pEredmEd->LineIndex( nSorokSzama - 1) +
              pEredmEd->LineLength(nSorokSzama) ;

  _stprintf(pSzov, "%s\x0D\x0A", lpsz) ;

  pEredmEd->SetSel(nLastChar, nLastChar, TRUE/*bNoScroll*/) ;
  pEredmEd->ReplaceSel(pSzov) ;
}

void CFoDialog::MindentTorol()
{
  CEdit *pEredmEd  = (CEdit*) GetDlgItem(IDC_SQL_EREDM_E) ;
  // Mindent kijelol, majd torol
  pEredmEd->SetSel(DWORD(-1)<<16) ; // 0xffff0000) ;
  pEredmEd->Clear() ;
}
