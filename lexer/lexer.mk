
LOCAL_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

$(eval $(call COMPILE_MODULE,regexp,std))
$(eval $(call COMPILE_MODULE,state_machine,regexp))
