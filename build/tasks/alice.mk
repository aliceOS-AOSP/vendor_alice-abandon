ALICE_TARGET_PACKAGE := $(PRODUCT)/$(ALICE_BUILD_VERSION).zip
MD5 := prebuilts/build-tools/path/$(HOST_OS)-x86/md5sum

.PHONY: alice
alice: $(INTERNAL_OTA_PACKAGE_TARGET)
        $(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(ALICE_TARGET_PACKAGE)
        $(hide) $(MD5) $(ALICE_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(ALICE_TARGET_PACKAGE).md5sum
        @echo "Hello, Alice."
        @echo -e "\t ===============================-Build Success-============================================================="
        @echo -e "\t Zip: $(ALICE_TARGET_PACKAGE)"
        @echo -e "\t MD5: `cat $(ALICE_TARGET_PACKAGE).md5sum | awk '{print $$1}' `"
        @echo -e "\t ==========================================================================================================="
