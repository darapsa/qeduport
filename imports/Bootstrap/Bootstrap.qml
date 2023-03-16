pragma Singleton

import QtQuick 2.15

QtObject {
	readonly property color btnColor: "#ffffff"
	readonly property color btnBg: "#066ac9"
	readonly property color btnActiveBg: "#0555a1"
	readonly property color btnDisabledBg: "#a6066ac9"

	readonly property bool haveRoboto: Qt.platform.os === "android"
					|| Qt.platform.os === "linux"
					|| Qt.platform.os === "osx"
					|| Qt.platform.os === "unix"
					|| Qt.platform.os === "windows"
	readonly property FontLoader medium: FontLoader {
		source: haveRoboto ? "" : "../../Roboto/Roboto-Medium.ttf"
	}
	readonly property font btnFont: Qt.font({
		pointSize: 15,
		family: haveRoboto ? "Roboto" : medium.name,
		weight: Font.Medium
	})
}
