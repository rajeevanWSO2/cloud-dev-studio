# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := cefclient
### Generated for copy rule.
$(builddir)/files/binding.html: TOOLSET := $(TOOLSET)
$(builddir)/files/binding.html: ./cefclient/res/binding.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/binding.html
$(builddir)/files/dialogs.html: TOOLSET := $(TOOLSET)
$(builddir)/files/dialogs.html: ./cefclient/res/dialogs.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/dialogs.html
$(builddir)/files/localstorage.html: TOOLSET := $(TOOLSET)
$(builddir)/files/localstorage.html: ./cefclient/res/localstorage.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/localstorage.html
$(builddir)/files/logo.png: TOOLSET := $(TOOLSET)
$(builddir)/files/logo.png: ./cefclient/res/logo.png FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/logo.png
$(builddir)/files/osr_test.html: TOOLSET := $(TOOLSET)
$(builddir)/files/osr_test.html: ./cefclient/res/osr_test.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/osr_test.html
$(builddir)/files/other_tests.html: TOOLSET := $(TOOLSET)
$(builddir)/files/other_tests.html: ./cefclient/res/other_tests.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/other_tests.html
$(builddir)/files/performance.html: TOOLSET := $(TOOLSET)
$(builddir)/files/performance.html: ./cefclient/res/performance.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/performance.html
$(builddir)/files/performance2.html: TOOLSET := $(TOOLSET)
$(builddir)/files/performance2.html: ./cefclient/res/performance2.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/performance2.html
$(builddir)/files/transparency.html: TOOLSET := $(TOOLSET)
$(builddir)/files/transparency.html: ./cefclient/res/transparency.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/transparency.html
$(builddir)/files/window.html: TOOLSET := $(TOOLSET)
$(builddir)/files/window.html: ./cefclient/res/window.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/window.html
$(builddir)/files/xmlhttprequest.html: TOOLSET := $(TOOLSET)
$(builddir)/files/xmlhttprequest.html: ./cefclient/res/xmlhttprequest.html FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/files/xmlhttprequest.html
$(builddir)/cef.pak: TOOLSET := $(TOOLSET)
$(builddir)/cef.pak: ./Resources/cef.pak FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/cef.pak
$(builddir)/cef_100_percent.pak: TOOLSET := $(TOOLSET)
$(builddir)/cef_100_percent.pak: ./Resources/cef_100_percent.pak FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/cef_100_percent.pak
$(builddir)/cef_200_percent.pak: TOOLSET := $(TOOLSET)
$(builddir)/cef_200_percent.pak: ./Resources/cef_200_percent.pak FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/cef_200_percent.pak
$(builddir)/devtools_resources.pak: TOOLSET := $(TOOLSET)
$(builddir)/devtools_resources.pak: ./Resources/devtools_resources.pak FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/devtools_resources.pak
$(builddir)/icudtl.dat: TOOLSET := $(TOOLSET)
$(builddir)/icudtl.dat: ./Resources/icudtl.dat FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/icudtl.dat
$(builddir)/locales: TOOLSET := $(TOOLSET)
$(builddir)/locales: ./Resources/locales FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/locales
$(builddir)/chrome-sandbox: TOOLSET := $(TOOLSET)
$(builddir)/chrome-sandbox: $(BUILDTYPE)/chrome-sandbox FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/chrome-sandbox
$(builddir)/libcef.so: TOOLSET := $(TOOLSET)
$(builddir)/libcef.so: $(BUILDTYPE)/libcef.so FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libcef.so
$(builddir)/libffmpegsumo.so: TOOLSET := $(TOOLSET)
$(builddir)/libffmpegsumo.so: $(BUILDTYPE)/libffmpegsumo.so FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libffmpegsumo.so
$(builddir)/libpdf.so: TOOLSET := $(TOOLSET)
$(builddir)/libpdf.so: $(BUILDTYPE)/libpdf.so FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libpdf.so
binary_distrib_cef_binary_3_2171_1979_linux64_cefclient_gyp_cefclient_target_copies = $(builddir)/files/binding.html $(builddir)/files/dialogs.html $(builddir)/files/localstorage.html $(builddir)/files/logo.png $(builddir)/files/osr_test.html $(builddir)/files/other_tests.html $(builddir)/files/performance.html $(builddir)/files/performance2.html $(builddir)/files/transparency.html $(builddir)/files/window.html $(builddir)/files/xmlhttprequest.html $(builddir)/cef.pak $(builddir)/cef_100_percent.pak $(builddir)/cef_200_percent.pak $(builddir)/devtools_resources.pak $(builddir)/icudtl.dat $(builddir)/locales $(builddir)/chrome-sandbox $(builddir)/libcef.so $(builddir)/libffmpegsumo.so $(builddir)/libpdf.so

DEFS_Debug := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DCHROMIUM_BUILD' \
	'-DTOOLKIT_VIEWS=1' \
	'-DUI_COMPOSITOR_IMAGE_TRANSPORT' \
	'-DUSE_AURA=1' \
	'-DUSE_ASH=1' \
	'-DUSE_PANGO=1' \
	'-DUSE_CAIRO=1' \
	'-DUSE_GLIB=1' \
	'-DUSE_DEFAULT_RENDER_THEME=1' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_X11=1' \
	'-DUSE_CLIPBOARD_AURAX11=1' \
	'-DENABLE_ONE_CLICK_SIGNIN' \
	'-DENABLE_PRE_SYNC_BACKUP' \
	'-DUSE_XI2_MT=2' \
	'-DENABLE_REMOTING=1' \
	'-DENABLE_WEBRTC=1' \
	'-DENABLE_PEPPER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DENABLE_NOTIFICATIONS' \
	'-DUSE_UDEV' \
	'-DENABLE_EGLIMAGE=1' \
	'-DENABLE_TASK_MANAGER=1' \
	'-DENABLE_EXTENSIONS=1' \
	'-DENABLE_PLUGINS=1' \
	'-DENABLE_SESSION_SERVICE=1' \
	'-DENABLE_THEMES=1' \
	'-DENABLE_AUTOFILL_DIALOG=1' \
	'-DENABLE_BACKGROUND=1' \
	'-DENABLE_GOOGLE_NOW=1' \
	'-DCLD_VERSION=2' \
	'-DCLD2_DATA_SOURCE=static' \
	'-DENABLE_FULL_PRINTING=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_SPELLCHECK=1' \
	'-DENABLE_CAPTIVE_PORTAL_DETECTION=1' \
	'-DENABLE_APP_LIST=1' \
	'-DENABLE_SETTINGS_APP=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DENABLE_MDNS=1' \
	'-DENABLE_SERVICE_DISCOVERY=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DUSING_CEF_SHARED' \
	'-DUSE_NSS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG' \
	'-D_GLIBCXX_DEBUG=1'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-pthread \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-B/data/Jenkins/workspace/CEF3-Linux-2171/download/chromium/src/third_party/binutils/Linux_x64/Release/bin \
	$(shell pkg-config --cflags gmodule-2.0 gtk+-2.0 gthread-2.0 gtk+-unix-print-2.0) \
	$(shell pkg-config --cflags gtkglext-1.0) \
	-m64 \
	-march=x86-64 \
	-O0 \
	-g \
	-gdwarf-4 \
	-funwind-tables

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare

INCS_Debug := \
	-I$(obj)/gen \
	-I.

DEFS_Release := \
	'-DV8_DEPRECATION_WARNINGS' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DCHROMIUM_BUILD' \
	'-DTOOLKIT_VIEWS=1' \
	'-DUI_COMPOSITOR_IMAGE_TRANSPORT' \
	'-DUSE_AURA=1' \
	'-DUSE_ASH=1' \
	'-DUSE_PANGO=1' \
	'-DUSE_CAIRO=1' \
	'-DUSE_GLIB=1' \
	'-DUSE_DEFAULT_RENDER_THEME=1' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_X11=1' \
	'-DUSE_CLIPBOARD_AURAX11=1' \
	'-DENABLE_ONE_CLICK_SIGNIN' \
	'-DENABLE_PRE_SYNC_BACKUP' \
	'-DUSE_XI2_MT=2' \
	'-DENABLE_REMOTING=1' \
	'-DENABLE_WEBRTC=1' \
	'-DENABLE_PEPPER_CDMS' \
	'-DENABLE_CONFIGURATION_POLICY' \
	'-DENABLE_NOTIFICATIONS' \
	'-DUSE_UDEV' \
	'-DENABLE_EGLIMAGE=1' \
	'-DENABLE_TASK_MANAGER=1' \
	'-DENABLE_EXTENSIONS=1' \
	'-DENABLE_PLUGINS=1' \
	'-DENABLE_SESSION_SERVICE=1' \
	'-DENABLE_THEMES=1' \
	'-DENABLE_AUTOFILL_DIALOG=1' \
	'-DENABLE_BACKGROUND=1' \
	'-DENABLE_GOOGLE_NOW=1' \
	'-DCLD_VERSION=2' \
	'-DCLD2_DATA_SOURCE=static' \
	'-DENABLE_FULL_PRINTING=1' \
	'-DENABLE_PRINTING=1' \
	'-DENABLE_SPELLCHECK=1' \
	'-DENABLE_CAPTIVE_PORTAL_DETECTION=1' \
	'-DENABLE_APP_LIST=1' \
	'-DENABLE_SETTINGS_APP=1' \
	'-DENABLE_MANAGED_USERS=1' \
	'-DENABLE_MDNS=1' \
	'-DENABLE_SERVICE_DISCOVERY=1' \
	'-DENABLE_LOAD_COMPLETION_HACKS=1' \
	'-DUSING_CEF_SHARED' \
	'-DUSE_NSS=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'

# Flags passed to all source files.
CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-Werror \
	-pthread \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-B/data/Jenkins/workspace/CEF3-Linux-2171/download/chromium/src/third_party/binutils/Linux_x64/Release/bin \
	$(shell pkg-config --cflags gmodule-2.0 gtk+-2.0 gthread-2.0 gtk+-unix-print-2.0) \
	$(shell pkg-config --cflags gtkglext-1.0) \
	-m64 \
	-march=x86-64 \
	-O2 \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-funwind-tables

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-exceptions \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare

INCS_Release := \
	-I$(obj)/gen \
	-I.

OBJS := \
	$(obj).target/$(TARGET)/cefclient/cefclient.o \
	$(obj).target/$(TARGET)/cefclient/binding_test.o \
	$(obj).target/$(TARGET)/cefclient/bytes_write_handler.o \
	$(obj).target/$(TARGET)/cefclient/client_app.o \
	$(obj).target/$(TARGET)/cefclient/client_app_delegates.o \
	$(obj).target/$(TARGET)/cefclient/client_handler.o \
	$(obj).target/$(TARGET)/cefclient/client_renderer.o \
	$(obj).target/$(TARGET)/cefclient/client_switches.o \
	$(obj).target/$(TARGET)/cefclient/dialog_test.o \
	$(obj).target/$(TARGET)/cefclient/osrenderer.o \
	$(obj).target/$(TARGET)/cefclient/performance_test.o \
	$(obj).target/$(TARGET)/cefclient/performance_test_tests.o \
	$(obj).target/$(TARGET)/cefclient/scheme_test.o \
	$(obj).target/$(TARGET)/cefclient/string_util.o \
	$(obj).target/$(TARGET)/cefclient/window_test.o \
	$(obj).target/$(TARGET)/cefclient/cefclient_gtk.o \
	$(obj).target/$(TARGET)/cefclient/cefclient_osr_widget_gtk.o \
	$(obj).target/$(TARGET)/cefclient/client_handler_gtk.o \
	$(obj).target/$(TARGET)/cefclient/print_handler_gtk.o \
	$(obj).target/$(TARGET)/cefclient/resource_util_linux.o \
	$(obj).target/$(TARGET)/cefclient/resource_util_posix.o \
	$(obj).target/$(TARGET)/cefclient/window_test_gtk.o \
        $(obj).target/$(TARGET)/cefclient/DeveloperStudioProcess.o \
	$(obj).target/$(TARGET)/cefclient/SystemUtils.o \
	$(obj).target/$(TARGET)/cefclient/Messages.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/libcef_dll_wrapper.a $(obj).target/gtk.stamp $(obj).target/gtkglext.stamp

# Make sure our actions/rules run before any of us.
$(OBJS): | $(binary_distrib_cef_binary_3_2171_1979_linux64_cefclient_gyp_cefclient_target_copies)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
# Build our special outputs first.
$(builddir)/cefclient: | $(binary_distrib_cef_binary_3_2171_1979_linux64_cefclient_gyp_cefclient_target_copies)

# Preserve order dependency of special output on deps.
$(binary_distrib_cef_binary_3_2171_1979_linux64_cefclient_gyp_cefclient_target_copies): | $(obj).target/libcef_dll_wrapper.a $(obj).target/gtk.stamp $(obj).target/gtkglext.stamp

LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,--fatal-warnings \
	-pthread \
	-Wl,-z,noexecstack \
	-fPIC \
	-B/data/Jenkins/workspace/CEF3-Linux-2171/download/chromium/src/third_party/binutils/Linux_x64/Release/bin \
	-Wl,--disable-new-dtags \
	-Wl,-rpath,. \
	$(shell pkg-config --libs-only-L --libs-only-other gmodule-2.0 gtk+-2.0 gthread-2.0 gtk+-unix-print-2.0) \
	$(shell pkg-config --libs-only-L --libs-only-other gtkglext-1.0) \
	-m64

LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,--fatal-warnings \
	-pthread \
	-Wl,-z,noexecstack \
	-fPIC \
	-B/data/Jenkins/workspace/CEF3-Linux-2171/download/chromium/src/third_party/binutils/Linux_x64/Release/bin \
	-Wl,--disable-new-dtags \
	-Wl,-rpath,. \
	$(shell pkg-config --libs-only-L --libs-only-other gmodule-2.0 gtk+-2.0 gthread-2.0 gtk+-unix-print-2.0) \
	$(shell pkg-config --libs-only-L --libs-only-other gtkglext-1.0) \
	-m64 \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections

LIBS := \
	 \
	$(BUILDTYPE)/libcef.so \
	-lX11 \
	$(shell pkg-config --libs-only-l gmodule-2.0 gtk+-2.0 gthread-2.0 gtk+-unix-print-2.0) \
	$(shell pkg-config --libs-only-l gtkglext-1.0)

$(builddir)/cefclient: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/cefclient: LIBS := $(LIBS)
$(builddir)/cefclient: LD_INPUTS := $(OBJS) $(obj).target/libcef_dll_wrapper.a
$(builddir)/cefclient: TOOLSET := $(TOOLSET)
$(builddir)/cefclient: $(OBJS) $(obj).target/libcef_dll_wrapper.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/cefclient
# Add target alias
.PHONY: cefclient
cefclient: $(builddir)/cefclient

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/cefclient

