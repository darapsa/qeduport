import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Eduport 1.4
import "../../../../Label"

ColumnLayout {
	property alias banks: banks

	Body {
		text:
		qsTr("Pay with Net Banking")
		Layout.fillWidth: true
		Layout.rightMargin: 16
		Layout.leftMargin: 16
		Layout.topMargin: 16
	}

	ColumnLayout {
		Layout.margins: 16

		Body {
			text: qsTr("In order to complete your transaction, we will transfer you over to Eduport secure servers.")
			Layout.fillWidth: true
		}

		Body {
			text: qsTr("Select your bank from the drop-down list and click proceed to continue with your payment.")
			Layout.fillWidth: true
		}

		ComboBox {
			id: banks
			Layout.fillWidth: true
			Layout.topMargin: 24
			font: Eduport.bsBodyFont
			model: ListModel {
				ListElement {
					label: "Please choose one"
				}
				ListElement {
					label: "Bank of America"
				}
				ListElement {
					label: "Bank of India"
				}
				ListElement {
					label: "Bank of London"
				}
			}
			contentItem: Text {
				text: banks.displayText
				font: banks.font
				color: Eduport.bsBodyColor
				verticalAlignment: Text.AlignVCenter
			}
			background: Rectangle {
				width: banks.width
				color: Eduport.bsBodyBg
				radius: 8
			}
			delegate: ItemDelegate {
				contentItem: Text {
					text: label
					font: banks.font
					color: Eduport.bsBodyColor
					verticalAlignment: Text.AlignVCenter
				}
				background: Rectangle {
					width: banks.width
					color: Eduport.bsBodyBg
				}
			}
		}
	}
}
