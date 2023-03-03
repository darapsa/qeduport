import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
	width: badgeContent.width
	height: badgeContent.height
	Label{
		id: discount
		color: "#ffffff"
		text: "60% off"
		font.pointSize: 8
        rightPadding: 8
        leftPadding: 8
        bottomPadding: 4
        topPadding: 4
		font.family: "Roboto"
		background: Rectangle {
			width: discount.width
			height: discount.height
			color: "#fd7e14"
			radius: 4
		}
	}
}
