import Felgo 3.0
import QtQuick 2.12
import "../entities"
import "." as Levels

Levels.LevelBase {
    id: level
    // we need to specify the width to get correct debug draw for our physics
    // the PhysicsWorld component fills it's parent by default, which is the viewPort Item of the gameScene and this item uses the size of the level
    // NOTE: thy physics will also work without defining the width here, so no worries, you can ignore it untill you want to do some physics debugging
    width: 42 * gameScene.gridSize

    // you could draw your level on a graph paper and then add the tiles here only by defining their row, column and size

    GroundInside {
        row: -2
        column: 0
        size: 22
    }

    GroundInside {
        row: -2
        column: 1
        size: 22
    }

    Ground {
        row: -2
        column: 2
        size: 22
    }

    Ground {
        row: 6
        column: 4
        size: 8
    }

    Ground {
        row: 8
        column: 7
        size: 6
    }

    Tree {
        row: 16
        column: 5.5
        size: 1
    }

    Pumpkin {
        row: 13
        column: 5
        diepumpkin.visible: false
    }

    Pumpkin {
        row: 8
        column: 8
        diepumpkin.visible: false
    }

    CoinGround {
        row: 2
        column: 3.5

    }
    CoinGround {
        row: 2.5
        column: 3.5

    }
    CoinGround {
        row: 1.5
        column: 4

    }
    CoinGround {
        row: 2
        column: 4

    }
    CoinGround {
        row: 2.5
        column: 4

    }
    CoinGround {
        row: 3
        column: 4

    }
    CoinGround {
        row: 1.5
        column: 4.5

    }
    CoinGround {
        row: 2
        column: 4.5

    }
    CoinGround {
        row: 2.5
        column: 4.5

    }
    CoinGround {
        row: 3
        column: 4.5

    }
    CoinGround {
        row: 2
        column: 5

    }
    CoinGround {
        row: 2.5
        column: 5

    }

    CoinGround {
        row: 20.7
        column: 4
    }
    CoinGround {
        row: 21.3
        column: 4
    }
    CoinGround {
        row: 20.7
        column: 4.5
    }
    CoinGround {
        row: 21.3
        column: 4.5
    }

    Ground {
        row: 22
        column: 3
        size: 2
    }

    CoinGround {
        row: 24.7
        column: 4
    }
    CoinGround {
        row: 25.3
        column: 4
    }
    CoinGround {
        row: 24.7
        column: 4.5
    }
    CoinGround {
        row: 25.3
        column: 4.5
    }

    Ground {
        row: 26
        column: 3
        size: 2
    }

    GroundInside {
        row: 29
        column: 0
        size: 30
    }

    GroundInside {
        row: 29
        column: 1
        size: 30
    }


    Ground {
        row: 29
        column: 2
        size: 2
    }

    GroundInside {
        row: 31
        column: 2
        size: 8
    }

    GroundInside {
        row: 31
        column: 3
        size: 2
    }

    Spikes {
        row: 31
        column: 3.4
        size: 4
    }

    GroundInside {
        row: 33
        column: 3
        size: 6
    }

    GroundInside {
        row: 33
        column: 4
        size: 4
    }
    Spikes {
        row: 33
        column: 4.4
        size: 4
    }

    GroundInside {
        row: 35
        column: 4
        size: 2
    }

    Ground {
        row: 35
        column: 5
        size: 2
    }

    Ground {
        row: 37
        column: 4
        size: 2
    }

    Ground {
        row: 39
        column: 2
        size: 20
    }

    Sign_Flower {
        row: 41
        column: 4.2
    }

    Block {
        id: third_block
        row: 45
        column: 4.5
    }

    Flower {
        id: flower
        row: 45
        column: 4.7
        startX: row * 64
        startY: level.height - (column+1) * 64
    }


    Brick {
        row: 45.5
        column: 4.5
    }

    Brick {
        row: 46
        column: 4.5
    }


    Block {
        id: block1
        row: 46.5
        column: 4.5
    }


    Coin {
        id: coin1
        row: 46.6
        column: 5
        startX: row * 64
        startY: level.height - (column+1) * 64
    }

    Block {
        id: first_block
        row: 47
        column: 4.5
    }

    SnowBall {
        id: snowball
        row: 47
        column: 5
        startX: row * 64
        startY: level.height - (column+1) * 64
    }

    Fatbat {
        row: 50
        column: 3
        dieFatbat.visible: false
    }

    Fire {
        row: 58
        column: 3
        dieFire.visible: false
    }

    Ground {
        row: 61
        column: 3
        size: 1
    }

    Ground {
        row: 64
        column: 4
        size: 1
    }

    CoinGround {
        row: 64.2
        column: 4.5
    }

    CoinGround {
        row: 64.7
        column: 4.5
    }

    Ground {
        row: 67
        column: 5
        size: 1
    }

    Ground {
        row: 70
        column: 6
        size: 1
    }

    Ground {
        row: 73
        column: 4
        size: 1
    }

    GroundInside {
        row: 73
        column: 3
        size: 1
    }

    GroundInside {
        row: 73
        column: 2
        size: 1
    }

    GroundInside {
        row: 73
        column: 1
        size: 1
    }

    GroundInside {
        row: 73
        column: 0
        size: 1
    }

    GroundInside {
        row: 74
        column: 0
        size: 6
    }

    Ground {
        row: 74
        column: 1
        size: 5
    }

    Pumpkin {
        row: 74
        column: 2
        diepumpkin.visible: false
    }

    GroundInside {
        row: 79
        column: 1
        size:1
    }

    GroundInside {
        row: 79
        column: 2
        size:1
    }

    Ground {
        row: 79
        column: 3
        size:1
    }

    Ground {
        row: 80
        column: 0
        size: 6

    }

    Tree {
        row: 82
        column: 3.5
        size: 1
    }

    Fatbat {
        row: 84
        column: 2.5
        dieFatbat.visible: false
    }

    Wood {
        row: 88
        column: 2
        size: 1
    }

    Wood {
        row: 91
        column: 5
        size: 1
    }

    Wood {
        row: 97
        column: 1
        size: 1
    }

    GroundInside {
        row: 103
        column: 0
        size: 20
    }

    GroundInside {
        row: 103
        column: 1
        size: 20
    }

    Ground {
        row: 103
        column: 2
        size: 20
    }

    Tree {
        row: 106
        column: 5.5
        size: 1
    }

    Door {
        row: 110
        column: 5.7
        size: 1
    }

    Tree {
        row: 117
        column: 5.5
        size: 1
    }
}

