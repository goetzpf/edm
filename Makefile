# Makefile for edm top level
TOP = .
ifdef EPICS_HOST_ARCH
 include $(TOP)/configure/CONFIG
 DIRS += util 
 DIRS += lib 
 DIRS += epicsPv
 DIRS += logPv
 DIRS += proxyPv
 DIRS += calcPv
 DIRS += locPv
 DIRS += baselib 
 DIRS += giflib 
 DIRS += pnglib 
 DIRS += pvFactory 
 DIRS += choiceButton
 DIRS += videowidget
 DIRS += triumflib
 DIRS += diamondlib
 DIRS += indicator
 DIRS += multiSegRampButton
 DIRS += slaclib

 DIRS+= edmMain
 edmMain_DEPEND_DIRS += util lib baselib epicsPv logPv proxyPv calcPv locPv giflib
 edmMain_DEPEND_DIRS += pnglib pvFactory choiceButton videowidget triumflib diamondlib
 edmMain_DEPEND_DIRS += indicator multiSegRampButton slaclib

 DIRS+= setup
 setup_DEPEND_DIRS= $(XDIRS) edmMain

 include $(TOP)/configure/RULES_DIRS

else
  $(error EPICS_HOST_ARCH is not set)
endif
