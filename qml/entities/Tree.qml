import QtQuick 2.0
import Felgo 3.0

PenguinEntityBaseDraggable {
    id: tree
    entityType: "tree"

    Row {
        Repeater {
            id: ground_tree
            model: size
            Image {
                source: "../../assets/halloween/tree.png"
                width: 180
                height: 226
            }
        }
    }
}

