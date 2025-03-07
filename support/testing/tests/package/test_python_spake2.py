from tests.package.test_python import TestPythonPackageBase


class TestPythonPy3Spake2(TestPythonPackageBase):
    __test__ = True
    config = TestPythonPackageBase.config + \
        """
        BR2_PACKAGE_PYTHON3=y
        BR2_PACKAGE_PYTHON_SPAKE2=y
        """
    sample_scripts = ["tests/package/sample_python_spake2.py"]
    timeout = 10  # /dev/urandom can take a while to become initialized
