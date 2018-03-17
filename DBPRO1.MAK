# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=DBPRO1 - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to DBPRO1 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "DBPRO1 - Win32 Release" && "$(CFG)" != "DBPRO1 - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "DBPRO1.MAK" CFG="DBPRO1 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "DBPRO1 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "DBPRO1 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "DBPRO1 - Win32 Debug"
RSC=rc.exe
CPP=cl.exe
MTL=mktyplib.exe

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\DBPRO1.exe" "$(OUTDIR)\DBPRO1.pch" ".\CSATLAKO.C" ".\INSERT.C"\
 ".\SELECT.C"

CLEAN : 
	-@erase "$(INTDIR)\CSATLAKO.OBJ"
	-@erase "$(INTDIR)\DBPRO1.obj"
	-@erase "$(INTDIR)\DBPRO1.pch"
	-@erase "$(INTDIR)\DBPRO1.res"
	-@erase "$(INTDIR)\ensqlcam.obj"
	-@erase "$(INTDIR)\FODIALOG.obj"
	-@erase "$(INTDIR)\INSERT.OBJ"
	-@erase "$(INTDIR)\SELECT.OBJ"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(OUTDIR)\DBPRO1.exe"
	-@erase ".\CSATLAKO.C"
	-@erase ".\INSERT.C"
	-@erase ".\SELECT.C"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX"stdafx.h" /c
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_MBCS" /Fp"$(INTDIR)/DBPRO1.pch" /YX"stdafx.h" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/DBPRO1.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/DBPRO1.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 /nologo /subsystem:windows /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/DBPRO1.pdb" /machine:I386 /out:"$(OUTDIR)/DBPRO1.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CSATLAKO.OBJ" \
	"$(INTDIR)\DBPRO1.obj" \
	"$(INTDIR)\DBPRO1.res" \
	"$(INTDIR)\ensqlcam.obj" \
	"$(INTDIR)\FODIALOG.obj" \
	"$(INTDIR)\INSERT.OBJ" \
	"$(INTDIR)\SELECT.OBJ" \
	"$(INTDIR)\StdAfx.obj" \
	"..\..\..\..\PROC\PRO80\LIB\MSVC\SQLLIB80.LIB"

"$(OUTDIR)\DBPRO1.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"

# PROP BASE Use_MFC 5
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "$(OUTDIR)\DBPRO1.exe" "$(OUTDIR)\DBPRO1.pch" "$(OUTDIR)\DBPRO1.bsc"

CLEAN : 
	-@erase "$(INTDIR)\CSATLAKO.OBJ"
	-@erase "$(INTDIR)\CSATLAKO.SBR"
	-@erase "$(INTDIR)\DBPRO1.obj"
	-@erase "$(INTDIR)\DBPRO1.pch"
	-@erase "$(INTDIR)\DBPRO1.res"
	-@erase "$(INTDIR)\DBPRO1.sbr"
	-@erase "$(INTDIR)\ensqlcam.obj"
	-@erase "$(INTDIR)\ensqlcam.sbr"
	-@erase "$(INTDIR)\FODIALOG.obj"
	-@erase "$(INTDIR)\FODIALOG.sbr"
	-@erase "$(INTDIR)\INSERT.OBJ"
	-@erase "$(INTDIR)\INSERT.SBR"
	-@erase "$(INTDIR)\SELECT.OBJ"
	-@erase "$(INTDIR)\SELECT.SBR"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\DBPRO1.bsc"
	-@erase "$(OUTDIR)\DBPRO1.exe"
	-@erase "$(OUTDIR)\DBPRO1.ilk"
	-@erase "$(OUTDIR)\DBPRO1.pdb"
	-@erase ".\CSATLAKO.CPP"
	-@erase ".\INSERT.CPP"
	-@erase ".\SELECT.CPP"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR /YX"stdafx.h" /c
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/DBPRO1.pch" /YX"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/DBPRO1.res" /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/DBPRO1.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\CSATLAKO.SBR" \
	"$(INTDIR)\DBPRO1.sbr" \
	"$(INTDIR)\ensqlcam.sbr" \
	"$(INTDIR)\FODIALOG.sbr" \
	"$(INTDIR)\INSERT.SBR" \
	"$(INTDIR)\SELECT.SBR" \
	"$(INTDIR)\StdAfx.sbr"

"$(OUTDIR)\DBPRO1.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 /nologo /subsystem:windows /debug /machine:I386
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/DBPRO1.pdb" /debug /machine:I386 /out:"$(OUTDIR)/DBPRO1.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CSATLAKO.OBJ" \
	"$(INTDIR)\DBPRO1.obj" \
	"$(INTDIR)\DBPRO1.res" \
	"$(INTDIR)\ensqlcam.obj" \
	"$(INTDIR)\FODIALOG.obj" \
	"$(INTDIR)\INSERT.OBJ" \
	"$(INTDIR)\SELECT.OBJ" \
	"$(INTDIR)\StdAfx.obj" \
	"..\..\..\..\PROC\PRO80\LIB\MSVC\SQLLIB80.LIB"

"$(OUTDIR)\DBPRO1.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "DBPRO1 - Win32 Release"
# Name "DBPRO1 - Win32 Debug"

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"

!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\DBPRO1.cpp
DEP_CPP_DBPRO=\
	".\DBPRO1.h"\
	".\ensqlcam.h"\
	".\FODIALOG.h"\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"


"$(INTDIR)\DBPRO1.obj" : $(SOURCE) $(DEP_CPP_DBPRO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"


"$(INTDIR)\DBPRO1.obj" : $(SOURCE) $(DEP_CPP_DBPRO) "$(INTDIR)"

"$(INTDIR)\DBPRO1.sbr" : $(SOURCE) $(DEP_CPP_DBPRO) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\FODIALOG.cpp
DEP_CPP_FODIA=\
	".\csatlako.h"\
	".\DBPRO1.h"\
	".\ensqlcam.h"\
	".\FODIALOG.h"\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"


"$(INTDIR)\FODIALOG.obj" : $(SOURCE) $(DEP_CPP_FODIA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"


"$(INTDIR)\FODIALOG.obj" : $(SOURCE) $(DEP_CPP_FODIA) "$(INTDIR)"

"$(INTDIR)\FODIALOG.sbr" : $(SOURCE) $(DEP_CPP_FODIA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\StdAfx.cpp
DEP_CPP_STDAF=\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS"\
 /Fp"$(INTDIR)/DBPRO1.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\DBPRO1.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/DBPRO1.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StdAfx.sbr" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\DBPRO1.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DBPRO1.rc
DEP_RSC_DBPRO1=\
	".\res\DBPRO1.ico"\
	".\res\DBPRO1.rc2"\
	

"$(INTDIR)\DBPRO1.res" : $(SOURCE) $(DEP_RSC_DBPRO1) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\CSATLAKO.PC

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"

# Begin Custom Build
ProjDir=.
InputPath=.\CSATLAKO.PC
InputName=CSATLAKO

"$(ProjDir)\$(InputName).C" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   e:\proc\bin\proc $(ProjDir)\$(InputName).pc CONFIG=procconf.h\
     include="$(MSDEVDIR)\mfc\include" include="$(MSDEVDIR)\include"

# End Custom Build

!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"

# Begin Custom Build
ProjDir=.
InputPath=.\CSATLAKO.PC
InputName=CSATLAKO

"$(ProjDir)\$(InputName).CPP" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   e:\proc\bin\proc $(ProjDir)\$(InputName).PC CONFIG=procconf.h\
     include="$(MSDEVDIR)\mfc\include" include="$(MSDEVDIR)\include"

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PROC\PRO80\LIB\MSVC\SQLLIB80.LIB

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"

!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\INSERT.PC

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"

# Begin Custom Build
ProjDir=.
InputPath=.\INSERT.PC
InputName=INSERT

"$(ProjDir)\$(InputName).C" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   e:\proc\bin\proc $(ProjDir)\$(InputName).pc CONFIG=procconf.h\
     include="$(MSDEVDIR)\mfc\include" include="$(MSDEVDIR)\include"

# End Custom Build

!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"

# Begin Custom Build
ProjDir=.
InputPath=.\INSERT.PC
InputName=INSERT

"$(ProjDir)\$(InputName).CPP" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   e:\proc\bin\proc $(ProjDir)\$(InputName).PC CONFIG=procconf.h\
     include="$(MSDEVDIR)\mfc\include" include="$(MSDEVDIR)\include"

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SELECT.PC

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"

# Begin Custom Build
ProjDir=.
InputPath=.\SELECT.PC
InputName=SELECT

"$(ProjDir)\$(InputName).C" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   e:\proc\bin\proc $(ProjDir)\$(InputName).pc\
     include="$(MSDEVDIR)\mfc\include" include="$(MSDEVDIR)\include"

# End Custom Build

!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"

# Begin Custom Build
ProjDir=.
InputPath=.\SELECT.PC
InputName=SELECT

"$(ProjDir)\$(InputName).CPP" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   e:\proc\bin\proc $(ProjDir)\$(InputName).PC CONFIG=procconf.h\
     include="$(MSDEVDIR)\mfc\include" include="$(MSDEVDIR)\include"

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CSATLAKO.CPP
DEP_CPP_CSATL=\
	".\ensqlcam.h"\
	

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"


"$(INTDIR)\CSATLAKO.OBJ" : $(SOURCE) $(DEP_CPP_CSATL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"


"$(INTDIR)\CSATLAKO.OBJ" : $(SOURCE) $(DEP_CPP_CSATL) "$(INTDIR)"

"$(INTDIR)\CSATLAKO.SBR" : $(SOURCE) $(DEP_CPP_CSATL) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\INSERT.CPP
DEP_CPP_INSER=\
	".\ensqlcam.h"\
	

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"


"$(INTDIR)\INSERT.OBJ" : $(SOURCE) $(DEP_CPP_INSER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"


"$(INTDIR)\INSERT.OBJ" : $(SOURCE) $(DEP_CPP_INSER) "$(INTDIR)"

"$(INTDIR)\INSERT.SBR" : $(SOURCE) $(DEP_CPP_INSER) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SELECT.CPP
DEP_CPP_SELEC=\
	".\ensqlcam.h"\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"


"$(INTDIR)\SELECT.OBJ" : $(SOURCE) $(DEP_CPP_SELEC) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"


"$(INTDIR)\SELECT.OBJ" : $(SOURCE) $(DEP_CPP_SELEC) "$(INTDIR)"

"$(INTDIR)\SELECT.SBR" : $(SOURCE) $(DEP_CPP_SELEC) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ensqlcam.cpp
DEP_CPP_ENSQL=\
	".\ensqlcam.h"\
	{$(INCLUDE)}"\sqlca.h"\
	

!IF  "$(CFG)" == "DBPRO1 - Win32 Release"


"$(INTDIR)\ensqlcam.obj" : $(SOURCE) $(DEP_CPP_ENSQL) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "DBPRO1 - Win32 Debug"


"$(INTDIR)\ensqlcam.obj" : $(SOURCE) $(DEP_CPP_ENSQL) "$(INTDIR)"

"$(INTDIR)\ensqlcam.sbr" : $(SOURCE) $(DEP_CPP_ENSQL) "$(INTDIR)"


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
################################################################################
# Section DBPRO1 : {BDC217C6-ED16-11CD-956C-0000C04E4C0A}
# 	2:5:Class:CFOLD
# 	2:10:HeaderFile:fold.h
# 	2:8:ImplFile:fold.cpp
# End Section
################################################################################
################################################################################
# Section OLE Controls
# 	{BDC217C5-ED16-11CD-956C-0000C04E4C0A}
# End Section
################################################################################
################################################################################
# Section DBPRO1 : {BDC217C5-ED16-11CD-956C-0000C04E4C0A}
# 	0:8:Font.cpp:C:\HOME\TAMAS\PROG\DBPRO1\Font.cpp
# 	0:9:Picture.h:C:\HOME\TAMAS\PROG\DBPRO1\Picture.h
# 	0:6:Font.h:C:\HOME\TAMAS\PROG\DBPRO1\Font.h
# 	0:11:Picture.cpp:C:\HOME\TAMAS\PROG\DBPRO1\Picture.cpp
# 	0:6:FOLD.h:C:\HOME\TAMAS\PROG\DBPRO1\FOLD.h
# 	0:8:FOLD.cpp:C:\HOME\TAMAS\PROG\DBPRO1\FOLD.cpp
# 	2:21:DefaultSinkHeaderFile:fold.h
# 	2:16:DefaultSinkClass:CFOLD
# End Section
################################################################################
################################################################################
# Section DBPRO1 : {BEF6E003-A874-101A-8BBA-00AA00300CAB}
# 	2:5:Class:COleFont
# 	2:10:HeaderFile:font.h
# 	2:8:ImplFile:font.cpp
# End Section
################################################################################
################################################################################
# Section DBPRO1 : {7BF80981-BF32-101A-8BBB-00AA00300CAB}
# 	2:5:Class:CPicture
# 	2:10:HeaderFile:picture.h
# 	2:8:ImplFile:picture.cpp
# End Section
################################################################################
