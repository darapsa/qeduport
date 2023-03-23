import QtQuick 2.15
import QtQuick.Controls 2.15
import Bootstrap 5.3
import Eduport 1.4

TextField {
	font {
		family: Bootstrap.bodyFont.family
		weight: Bootstrap.bodyFont.weight
		pointSize: Eduport.formControlFontSize
	}
	background: Rectangle {
		color: "transparent"
	}
}
