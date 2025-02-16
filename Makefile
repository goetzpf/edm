# Makefile for edm top level
TOP = .
ifdef EPICS_HOST_ARCH
 include $(TOP)/configure/CONFIG
 DIRS += util 
 DIRS += lib 
 lib_DEPEND_DIRS += util
 DIRS += baselib 
 baselib_DEPEND_DIRS += util lib

 DIRS += epicsPv
 epicsPv_DEPEND_DIRS+= util lib baselib
 DIRS += logPv
 logPv_DEPEND_DIRS+= util lib baselib
 DIRS += proxyPv
 proxyPv_DEPEND_DIRS+= util lib baselib
 DIRS += calcPv
 calcPv_DEPEND_DIRS+= util lib baselib
 DIRS += locPv
 locPv_DEPEND_DIRS+= util lib baselib
 DIRS += giflib 
 giflib_DEPEND_DIRS+= util lib baselib
 DIRS += pnglib 
 pnglib_DEPEND_DIRS+= util lib baselib
 DIRS += pvFactory 
 pvFactory_DEPEND_DIRS+= util lib baselib
 DIRS += choiceButton
 choiceButton_DEPEND_DIRS+= util lib baselib
 DIRS += videowidget
 videowidget_DEPEND_DIRS+= util lib baselib
 DIRS += triumflib
 triumflib_DEPEND_DIRS+= util lib baselib
 DIRS += diamondlib
 diamondlib_DEPEND_DIRS+= util lib baselib
 DIRS += indicator
 indicator_DEPEND_DIRS+= util lib baselib
 DIRS += multiSegRampButton
 multiSegRampButton_DEPEND_DIRS+= util lib baselib
 DIRS += slaclib
 slaclib_DEPEND_DIRS+= util lib baselib

 DIRS+= edmMain
 edmMain_DEPEND_DIRS += util lib baselib epicsPv logPv proxyPv calcPv locPv giflib
 edmMain_DEPEND_DIRS += pnglib pvFactory choiceButton videowidget triumflib diamondlib
 edmMain_DEPEND_DIRS += indicator multiSegRampButton slaclib

 DIRS+= setup
 setup_DEPEND_DIRS= $(edmMain_DEPEND_DIRS) edmMain

 include $(TOP)/configure/RULES_DIRS

else
  $(error EPICS_HOST_ARCH is not set)
endif
#----------------------------------------
#  ADD RULES AFTER THIS LINE

