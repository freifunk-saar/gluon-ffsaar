include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-filter-ra
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/gluon-filter-ra
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Filters away router advertisments from all but the selected gateway
  DEPENDS:=+gluon-core +gluon-ebtables
endef

define Package/gluon-filter-ra/description
	Gluon community wifi mesh firmware framework: RA filter
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-filter-ra/install
	$(CP) ./files/* $(1)/
endef

define Package/gluon-filter-ra/postinst
endef

$(eval $(call BuildPackage,gluon-filter-ra))
