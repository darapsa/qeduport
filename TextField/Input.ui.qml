import QtQuick
import QtQuick.Controls
import Eduport

TextField {
	font {
		family: Eduport.bodyFont.family
		weight: Eduport.bodyFont.weight
		pointSize: Eduport.formControlFontSize
	}
	color: Eduport.bsGray700
	background: Rectangle {
		radius: 5.2
		color: Eduport.bsBodyBg
		border {
			color: Eduport.bsGray300
			width: 1
		}
	}
	topPadding: 8
	leftPadding: 16
	rightPadding: 16
	bottomPadding: 8
}
