ifndef TOP_DIR
    export TOP_DIR = $(CURDIR)
endif

include $(TOP_DIR)/mk/version.mk

BUILD_DIR = $(TOP_DIR)/build
RESOURCES_DIR = $(TOP_DIR)/resources
RESOURCES_FILE = $(shell find $(SERVER_DIR) -type f)

rasp-cloud: $(RESOURCES_FILE) Dockerfile
	
	install -d $(BUILD_DIR)
	cp -a -f $(TOP_DIR)/Dockerfile $(BUILD_DIR)
	cp -a -f $(RESOURCES_FILE) $(BUILD_DIR)
	# compile docker images
	cd $(BUILD_DIR) && docker build -t $(IMAGE_NAME):$(RASP_CLOUD_VERSION_STRING) . -f Dockerfile

.PHONY : FORCE clean

clean:
	rm -rf build