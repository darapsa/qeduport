import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Column {
	spacing: 16
	Layout.fillWidth: true
	Label {
		color: "#000000"
		text: "Leave a review"
		font.pointSize: 21
		font.family: "roboto"
		font.styleName: "Medium"
		Layout.fillWidth: true
	}
	RowLayout {
		Layout.fillWidth: true
		TextField {
			placeholderTextColor: "#7f000000"
			placeholderText: "Full name"
			background: Rectangle {
				radius: 8
				color: "#f5f7f9"
			}
			Layout.fillWidth: true
		}
		TextField {
			placeholderTextColor: "#7f000000"
			placeholderText: "Email"
			background: Rectangle {
				radius: 8
				color: "#f5f7f9"
			}
			Layout.fillWidth: true
		}
	}
	ComboBox {
		id: reviewChoices
		Layout.fillWidth: true
		font.pointSize: 14
		font.family: "roboto"
		model: ListModel {
			ListElement {
				label: "Please choose one"
			}
			ListElement {
				label: "5/5"
			}
			ListElement {
				label: "4/5"
			}
			ListElement {
				label: "3/5"
			}
			ListElement {
				label: "2/5"
			}
			ListElement {
				label: "1/5"
			}
		}
		background: Rectangle{
			radius: 8
			color: "#f5f7f9"
		}
	}
    TextArea {
        id: textArea
        placeholderText: qsTr("Text Area")
        Layout.preferredHeight: 82
        Layout.minimumHeight: 82
        background: Rectangle{
            radius: 8
            color: "#f5f7f9"
        }
    }
    Button {
    	id: button
    	text: qsTr("Post a review")
    	font.pixelSize: 14
    	implicitHeight: 36
    	Layout.fillWidth: true
    	contentItem: Text {
    		color: "#ffffff"
    		text: "Login"
    		horizontalAlignment: Text.AlignHCenter
    		verticalAlignment: Text.AlignVCenter
    		font.weight: Font.Medium
    		font.family: "Roboto"
    		font.pointSize: 14
    	}

    	background: Rectangle {
    		color: button.down ? "#055aab" : "#066ac9"
    		radius: 8
    	}
    }
}
