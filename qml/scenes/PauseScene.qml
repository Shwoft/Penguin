import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.0
import "../common"

SceneBase{
    id: pauseScene
    GameScene{
        id:gameScene
        anchors.fill: parent
        opacity:1
    }

    Rectangle {
        id: rectangle
        anchors.fill: parent.gameWindowAnchorItem
        Image {
            id:pause
            source: "../../assets/background/1.png"
            width: parent.width
            height: parent.height
        }
    }

    Item{
        anchors.fill: rectangle
        id:pause_buttons

        PauseButton{
            id:start_black
            x:80
            y:180
            image_button.source:"../../assets/editor/redo.png"
            onClicked: {
                gameWindow.state = "game"
                if(ismusic==false)
                    audioManager.stopMusic()

            }
        }

        PauseButton{
            id:music
            x:340
            y:180
            image_button.source:"../../assets/editor/music.png"
            onClicked: {
                if(ismusic==true){
                    audioManager.stopMusic()
                    ismusic=false

                }
                else{
                    audioManager.handleMusic()
                    ismusic=true
                }
            }
        }
        PauseButton{
            id:sound
            x:275
            y:150
            image_button.source:"../../assets/editor/ambientsound.png"
            onClicked: {

                if(issound==true){
                    audioManager.playSound()
                    issound=false
                }
                else{
                    issound=true
                }
            }
        }
        PauseButton{
            id:restart
            x:145
            y:150
            image_button.source:"../../assets/editor/undo.png"
            onClicked: {
                if(ismusic==false)
                    audioManager.stopMusic()
                gameWindow.state="load"
            }
        }
        PauseButton{
            id:exit
            x:210
            y:120
            image_button.source:"../../assets/editor/menu.png"
            onClicked: {
                if(ismusic==false)
                    audioManager.stopMusic()
                gameWindow.state="menu"
            }

        }
    }
    Image {
        x: 220
        id: image1
        source: "../../assets/penguin/sprite/walk.png"
        visible: false
    }

    Item {
        anchors.left: parent.gameWindowAnchorItem.left
        anchors.bottom: parent.gameWindowAnchorItem.bottom
        anchors.leftMargin: 180
        anchors.bottomMargin: 200
        id: sequence;
        width: 90;
        height: 70;


        SpriteSequence {
            id:spritetest
            anchors.fill: parent

            sprites: [
                Sprite {
                    name: "first"
                    source: image1.source
                    frameCount: 8;
                    frameWidth: image1.width/8;
                    frameHeight: image1.height;
                    frameRate: 9;
                }
            ]
        }
    }

}

