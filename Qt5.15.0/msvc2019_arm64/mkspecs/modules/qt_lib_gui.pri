QT.gui.VERSION = 5.15.0
QT.gui.name = QtGui
QT.gui.module = Qt5Gui
QT.gui.libs = $$QT_MODULE_LIB_BASE
QT.gui.includes = $$QT_MODULE_INCLUDE_BASE $$QT_MODULE_INCLUDE_BASE/QtGui $$QT_MODULE_INCLUDE_BASE/QtANGLE
QT.gui.frameworks =
QT.gui.bins = $$QT_MODULE_BIN_BASE
QT.gui.plugin_types = platforms platforms/darwin xcbglintegrations platformthemes platforminputcontexts generic iconengines imageformats egldeviceintegrations
QT.gui.depends = core
QT.gui.run_depends = core
QT.gui.uses =
QT.gui.module_config = v2
QT.gui.CONFIG = opengl
QT.gui.DEFINES = QT_GUI_LIB
QT.gui.enabled_features = action opengles2 angle clipboard colornames cssparser cursor desktopservices imageformat_xpm draganddrop opengl imageformatplugin highdpiscaling im image_heuristic_mask image_text imageformat_jpeg imageformat_png imageformat_ppm imageformat_xbm movie pdf picture sessionmanager shortcut standarditemmodel systemtrayicon tabletevent texthtmlparser textmarkdownreader textmarkdownwriter textodfwriter validator whatsthis wheelevent
QT.gui.disabled_features = accessibility dynamicgl combined-angle-lib imageformat_bmp opengles3 opengles31 opengles32 openvg system-textmarkdownreader vulkan
QT_CONFIG += action opengles2 clipboard colornames cssparser cursor desktopservices imageformat_xpm draganddrop opengl egl freetype imageformatplugin harfbuzz highdpiscaling ico im image_heuristic_mask image_text imageformat_jpeg imageformat_png imageformat_ppm imageformat_xbm movie pdf picture sessionmanager shortcut standarditemmodel systemtrayicon tabletevent texthtmlparser textodfwriter validator whatsthis wheelevent
QT_MODULES += gui
