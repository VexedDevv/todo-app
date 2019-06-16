    <?php
    /********************************************************************************
     *     Urheberrechtshinweis                                                     *
     *     Copyright © Dustin Curdt 2019                                            *
     *     Erstellt: 12.05.2019 / 19:43                                             *
     *                                                                              *
     *     Alle Inhalte Dieses Quelltextes sind urheberrechtlich geschützt.         *
     *     Das Urheberrecht liegt, soweit nicht ausdrücklich anders gekennzeichnet, *
     *     bei Dustin Curdt. Alle Rechte vorbehalten.                               *
     *                                                                              *
     *     Jede Art der Vervielfältigung, Verbreitung, Vermietung, Verleihung       *
     *     öffentlichen Zugänglichmachung oder andere Nutzung                       *
     *     bedarf der ausdrücklichen, schriftlichen Zustimmung von Dustin Curdt     *
     ********************************************************************************/

    try {
        $pdo = new PDO(
            "mysql:host=localhost;db=todo-app",
            "root",
            "1234"
        );
    } catch (PDOException $e) {
        echo "Connection to the database failed.";
        die();
    }


    $t = "my";
    echo "Hello $t World \n";
    echo 'Hello $t World \n';
    echo 'Skippy';
