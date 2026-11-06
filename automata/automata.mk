
LOCAL_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

$(eval $(call COMPILE_MODULE,rules,std))
