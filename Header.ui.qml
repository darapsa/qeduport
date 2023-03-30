import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4
import "DropShadow" as DrpShdw
import "Button" as Btn
import "Label" as Lbl
import "Header"

ToolBar {
	property alias logo: logo
	property alias cart: cart
	property alias cartMenu: cartMenu
	property alias checkout: checkout
	property alias profile: profile
	property string profileImageSource:
		"https://eduport.webestica.com/assets/images/avatar/01.jpg"
	property alias profileMenu: profileMenu
	property alias info: info
	property alias divider: divider
	property string fullNameText: "Lori Ferguson"
	property string emailText: "example@gmail.com"
	property alias editProfile: editProfile
	property alias accountSettings: accountSettings
	property alias help: help
	property alias log: log
	property alias light: light
	property alias dark: dark

	horizontalPadding: 15
	background: Rectangle {
		implicitHeight: 70
		color: Eduport.bsBodyBg
	}

	ToolButton {
		id: logo
		anchors {
			left: parent.left
			verticalCenter: parent.verticalCenter
		}
		icon {
			source:
			"https://eduport.webestica.com/assets/images/logo.svg"
			width: 115
		}
		background: Rectangle {
			color: "transparent"
		}
	}

	Component {
		id: background

		Item {
			implicitWidth: width

			Rectangle {
				id: rectangle
				anchors.fill: parent
				radius: 5.2
				color: Eduport.mode
					? Eduport.bsDark
					: Eduport.bsBodyBg
			}

			DrpShdw.Box {
				source: rectangle
				anchors.fill: rectangle
			}
		}
	}

	Component {
		id: menuSeparator

		MenuSeparator {
			contentItem: Rectangle {
				implicitWidth: width
				implicitHeight: 1
				color: Eduport.mode
					? Eduport.bsGray300 : Eduport.bsGray500
			}
		}
	}

	ToolButton {
		id: cart
		padding: 0
		width: 40
		height: 40
		anchors {
			right: profile.left
			rightMargin: 12
			verticalCenter: parent.verticalCenter
		}
		layer {
			enabled: true
			effect: OpacityMask {
				maskSource: Rectangle {
					width: 40
					height: 40
					radius: 40
				}
			}
		}
		contentItem: Item {

			Image {
				anchors.centerIn: parent
				source: "Bootstrap/icons/cart3.svg"
				fillMode: Image.PreserveAspectFit

				ColorOverlay {
					color: Eduport.bsGray900
					source: parent
					anchors.fill: parent
				}
			}
		}
		background: Rectangle {
			color: Eduport.bsLight
			border {
				color: Eduport.bsLight
				width: 1
			}
		}

		Menu {
			id: cartMenu
			y: parent.height
			background: Loader {
				width: 256
				sourceComponent: background
			}
			delegate: MenuItem {
				contentItem: CartItem {
					imageSource: icon.source
					titleText: text
				}
				background: Rectangle {
					color: "transparent"
				}
			}

			Lbl.H5 {
				text: qsTr("Cart items")
				topPadding: 25.6
				leftPadding: 16
				rightPadding: 16
				bottomPadding: 25.6
			}

			Action {
				icon.source:
				"https://eduport.webestica.com/assets/images/book/02.jpg"
				text:
				"Angular 4 Tutorial in audio (Compact Disk)"
			}

			Action {
				icon.source:
				"https://eduport.webestica.com/assets/images/book/04.jpg"
				text:
				"The Principles of Beautiful Graphics Design (Paperback)"
			}

			Loader {
				sourceComponent: menuSeparator
			}

			RowLayout {

				Btn.Light {
					id: viewCart
					text: qsTr("View Cart")
					horizontalPadding: 12.8
					verticalPadding: 6.4
					font.pointSize: 13
					bsBtnBorderRadius: 3.2
					Layout.margins: 16
				}

				Btn.Success {
					id: checkout
					text: qsTr("Checkout")
					horizontalPadding: 12.8
					verticalPadding: 6.4
					font.pointSize: 13
					bsBtnBorderRadius: 3.2
					Layout.margins: 16
					Layout.alignment: Qt.AlignRight
				}
			}
		}
	}

	Component {
		id: image

		Image {
			source: imageSource
			sourceSize {
				width: imageWidth
				height: imageHeight
			}
			layer {
				enabled: true
				effect: OpacityMask {
					maskSource: Rectangle {
						width: imageWidth
						height: imageHeight
						radius: maskRadius
					}
				}
			}
		}
	}

	ToolButton {
		id: profile
		padding: 0
		anchors {
			right: parent.right
			verticalCenter: parent.verticalCenter
		}
		contentItem: Loader {
			property string imageSource: profileImageSource
			property int imageWidth: 40
			property int imageHeight: 40
			property real maskRadius: 40
			sourceComponent: image
		}
		background: Rectangle {
			color: "transparent"
		}

		Menu {
			id: profileMenu
			y: parent.height
			horizontalPadding: 10
			verticalPadding: 16
			background: Loader {
				width: 260.734
				sourceComponent: background
			}
			delegate: MenuItem {
				id: menuItem
				font: Eduport.bsBtnFont
				horizontalPadding: 16
				verticalPadding: 6.4
				spacing: 8
				contentItem: RowLayout {

					Image {
						source: menuItem.icon.source

						ColorOverlay {
							color: highlighted
								? Eduport.bsDropdownLinkHoverColor
								: Eduport.bsDropdownLinkColor
							source: parent
							anchors.fill: parent
						}
					}

					Text {
						text: menuItem.text
						font: menuItem.font
						color: highlighted
							? Eduport.bsDropdownLinkHoverColor
							: Eduport.bsDropdownLinkColor
						Layout.fillWidth: true
					}
				}
				background: Rectangle {
					color: highlighted
						? Eduport.bsDropdownLinkHoverBg
						: Eduport.mode
							? Eduport.bsDark
							: Eduport.bsBodyBg
					radius: 5.2
				}
			}

			Item {
				id: info
				implicitHeight: layout.height + 16

				RowLayout {
					id: layout
					spacing: 16
					anchors {
						top: parent.top
						topMargin: 0
						left: parent.left
						leftMargin: 16
						right: parent.right
						rightMargin: 16
					}

					Loader {
						property string imageSource: profileImageSource
						property int imageWidth: 48
						property int imageHeight: 48
						property real maskRadius: 48
						sourceComponent: image
					}

					ColumnLayout {
						spacing: 0

						Lbl.H6 {
							text: fullNameText
						}

						Lbl.Body {
							text: emailText
							font.pointSize: 14
							color: Eduport
								.bsDropdownColor
						}
					}
				}
			}

			Loader {
				id: divider
				sourceComponent: menuSeparator
			}

			Action {
				id: editProfile
				icon.source: "Bootstrap/icons/person.svg"
				text: qsTr("Edit Profile")
			}

			Action {
				id: accountSettings
				icon.source: "Bootstrap/icons/gear.svg"
				text: qsTr("Account Settings")
			}

			Action {
				id: help
				icon.source: "Bootstrap/icons/info-circle.svg"
				text: qsTr("Help")
			}

			Action {
				id: log
				icon.source: "Bootstrap/icons/power.svg"
				text: qsTr("Sign Out")
			}

			Loader {
				sourceComponent: menuSeparator
			}

			Item {
				implicitHeight: mode.height + 16

				Rectangle {
					implicitHeight: mode.height + 8
					color: Eduport.bsLight
					radius: Eduport.bsBorderRadius
					anchors {
						left: parent.left
						right: parent.right
						bottom: parent.bottom
					}

					RowLayout {
						id: mode
						spacing: 0
						anchors {
							left: parent.left
							leftMargin: 4
							right: parent.right
							rightMargin: 4
							verticalCenter: parent
								.verticalCenter
						}

						Btn.Sm {
							id: light
							icon {
								source: "Bootstrap/icons/sun.svg"
								width: 16
								height: 16
							}
							text: qsTr("Light")
							checked: Eduport.mode
								== Eduport.Mode
									.Light
							enabled: !checked
							Layout.fillWidth: true
						}

						Btn.Sm {
							id: dark
							icon {
								source: "Bootstrap/icons/moon-stars.svg"
								width: 16
								height: 16
							}
							text: qsTr("Dark")
							checked: Eduport.mode
								== Eduport.Mode
									.Dark
							enabled: !checked
							Layout.fillWidth: true
						}
					}
				}
			}
		}
	}
}
