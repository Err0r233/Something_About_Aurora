<?php
highlight_file(__FILE__);
error_reporting(0);
$a = $_GET['param1']?$_GET['param1']:'';
$b = $_GET['param2']?$_GET['param2']:'';
if($a!==$b&&md5($a)===md5($b)){
    if(isset($_GET['cmd'])){
        $cmd = $_GET['cmd'];
        if(!preg_match("/\;|cat|flag| |[0-9]|\\$|\*|more|less|head|sort|tail|system|exec|shell_exec|tac|od|vi|vim/i", $cmd)){
            system($cmd);
        }
        else{
            die("Hacker!");
        }
    }
}
else{
    echo "Try hard!";
}
?>
