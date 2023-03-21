pragma Singleton
import QtQuick 2.15

QtObject {
	readonly property real fontSizeLead: 18.75
	readonly property real fontSizeFormControl: 16
	readonly property real fontSizeFormText: 14

	readonly property FontLoader heebo: FontLoader {
		source: "../../Heebo/Heebo-Bold.ttf"
	}
	readonly property font hFont: Qt.font({
		family: heebo.name
	})
}
