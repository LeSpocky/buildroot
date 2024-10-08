################################################################################
#
# python-msgpack
#
################################################################################

PYTHON_MSGPACK_VERSION = 1.0.8
PYTHON_MSGPACK_SOURCE = msgpack-$(PYTHON_MSGPACK_VERSION).tar.gz
PYTHON_MSGPACK_SITE = https://files.pythonhosted.org/packages/08/4c/17adf86a8fbb02c144c7569dc4919483c01a2ac270307e2d59e1ce394087
PYTHON_MSGPACK_LICENSE = Apache-2.0
PYTHON_MSGPACK_LICENSE_FILES = COPYING
PYTHON_MSGPACK_SETUP_TYPE = setuptools
PYTHON_MSGPACK_BUILD_OPTS = --skip-dependency-check

# When set in the environment, whatever the value, MSGPACK_PUREPYTHON drives
# using the pure python implementation rather than rely on the C++ native code.
# So we can't force it to use C++; we can only force it to use pure python.
ifeq ($(BR2_INSTALL_LIBSTDCPP),)
PYTHON_MSGPACK_ENV = MSGPACK_PUREPYTHON=1
endif

$(eval $(python-package))
