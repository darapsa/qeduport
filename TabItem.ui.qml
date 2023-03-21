import QtQuick 2.15
import QtQuick.Controls 2.15
import Bootstrap 5.3

Button {
	property int currentIndex: 0

	height: 38
	horizontalPadding: 16
	verticalPadding: 8
	contentItem: Text {
		text: modelData
		color: index == currentIndex ? "white" : "#066ac9"
		font {
			family: Bootstrap.bodyFont.family
			pointSize: Bootstrap.bodyFont.pointSize
		}
	}
	background: Rectangle {
		color: index == currentIndex ? "#066ac9" : "transparent"
		radius: 5.2
	}
}
