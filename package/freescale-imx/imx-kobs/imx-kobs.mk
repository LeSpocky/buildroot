################################################################################
#
# imx-kobs
#
################################################################################

IMX_KOBS_VERSION = c70685de47cfb67c5e16e1631b7033023ca3e97c
IMX_KOBS_SITE = $(call github,NXPmicro,imx-kobs,$(IMX_KOBS_VERSION))
IMX_KOBS_LICENSE = GPL-2.0+
IMX_KOBS_LICENSE_FILES = COPYING

$(eval $(autotools-package))
