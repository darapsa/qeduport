import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Eduport
import "../../TextField" as TxtFld
import "../../Label" as Lbl
import "../../Button" as Btn

Rectangle {
	id: alertContainer
	color: "#f8d7da"
	border.color: "#f1aeb5"
	height: alertContent.height
	width: alertContent.width
	radius: 8
	RowLayout {
		id: alertContent
		anchors.fill: parent
		spacing: 0
		Label {
			id: alertEmoji
			text: "🔥"
			Layout.bottomMargin: 16
			Layout.rightMargin: 8
			Layout.topMargin: 16
			Layout.leftMargin: 16
			font.pointSize: 21
		}
		Label {
			id: alertText
			color: "#b02a37"
			text: "These courses are at a limited discount, please checkout within"
			wrapMode: Text.Wrap
			Layout.bottomMargin: 16
			Layout.topMargin: 16
			Layout.rightMargin: 4
			font.pointSize: 21
		}
		Label {
			id: alertTime
			color: "#d6293e"
			text: "2 days and 18 hours"
			Layout.rightMargin: 8
			Layout.bottomMargin: 16
			Layout.topMargin: 16
			font.styleName: "Bold"
			font.pointSize: 21
			font.family: "Roboto"
		}
		Button {
			width: 40
			icon.source: "../../Bootstrap/icons/x.svg"
			flat: true
			checkable: true
			display: AbstractButton.IconOnly
			Layout.bottomMargin: 16
			Layout.topMargin: 16
			Layout.rightMargin: 8
			Layout.maximumHeight: 40
			Layout.maximumWidth: 40
			Layout.preferredHeight: 40
			Layout.preferredWidth: 40
			Layout.minimumHeight: 40
			Layout.minimumWidth: 40
		}
	}
}
