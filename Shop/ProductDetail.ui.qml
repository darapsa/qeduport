import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4
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
