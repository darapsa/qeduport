import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects
import Bootstrap
import Eduport

ColumnLayout {
	property string imageSource:
		"https://eduport.webestica.com/assets/images/book/02.jpg"
	property string titleText: "Angular 4 Tutorial in audio (Compact Disk)"
	property alias button: button
	property alias comboBox: comboBox

	MenuSeparator {
		Layout.fillWidth: true
		contentItem: Rectangle {
			implicitHeight: 1
			color: Eduport.mode
				? Eduport.bsGray300 : Eduport.bsGray500
		}
	}

	RowLayout {
		Layout.leftMargin: 16
		Layout.rightMargin: 16

		Image {
			Layout.alignment: Qt.AlignTop
			source: imageSource
			sourceSize {
				width: 50
				height: 50
			}
			layer {
				enabled: true
				effect: MultiEffect {
					maskEnabled: true
					maskSource: maskRectangle
				}
			}
			Rectangle {
				id: maskRectangle
				width: 50
				height: 50
				radius: 5.2
				layer.enabled: true
				visible: false
			}
		}

		ColumnLayout {

			RowLayout {
				spacing: 0

				Label {
					text: titleText
					wrapMode: Label.Wrap
					Bootstrap.heading: 6
					Layout.fillWidth: true
				}

				Button {
					id: button
					Layout.alignment: Qt.AlignTop | Qt.AlignRight
					contentItem: Item {
						Image {
							id: xImage
							anchors.centerIn: parent
							fillMode: Image.PreserveAspectFit
							source: "../Bootstrap/icons/x.svg"
						}
						MultiEffect {
							source: xImage
							anchors.fill: xImage
							brightness: 1.0
							colorization: 1.0
							colorizationColor: Eduport.bsGray600
						}
					}
					background: Rectangle {
						color: "transparent"
						implicitWidth: 13
					}
				}
			}

			ComboBox {
				id: comboBox
				model: [1, 2, 3, 4, 5]
			}
		}
	}
}
