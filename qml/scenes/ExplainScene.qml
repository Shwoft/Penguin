import Felgo 3.0
import QtQuick 2.0
import "../common"

SceneBase{
    id: explainScene

    Rectangle {
        id: explain_rectangle
        anchors.fill: parent.gameWindowAnchorItem
        color:"lightblue"

        Text{
            id:showtext
            anchors.fill: parent
            anchors.centerIn: parent.Center
            font.pixelSize: 20
            color: "purple"
            text: "This is a game where you can control the
movement of player by keyboard
you need to avoid all kinds of
monsters and traps, and as much gold as possible
and finally the end of the victory.
Let's go!"
        }
    }

    // back button to leave scene
    MenuButton {
        text: "Back to menu"
        // anchor the button to the gameWindowAnchorItem to be on the edge of the screen on any device.
        x:150
        anchors.bottom: explainScene.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 10
        onClicked: backButtonPressed()
    }
}
