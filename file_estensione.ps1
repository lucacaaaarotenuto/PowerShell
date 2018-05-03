# new-item src -itemtype directory

$DS=$args[0] 

$DD=$args[1]

$tipo="*.docx"



new-item $DD -itemtype directory



$cont=0;

foreach ($file in Get-ChildItem $DS) {

    $cont++;

    # write-host $cont;

    write-host "ora copio" $file $tipo $cont"_"$file;

    $srcpath="$DS\$file $tipo";

    $dstpath="$DD\$cont`_$file $tipo";



    copy-item -path $srcpath -Destination $dstpath; 

}
