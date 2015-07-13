</div></div>

        <link rel="stylesheet" type="text/css" href="/FullWidthImageSlider/css/default.css" />
        <link rel="stylesheet" type="text/css" href="/FullWidthImageSlider/css/component.css" />
        <script src="/FullWidthImageSlider/js/modernizr.custom.js"></script>

        <div style="float: left; width: 100%;">
            <div id="cbp-fwslider" class="cbp-fwslider">
                <ul>
                    <?php
                        // Create connection
                        $conn = new mysqli(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
                        // Check connection
                        if ($conn->connect_error) {
                            die("Connection failed: " . $conn->connect_error);
                        } 

                        $sql = "SELECT * FROM oc_banner_image WHERE banner_id = 23 ORDER BY banner_image_id DESC";
                        $result = $conn->query($sql);

                        if ($result->num_rows > 0) {
                            // output data of each row
                            while($row = $result->fetch_assoc()) {
                                echo '<li><a href="'.$row["link"].'"><img src="/image/'.$row["image"].'" alt="img01"/></a></li>';
                            }
                        } else {
                            echo "<!-- No banner -->";
                        }
                        $conn->close();
                      ?> 
                </ul>
            </div>
        </div>

        <script src="/FullWidthImageSlider/js/jquery.cbpFWSlider.min.js"></script>
        <script>
            $( function() {
                /*
                - how to call the plugin:
                $( selector ).cbpFWSlider( [options] );
                - options:
                {
                    // default transition speed (ms)
                    speed : 500,
                    // default transition easing
                    easing : 'ease'
                }
                - destroy:
                $( selector ).cbpFWSlider( 'destroy' );
                */

                $( '#cbp-fwslider' ).cbpFWSlider();

            } );
        </script>


<div><div>