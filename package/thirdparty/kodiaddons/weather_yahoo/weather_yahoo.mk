###############################################################################
#
## Kodi Yahoo Weather Addon
#
###############################################################################
WEATHER_YAHOO_VERSION = 3.0.5
WEATHER_YAHOO_SOURCE = weather.yahoo-$(WEATHER_YAHOO_VERSION).zip
WEATHER_YAHOO_SITE = http://mirrors.xbmc.org/addons/helix/weather.yahoo/
WEATHER_YAHOO_INSTALL_STAGING = NO
WEATHER_YAHOO_INSTALL_TARGET = YES

WEATHER_YAHOO_DEPENDENCIES = kodi

define WEATHER_YAHOO_EXTRACT_CMDS
unzip -q $(DL_DIR)/$(WEATHER_YAHOO_SOURCE) -d $(@D)
endef

define WEATHER_YAHOO_INSTALL_TARGET_CMDS
cp -rf $(@D)/weather.yahoo $(TARGET_DIR)/usr/share/kodi/addons/
endef

$(eval $(call kodi-addon,package/thirdparty/kodiaddons,weather_yahoo))
