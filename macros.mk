
define COMPILE_MODULE
$(1)_SOURCE := $(LOCAL_DIR)/$(1).ccm
$(1)_OBJECT := $(BUILD_DIR)/$(1).o
$(1)_MODULE := $(MODULES_DIR)/$(1).$(PCM)
$(1)_DEPS   := $(patsubst %,$(MODULES_DIR)/%.$(PCM),$(2))

$$($(1)_MODULE) $($(1)_OBJECT): $$($(1)_SOURCE) $$($(1)_DEPS)
>       $(CXX) $(CXXFLAGS) $$< -c -o $$($(1)_OBJECT)

SUBDIR_TARGETS += $$($(1)_MODULE) $$($(1)_OBJECT)
endef
