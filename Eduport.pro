TEMPLATE = aux

import.files = \
	imports/$$TARGET/qmldir \
	imports/$$TARGET/$${TARGET}.qml \
	imports/$$TARGET/Heebo-Bold.ttf \
	imports/$$TARGET/Heebo-Medium.ttf \
	imports/$$TARGET/Heebo-Regular.ttf \
	imports/$$TARGET/Heebo.txt
ios|wasm: import.files += \
	imports/$$TARGET/Roboto-Regular.ttf \
	imports/$$TARGET/Roboto-Medium.ttf \
	imports/$$TARGET/Roboto-Bold.ttf \
	imports/$$TARGET/Roboto.txt
import.path = $$[QT_INSTALL_QML]/$$TARGET

INSTALLS += import
