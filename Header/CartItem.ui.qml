import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4
import "../Label" as Lbl

MenuItem {
	id: cartMenuItem
	contentItem: ColumnLayout {

		Loader {
			Layout.fillWidth: true
			Layout.topMargin: -24
			Layout.leftMargin: -8
			Layout.rightMargin: -8
			sourceComponent: menuSeparator
		}

		RowLayout {
			Layout.margins: 16

			Loader {
				property string imageSource: cartMenuItem
								.icon.source
				property int imageWidth: 50
				property int imageHeight: 50
				property real maskRadius: 5.2
				sourceComponent: image
				Layout.alignment: Qt.AlignTop
			}

			ColumnLayout {

				RowLayout {

					Lbl.H6 {
						text: cartMenuItem.text
						Layout.fillWidth: true
					}

					Button {
						Layout.alignment: Qt.AlignTop
						contentItem: Image {
							source:
							"../Bootstrap/icons/x.svg"

							ColorOverlay {
								color: Eduport
								.bsGray600
								source: parent
								anchors.fill:
									parent
							}
						}
						background: Rectangle {
							color: "transparent"
							implicitWidth: 13
						}
					}
				}

				ComboBox {
					model: [1, 2, 3, 4, 5]
				}
			}
		}
	}
	background: Rectangle {
		color: "transparent"
	}
}
