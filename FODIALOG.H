// fodialog.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CFoDialog dialog

class CFoDialog : public CDialog
{
// Construction
public:
	CFoDialog(CWnd* pParent = NULL) ;	// standard constructor

// Dialog Data
	//{{AFX_DATA(CFoDialog)
	enum { IDD = IDD_DBPRO1_DIALOG } ;
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFoDialog)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX) ;	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon ;

	// Generated message map functions
	//{{AFX_MSG(CFoDialog)
	virtual BOOL OnInitDialog() ;
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam) ;
	afx_msg void OnPaint() ;
	afx_msg HCURSOR OnQueryDragIcon() ;
	afx_msg void OnCsatlakozas() ;
	afx_msg void OnKilepes() ;
	afx_msg void OnSelect();
	afx_msg void OnInsert();
	afx_msg void OnSelCrsr();
	afx_msg void OnSelCrsrPnt();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

  void SQLCAKiir() ;
  void AddLine(LPCTSTR lpsz) ;
  void MindentTorol() ;
} ;
