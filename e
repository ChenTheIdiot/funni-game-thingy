<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        /* Force the body and html to take up every pixel available */
        body, html { 
            margin: 0; 
            padding: 0; 
            width: 100%; 
            height: 100%; 
            overflow: hidden; 
            background-color: #000; 
        }

        /* The container for Ruffle */
        #ruffle-container { 
            width: 100vw; 
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Ensure the actual player fills the container */
        ruffle-player {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>

    <div id="ruffle-container"></div>

    <script src="https://unpkg.com/@ruffle-rs/ruffle"></script>
    
    <script>
        window.RufflePlayer = window.RufflePlayer || {};
        window.addEventListener("load", (event) => {
            const ruffle = window.RufflePlayer.newest();
            const player = ruffle.createPlayer();
            const container = document.getElementById("ruffle-container");
            container.appendChild(player);
            
            // Player Configuration
            player.config = {
                "letterbox": "on",     // Keeps aspect ratio if needed
                "autoplay": "on",      // Starts immediately
                "unmuteOverlay": "hidden",
                "scale": "showAll",    // Ensures the whole game is visible
                "forceScale": true     // Forces it to fill the player dimensions
            };

            // Loading your GitHub file
            player.load("https://raw.githubusercontent.com/ChenTheIdiot/avahost/main/Animator_vs_Animation_Game_Special_Edition.swf");
        });
    </script>

</body>
</html>
