import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Bootstrap 5.3
import Eduport 1.4

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
				effect: OpacityMask {
					maskSource: Rectangle {
						width: 50
						height: 50
						radius: 5.2
					}
				}
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
					Layout.alignment: Qt.AlignTop
								| Qt.AlignRight
					contentItem: Image {
						source:
						"../Bootstrap/icons/x.svg"

						ColorOverlay {
							color: Eduport.bsGray600
							source: parent
							anchors.fill: parent
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
