import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Item {
	property string imageSource: "https://eduport.webestica.com/assets/images/courses/4by3/11.jpg"
	readonly property color allLevelsColor: "#ff6f42c1"
	readonly property color beginnerColor: "#ff0cbc87"
	readonly property color intermediateColor: "#ff17a2b8"
	readonly property color allLevelsBackgroundColor: "#1a6f42c1"
	readonly property color beginnerBackgroundColor: "#1a0cbc87"
	readonly property color intermediateBackgroundColor: "#1a17a2b8"
	property string badgeText: "All level"
	property color badgeColor: "#ff6f42c1"
	property color badgeBackgroundColor: "#1a6f42c1"
	property string titleText: "Build Responsive Websites with HTML"
	property alias imageArea: imageArea
	property alias titleArea: titleArea
	property string textTruncateText: "Far advanced settling say finished raillery. Offered chiefly farther"
	property bool doesntEmbed: Qt.platform.os === "android"
				|| Qt.platform.os === "linux"
				|| Qt.platform.os === "osx"
				|| Qt.platform.os === "unix"
				|| Qt.platform.os === "windows"
	width: 301
	height: 451

	DropShadow {
		source: rectangle
		color: Qt.rgba(.113, .227, .325, .15)
		anchors.fill: rectangle
	}

	Rectangle {
		id: rectangle
		radius: 10
		anchors {
			top: parent.top
			topMargin: 25.6
			left: parent.left
			leftMargin: 12.8
			right: parent.right
			rightMargin: 12.8
			bottom: parent.bottom
		}

		ColumnLayout {
			anchors.fill: parent

			Image {
				id: image
				source: imageSource
				Layout.fillWidth: true
				sourceSize.height: width * 3 / 4
				layer.enabled: true
				layer.effect: OpacityMask {
					maskSource: Rectangle {
						width: image.width
						height: image.height
						radius: 10
					}
				}

				MouseArea {
					id: imageArea
					anchors.fill: parent
				}
			}

			ColumnLayout {
				id: body
				Layout.topMargin: 16
				Layout.rightMargin: 20
				Layout.leftMargin: 20

				Item {
					id: badgeAndFavorite
					height: body.height / 6
					Layout.fillWidth: true
					Layout.bottomMargin: 8

					Rectangle {
						id: badge
						color: badgeBackgroundColor
						implicitWidth: badgeLabel
							.width + 18
						implicitHeight: badgeLabel
							.height + 6
						radius: 6
						anchors {
							left: parent.left
							verticalCenter: parent
								.verticalCenter
						}

						FontLoader {
							id: roboto
							source: doesntEmbed ? ""
							: "Roboto/Roboto-Regular.ttf"
						}

						Label {
							id: badgeLabel
							text: badgeText
							color: badgeColor
							font {
								family: doesntEmbed
								? "Roboto"
								: roboto.name
								pixelSize: 13
							}
							anchors.centerIn: parent
						}
					}

					Image {
						id: favorite
						source: "Font-Awesome/svgs/solid/heart.svg"
						sourceSize {
							width: 15
							height: 15
						}
						anchors {
							right: parent.right
							verticalCenter: parent
								.verticalCenter
						}
					}
				}

				FontLoader {
					id: heebo
					source: "Heebo/Heebo-Bold.ttf"
				}

				Label {
					id: title
					text: titleText
					color: Qt.rgba(.141, .161, .176, 1.0)
					wrapMode: Text.Wrap
					Layout.fillWidth: true
					Layout.bottomMargin: 8
					font {
						family: heebo.name
						pixelSize: 21
					}

					MouseArea {
						id: titleArea
						anchors.fill: parent
					}
				}

				Label {
					id: textTruncate
					text: textTruncateText
					color: Qt.rgba(.455, .459, .475, 1.0)
					wrapMode: Text.Wrap
					Layout.fillWidth: true
					Layout.bottomMargin: 8
					font {
						family: doesntEmbed ? "Roboto"
							: roboto.name
						pointSize: 14
					}
				}

				RowLayout {
					id: listInline
				}
			}

			RowLayout {
				id: footer
			}
		}
	}
}
