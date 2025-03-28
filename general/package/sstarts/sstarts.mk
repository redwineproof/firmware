################################################################################
#
# sstarts
#
################################################################################

SSTARTS_SITE = $(call github,redwineproof,sstarts,$(SSTARTS_VERSION))
SSTARTS_VERSION = master

SSTARTS_MODULE_MAKE_OPTS = \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))