include vendor/alice/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/alice/config/BoardConfigQcom.mk
endif

include vendor/alice/config/BoardConfigSoong.mk
