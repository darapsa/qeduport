import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Eduport
import "ProductDetail"

Item {
	GridLayout {
		anchors.fill: parent

		LeftSidebar {
			id: leftSidebar
			Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
			Layout.rightMargin: 20
			Layout.leftMargin: 20
			Layout.topMargin: 20
			Layout.fillWidth: true
			Layout.maximumWidth: 500
		}

		RightSidebar {
			id: rightSidebar
			Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
			Layout.margins: 16
			Layout.maximumWidth: 830
			Layout.minimumWidth: 470
			Layout.fillWidth: false
		}
	}
}
