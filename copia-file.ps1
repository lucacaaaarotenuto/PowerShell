# new-item src -itemtype directory        

$DS=$args[0]    // directory sorgente

$DD=$args[1]    // directory destinatario
                // lettura degli argomenti passati e finiscono nelle variabili


new-item $DD -itemtype directory // DD viene definita come una directory



$cont=0; // variabile contatore

foreach ($file in Get-ChildItem $DS) { // per visualizzare tutti i file nella directory sorgente

    $cont++; // incremento del contatore

    # write-host $cont; // stampa del contatore

    write-host "ora copio" $file $cont"_"$file; // stampa "ora copio nome file e files in nomefilenuovo"

    $srcpath="$DS\$file";  

    $dstpath="$DD\$cont"_"$file";  // il file sorgente cambierà nome quando verrà copiato nel file destinazione



    copy-item -path $srcpath -Destination $dstpath; // copia dei file che si trovano nell'elemento di origine nella destinazione

}
