# new-item src -itemtype directory

$DS=$args[0] // directory sorgente 

$DD=$args[1] // directory destinatario
    
$tipo="*.docx" // estensione passata per variabile

               //gli argomenti vengono letti e finsicono in quelle variabili



new-item $DD -itemtype directory // nuovo elemento $DD specificato come directory



$cont=0; // variabile contatore inizializzata

foreach ($file $tipo in Get-ChildItem $DS) { // visualizza tutti i file con estensione .docx in directory sorgente

    $cont++; // incremento contatore

    # write-host $cont; // stampa contatore

    write-host "ora copio" $file $tipo $cont"_"$file $tipo; // stampa "ora copio nome file.docx e files in nomefilenuovo.docx

    $srcpath="$DS\$file $tipo";

    $dstpath="$DD\$cont"_"$file $tipo"; // i file .docx presenti nell'elenco della directory sorgente verranno rinominati quando saranno copiati in DD



    copy-item -path $srcpath -Destination $dstpath; // copia dei file nell'origine nella destinazione

}
