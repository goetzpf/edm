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
 DIRS += edmMain 
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
 include $(TOP)/configure/RULES_DIRS

else
  $(error EPICS_HOST_ARCH is not set)
endif
