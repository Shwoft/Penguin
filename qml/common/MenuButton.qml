import QtQuick 2.0

Rectangle {
    id: button
    // this will be the default size, it is same size as the contained text + some padding

    color:mouseArea.containsMouse ? "orange" : "purple"
    width: mouseArea.containsMouse ? buttonText.width + paddingHorizontal * 2:buttonText.width + paddingHorizontal * 2+2
    height: mouseArea.containsMouse ? buttonText.height + paddingVertical * 2:buttonText.height + paddingVertical * 2+2
    // round edges
    radius: 10

    // the horizontal margin from the Text element to the Rectangle at both the left and the right side.
    property int paddingHorizontal: 10
    // the vertical margin from the Text element to the Rectangle at both the top and the bottom side.
    property int paddingVertical: 5

    // access the text of the Text component
    property alias text: buttonText.text

    // this handler is called when the button is clicked.
    signal clicked

    Text {
        id: buttonText
        anchors.centerIn: parent
        font.pixelSize: 28
        color: "white"
    }


    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: button.clicked()
        onPressed: button.opacity = 0.7
        onReleased: button.opacity = 1
    }
}

