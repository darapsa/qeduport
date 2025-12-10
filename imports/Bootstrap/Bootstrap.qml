pragma Singleton
import QtQuick

QtObject {
	enum Mode {
		Light,
		Dark
	}
	readonly property int mode: Bootstrap.Mode.Light

	readonly property font bodyFont: Qt.font({
		family: "Roboto",
		pointSize: 15.0,
		weight: Font.Normal
	})
	readonly property color bodyColor: mode ? "#a1a1a8" : "#747579"
	readonly property color bodyBg: mode ? "#222529" : "#fff"
	readonly property color headingColor: mode ? "#fff" : "#24292d"
	readonly property color borderColor: mode ? "#12ffffff" : "#eff1f2"
}
