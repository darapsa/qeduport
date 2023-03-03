import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
	property int currentIndex: 0
	property bool doesntEmbed: Qt.platform.os === "android"
				|| Qt.platform.os === "linux"
				|| Qt.platform.os === "osx"
				|| Qt.platform.os === "unix"
				|| Qt.platform.os === "windows"

	FontLoader {
		id: regular
		source: doesntEmbed ? "" : "Roboto/Roboto-Regular.ttf"
	}

	height: 38
	horizontalPadding: 16
	verticalPadding: 8
	contentItem: Text {
		text: modelData
		color: index == currentIndex ? "white" : "#066ac9"
		font {
			family: doesntEmbed ? "Roboto" : regular.name
			pointSize: 15
		}
	}
	background: Rectangle {
		color: index == currentIndex ? "#066ac9" : "transparent"
		radius: 5.2
	}
}
