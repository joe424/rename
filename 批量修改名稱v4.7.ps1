### 版本v4.7 ###
<#

1. 禁止特殊符號
2. 更改項目順序(下面敘述皆為新項目順序)
3. 增加一般篩選銜接字串或數字功能(項目3)
4. 項目4可將數字放在前面
5. 實作項目6,7,8,9(正規表示式的改副檔名、銜接、完全改名、無副檔名銜接副檔名)
6. 增加(數字).info
7. 實作重作功能
8. 把資料夾獨立做選項

#>

# 決定項目
$fileOrFolder = 'file'
$Option=-1
$checkString="`$Option -ne 1 -And `$Option -ne 2 -And `$Option -ne 3 -And `$Option -ne 4 -And `$Option -ne 5" + `
"-And `$Option -ne 6 -And `$Option -ne 7 -And `$Option -ne 8  -And `$Option -ne 9 -And `$Option -ne 10 -And `$Option -ne 11" + `
"-And `$Option -ne 12 -And `$Option -ne 13 -And `$Option -ne 14 -And `$Option -ne 15" + `
"-And `$Option -ne 16" + `
"-And `$Option -ne '1.info' -And `$Option -ne '2.info' -And `$Option -ne '3.info' -And `$Option -ne '4.info'" + `
"-And `$Option -ne '5.info' -And `$Option -ne '6.info' -And `$Option -ne '7.info' -And `$Option -ne '8.info' -And `$Option -ne '9.info'" + `
"-And `$Option -ne '10.info' -And `$Option -ne '11.info'" +`
"-And `$Option -ne '12.info' -And `$Option -ne '13.info' -And `$Option -ne '14.info'" +`
"-And `$Option -ne '15.info' -And `$Option -ne '16.info'" +`
"-And `$Option -ne 'folder' -And `$Option -ne 'file'"
while(Invoke-Expression $checkString){
    
    if($fileOrFolder -eq 'file'){
        # 功能簡介
	    write-host(
            "==================<選擇項目>==================`n`n" +`
            "1.選擇副檔名、篩選字串，改變符合條件檔案的副檔名`n`n" +`
            "2.選擇副檔名、欲修改字串，將該部分取代為新字串`n`n" +`
            "3.選擇副檔名、篩選字串、輸入字串或數字，將該檔案名稱銜接`n`n" +`
            "4.選擇副檔名、篩選字串，將符合條件的檔案完全改名為新字串加上數字`n`n" +`
            "5.藉由篩選字串，將符合條件且沒有副檔名的檔案後面接上副檔名`n`n" +`
            "6.選擇副檔名、使用正規表示式篩選，將符合條件的檔案更改副檔名`n`n"+`
            "7.選擇副檔名、使用正規表示式，將符合條件的檔案銜接其檔案名稱`n`n" +`
            "8.選擇副檔名、使用正規表示式篩選，將符合條件的檔案完全改名檔案名稱`n`n" +`
            "9.使用正規表示式篩選，將符合條件且沒有副檔名的檔案檔案後面接上副檔名`n`n" +`
            "10.建立復原資料夾`n`n" +`
            "11.使用復原資料夾復原資料 (輸入復原資料夾的對應號碼即可復原)`n`n" +`
            "(i) 目前路徑為:" + " `"" + (get-location) + "`"`n" +`
            "(i) 這些項目只適用於更改檔案名稱(10與11除外)，若要更改資料夾名稱請輸入folder`n" +`
            "(i) 若要查看項目詳細功能，輸入(數字).info`n`n" +`
            "=============================================
        ")
    }
    elseif($fileOrFolder -eq 'folder'){
        # 功能簡介
	    write-host(
	        "==================<選擇項目>==================`n`n" +`
            "12.輸入欲修改字串，將該部分取代為新字串`n`n" +`
            "13.篩選字串、輸入字串或數字，將該資料夾名稱銜接`n`n" +`
            "14.篩選字串，將符合條件的資料夾完全改名為新字串加上數字`n`n" +`
            "15.使用正規表示式，將符合條件的資料夾銜接其檔案名稱`n`n" +`
            "16.使用正規表示式篩選，將符合條件的資料夾完全改名檔案名稱`n`n" +`
            "(i) 目前路徑為:" + " `"" + (get-location) + "`"`n" +`
            "(i) 這些項目只適用於更改資料夾名稱，若要更改檔案名稱請輸入file`n" +`
            "(i) 若要查看項目詳細功能，輸入(數字).info`n`n" +`
            "=============================================
        ")
    }

    $input_hint = "(>) 請輸入"
    $Option = Read-Host $input_hint

    # 輸入錯誤提示
    while(Invoke-Expression $checkString){
		write-Host "(!) 輸入錯誤，請重新輸入，要結束請按Ctrl+c`n"
        $Option = Read-Host $input_hint
	}

    # 如果輸入file
    if($Option -eq 'file'){
        $fileOrFolder = 'file'
        $Option = -1
        cls
        continue
    }
    # 如果輸入folder
    elseif($Option -eq 'folder'){
        $fileOrFolder = 'folder'
        $Option = -1
        cls
        continue
    }
    # 1.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '1.info'){
        cls
        write-host(
            "==================<項目1>====================`n`n" +`
            "(i) 輸入[欲更改副檔名名稱]、[篩選字串]、[新副檔名名稱]`n`n" +`
            "(i) 範例: .txt -> file -> .png =====> file.txt -> file.png`n`n" +`
            "(i) 若[新副檔名名稱]不輸入、或只輸入.，則符合條件的檔案將會變成無副檔名`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目1 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 1){
        
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $goBackOrNot = ""
            $Option = -1
            cls
            continue
        }

        # 輸入舊的副檔名####################################################
        # 判斷若非.開頭、或沒有該副檔名，則錯誤
	    $Old_Filename_Extension = Read-Host '(>) 輸入欲修改附檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        while($Old_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -Or $Old_Filename_Extension -eq "" -Or $Old_Filename_Extension.Substring(0, 1) -ne '.' `
        -Or $Old_Filename_Extension -eq ".." `
        -or (get-childitem *$Old_Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0)
        {
            if($Old_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($Old_Filename_Extension -eq ""){
                write-host "(!) 不可為空`n"
            }elseif($Old_Filename_Extension -ne "" -and $Old_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) 請以.開頭`n"
            }elseif($Old_Filename_Extension -eq ".."){
                write-host "(!) 沒有該副檔名的檔案`n"
            }elseif((get-childitem *$Old_Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) 沒有該副檔名的檔案`n"
            }

            # 若副檔名錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $Old_Filename_Extension = Read-Host '(>) 輸入欲修改附檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 輸入篩選字串####################################################
        $oldstring = Read-Host "(>) 輸入篩選字串"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem *$Old_Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($oldstring -eq ""){
                write-host("(!) 不可為空`n")
            }elseif((get-childitem *$Old_Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count -eq 0){
                write-host("(!) 沒有符合條件的檔案`n")
            }

            # 若欲修改字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $oldstring = Read-Host '(>) 輸入篩選字串'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的檔案共有" + (get-childitem *$Old_Filename_Extension `
        | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count + "項`n")

        # 輸入新的副檔名####################################################
        # 若輸入""或"."則改為無副檔名
        write-host("(i) 不輸入或者只輸入.，可將符合條件的副檔名改為無副檔名")
	    $New_Filename_Extension = Read-Host '(>) 輸入新副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        while($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or ($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.')){
            if($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) 請以.開頭`n"
            }

            # 若副檔名錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $New_Filename_Extension = Read-Host '(>) 輸入新副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'

        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 將附檔名一律變為小寫
        $New_Filename_Extension = $New_Filename_Extension.ToLower()

        # ####################################################

        # 建立重作list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        # 將舊副檔名改為新副檔名
	    Get-ChildItem *$Old_Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | where-object {! $_.PSIsContainer} | foreach-object{
            $Base = $_.BaseName

            # 舊list為更改前的名字
            $OK = $OldNameList.Add($_.Name)
            # 新list為更改後的名字
            $OK = $NewNameList.Add($Base + $New_Filename_Extension)

            # 更改副檔名
            $_ | Rename-Item -NewName $Base$New_Filename_Extension
        }

        # 重做功能
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                #將新list變回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }
    }
    # 2.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '2.info'){
        cls
        write-host(
            "==================<項目2>====================`n`n" +`
            "(i) 輸入[副檔名名稱]、[欲修改字串]、[新字串]`n`n" +`
            "(i) 範例: .txt -> A -> B =====> fileA.txt -> fileB.txt`n`n" +`
            "(i) 若[新字串]不輸入，則相當於將[欲修改字串]刪除`n`n" +`
            "=============================================
            ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目2 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 2){

        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # 輸入副檔名####################################################
        $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." -Or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) 不可為空`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) 請以.開頭`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) 沒有該副檔名的檔案`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) 沒有該副檔名的檔案`n"
            }

            # 若副檔名錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'

        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 將副檔名一律變為小寫
        $Filename_Extension = $Filename_Extension.ToLower()

        # 舊字串不可為空####################################################
        $oldstring = Read-Host "(>) 輸入欲修改字串"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" -or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} `
        | Where-Object {$_.BaseName -clike "*$oldstring*"}).Count -eq 0)
        {
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($oldstring -eq ""){
                write-host("(!) 不可為空`n")
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer}  `
            | Where-Object {$_.BaseName -clike "*$oldstring*"}).Count -eq 0){
                write-host("(!) 沒有符合條件的檔案`n")
            }

            # 若欲修改字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $oldstring = Read-Host '(>) 輸入欲修改字串'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的檔案共有" + (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} |`
         Where-Object {$_.BaseName -clike "*$oldstring*"}).Count + "項`n")

        # 新字串可為空，若空則等同刪掉舊字串####################################################

        write-host("(i) 若不輸入，則刪除欲修改字串")
        $newstring = Read-Host '(>) 輸入新字串'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }

            # 若新字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $newstring = Read-Host '(>) 輸入新字串'
        }
        
        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ####################################################

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        # 只將BaseName部分做修改，不動到副檔名(因為副檔名也有可能符合篩選條件)
        Get-ChildItem *$Filename_Extension | where-object {! $_.PSIsContainer} `
        | Where-Object {$_.BaseName -clike "*$oldstring*"} | ForEach{
            # 放棄更改用
            $OK = $OldNameList.Add($_.Name)
            $OK = $NewNameList.Add("$($_.BaseName.Replace($oldstring, "$newstring")+$_.Extension)")
            $_ | Rename-Item -NewName "$($_.BaseName.Replace($oldstring, "$newstring")+$_.Extension)"
        }

        # ######################### 因為項目2的作法資料夾不會自己重整(疑似是oldstring,newstring若一樣(只差大小寫)，則不會自己重整)
        # 故藉由下面方法先更改副檔名再改回來來做到重整的效果
        if($oldstring.ToLower() -eq $newstring.ToLower()){
            write-host("(i) 請稍等數秒...")

            Get-ChildItem *$Filename_Extension | where-object {! $_.PSIsContainer} |`
             Where-Object {$_.Name -clike "*$newstring*"} | Rename-Item -NewName {
                [System.IO.Path]::ChangeExtension($_.Name, '.waitAsecond')
	        }

            Start-Sleep -s 2

            Get-ChildItem *.waitAsecond | where-object {! $_.PSIsContainer}  | Rename-Item -NewName {
                [System.IO.Path]::ChangeExtension($_.Name, $Filename_Extension)
	        }

            Start-Sleep -s 3
        }
        # #########################

        # 重做功能
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                # 將新list變回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

        # ######################### 如果重做且只差大小寫，再次重整
        if($oldstring.ToLower() -eq $newstring.ToLower() -and $forgive -eq "y"){
            write-host("(i) 請稍等數秒...")

            Get-ChildItem *$Filename_Extension | where-object {! $_.PSIsContainer} |`
             Where-Object {$_.Name -clike "*$oldstring*"} | Rename-Item -NewName {
                [System.IO.Path]::ChangeExtension($_.Name, '.waitAsecond')
	        }

            Start-Sleep -s 2

            Get-ChildItem *.waitAsecond | where-object {! $_.PSIsContainer}  | Rename-Item -NewName {
                [System.IO.Path]::ChangeExtension($_.Name, $Filename_Extension)
	        }

            Start-Sleep -s 3
        }
        # #########################

        write-host("(i) 若無轉換，請對資料夾按F5來重新整理")

    }
    # 3.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '3.info'){
        cls
        write-host(
            "==================<項目3>====================`n`n"  +`
            "(i) 輸入[副檔名名稱]、[篩選字串]、[選擇字串或數字]、[輸入字串或數字]、[銜接位置]`n`n" +`
            "(i) [選擇字串或數字]、[銜接位置]為數字代號，再選擇時皆有提示`n`n" +`
            "(i) [輸入字串或數字]的數字為遞增數字，即下一個符合條件的檔案其銜接的數字會+1`n`n" +`
            "(i) 範例: .txt -> file -> (選擇要銜接的是字串) -> _add -> (選擇接在檔案名稱後面)`n`n" +`
            "                                =====> file.txt -> file_add.txt`n`n" +`
            "(i) 範例: .txt -> file -> (選擇要銜接的是數字) -> 30 -> (選擇接在檔案名稱前面) `n`n" +`
            "                                =====> fileA.txt -> 30fileA.txt 且 fileB.txt -> 31fileB.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目3 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 3){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # 輸入副檔名####################################################
        $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." `
        -Or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) 不可為空`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) 請以.開頭`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) 沒有該副檔名的檔案`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) 沒有該副檔名的檔案`n"
            }

            # 若副檔名錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'

        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 將副檔名一律變為小寫
        $Filename_Extension = $Filename_Extension.ToLower()

        # 篩選字串不可為空####################################################
        $oldstring = Read-Host "(>) 輸入篩選字串"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($oldstring -eq ""){
                write-host("(!) 不可為空`n")
            }elseif((get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count -eq 0){
                write-host("(!) 沒有符合條件的檔案`n")
            }

            # 若欲修改字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $oldstring = Read-Host '(>) 輸入篩選字串'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的檔案共有" + (get-childitem *$Filename_Extension `
        | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count + "項`n")
        
        # 選擇要延伸的是字串還是數字 #################################################
        $StoreNumOrString = read-host("(>) 請選擇要銜接的項目 (1.字串 2.數字)")
        
        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # 選擇延伸的是數字
        if($StoreNumOrString -eq 2){
            $count = read-host("(>) 請輸入起始數字")
            while($count -notmatch "^\d+$"){
                write-host "(!) 請輸入數字`n"

                # 若數字錯誤，則給予離開的機會
                $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # 若上面沒輸入exit則繼續
                $count = Read-Host '(>) 輸入數字的起始值'
            }

            # 若在上面輸入exit，則在這裡發揮跳出項目的作用
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # 選擇要銜接的位置
            $WhereConnect = 1
            $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.檔案名稱後(副檔名前) 2.檔案名稱前 3.篩選字串後 4.篩選字串前)")

            # 篩選出的檔案要照此規則排列，以維持檔案的順序
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # 先將符合條件的檔案，將開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name

                    # 放棄更改用list
                    $OK = $OldNameList.Add($NowName)

                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    # newnamelist要放下來，因為count的原因
                    $OK = $NewNameList.Add("$($_.BaseName.Replace("waitAsecond.", $count) + $_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("waitAsecond.", $count) + $_.Extension)"
                    $count++
                }

            }elseif($WhereConnect -eq 3){
                # 先將符合條件的檔案，將篩選字串結尾添加.waitAsecond，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)

                    $_ | Rename-Item -NewName "$($_.BaseName.Replace($oldstring, "$oldstring$waitasec")+$_.Extension)"
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $waitasec = ".waitAsecond"

                    # newnamelist要放下來，因為count的原因
                    $OK = $NewNameList.Add("$($_.BaseName.Replace("$oldstring$waitasec", "$oldstring$count")+$_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("$oldstring$waitasec", "$oldstring$count")+$_.Extension)"
                    $count++
                }
                
            }elseif($WhereConnect -eq 4){
                # 先將符合條件的檔案，將篩選字串開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)

                    $_ | Rename-Item -NewName "$($_.BaseName.Replace($oldstring, "$waitasec$oldstring")+$_.Extension)"
                }
                Get-ChildItem *waitAsecond.* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $waitasec = "waitAsecond."

                    # newnamelist要放下來，因為count的原因
                    $OK = $NewNameList.Add("$($_.BaseName.Replace("$waitasec$oldstring", "$count$oldstring")+$_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("$waitasec$oldstring", "$count$oldstring")+$_.Extension)"
                    $count++
                }
            }else{
                # 先將符合條件的檔案，將結尾(副檔名前)添加.waitAsecond，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.BaseName

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    

                    $_ | Rename-Item -NewName $NowName$waitasec$Filename_Extension
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {

                    # newnamelist要放下來，因為count的原因
                    $OK = $NewNameList.Add("$($_.BaseName.Replace(".waitAsecond", $count) + $_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace(".waitAsecond", $count) + $_.Extension)"
                    $count++
                }
            }
        
        }
        # 選擇延伸的是字串
        else{
            $InputString = read-host("(>) 請輸入字串")

            while($InputString -match '[\*\\\/\:\?\|\<\>\"]' -or $InputString -eq ""){
                if($InputString -match '[\*\\\/\:\?\|\<\>\"]'){
                    write-host "(!) 含有非法字元`n"
                }elseif($InputString -eq ""){
                    write-host("(!) 不可為空`n")
                }

                # 若字串錯誤，則給予離開的機會
                $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # 若上面沒輸入exit則繼續
                $InputString = read-host("(>) 請輸入字串")
            }

            # 若在上面輸入exit，則在這裡發揮跳出項目的作用
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # 選擇要銜接的位置
            $WhereConnect = 1
            $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.檔案名稱後(副檔名前) 2.檔案名稱前 3.篩選字串後 4.篩選字串前)")

            # 篩選出的檔案要照此規則排列，以維持檔案的順序
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # 先將符合條件的檔案，將開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name

                    # 放棄更改用list
                    $OK = $OldNameList.Add($NowName)
                    $OK = $NewNameList.Add($InputString+$NowName)

                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object{
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("waitAsecond.", $InputString) + $_.Extension)"
                }

            }elseif($WhereConnect -eq 3){
                # 先將符合條件的檔案，將篩選字串結尾添加.waitAsecond，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{ 
                    $waitasec = ".waitAsecond"

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    $OK = $NewNameList.Add("$($_.BaseName.Replace("$oldstring", "$oldstring$InputString")+$_.Extension)")

                    $_ | Rename-Item -NewName "$($_.BaseName.Replace($oldstring, "$oldstring$waitasec")+$_.Extension)"
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object{
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("$oldstring$waitasec", "$oldstring$InputString")+$_.Extension)"
                }

            }elseif($WhereConnect -eq 4){
                # 先將符合條件的檔案，將篩選字串開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    $OK = $NewNameList.Add("$($_.BaseName.Replace("$oldstring", "$InputString$oldstring")+$_.Extension)")

                    $_ | Rename-Item -NewName "$($_.BaseName.Replace($oldstring, "$waitasec$oldstring")+$_.Extension)"
                }
                Get-ChildItem *waitAsecond.* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("$waitasec$oldstring", "$InputString$oldstring")+$_.Extension)"
                }

            }else{
                # 先將符合條件的檔案，將結尾(副檔名前)添加.waitAsecond，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.BaseName

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    $OK = $NewNameList.Add($NowName+$InputString+$Filename_Extension)

                    $_ | Rename-Item -NewName $NowName$waitasec$Filename_Extension
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object{
                    $NowName = $_.BaseName
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace(".waitAsecond", $InputString) + $_.Extension)"
                }
            }
        }


        # 重做功能
        # TempNameList用來維持順序，極重要
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # 將新list加上waitAsecond.(加在前面以防順序亂掉)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # 將加上.waitAsecond的檔案改回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }
      
    }
    # 4.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '4.info'){
        cls
        write-host(
            "==================<項目4>====================`n`n" +`
            "(i) 輸入[副檔名名稱]、[篩選字串]、[新名稱]、[數字]、[數字位置]`n`n" +`
            "(i) [數字位置]為數字代號，再選擇時有提示`n`n" +`
            "(i) [數字]的數字為遞增數字，即下一個符合條件的檔案其新名稱數字會+1`n`n" +`
            "(i) 範例: .txt -> file -> newname -> 30 -> (選擇接在新名稱後) `n`n" +`
            "                =====> file.txt -> newname30.txt，且下一個符合條件的檔案將改為 newname31.txt`n`n" +`
            "=============================================
            ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目4 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 4){
        
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        write-host("(i) 請盡量輸入完整以防更動到非目標檔案")

        # 輸入副檔名####################################################
        $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." `
        -or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer}  | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) 不可為空`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) 請以.開頭`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) 沒有該副檔名的檔案`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer}  | Measure-Object).Count -eq 0){
                write-host "(!) 沒有該副檔名的檔案`n"
            }

            # 若副檔名錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 將副檔名一律變為小寫
        $Filename_Extension = $Filename_Extension.ToLower()

        # 輸入篩選字串####################################################
        $oldstring = Read-Host '(>) 輸入篩選字串'
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | where-object {! $_.PSIsContainer}).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($oldstring -eq ""){
                write-host("(!) 不可為空`n")
            }elseif((get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
            | where-object {! $_.PSIsContainer}).Count -eq 0){
                write-host("(!) 沒有符合條件的檔案`n")
            }

            # 若篩選字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $oldstring = Read-Host '(>) 輸入篩選字串'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的檔案共有" + (get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | where-object {! $_.PSIsContainer}).Count + "項`n")

        # 在項目3，新字串不可為空####################################################
        $newstring = Read-Host '(>) 輸入檔案的新名稱'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]' -or $newstring -eq ""){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($newstring -eq ""){
                Write-Host "(!) 不可為空`n"
            }

            # 若新字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $newstring = Read-Host '(>) 輸入檔案的新名稱'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # count必須為整數且大於等於0 ####################################################
        $count = Read-Host '(>) 輸入數字的起始值'
        while($count -notmatch "^\d+$"){
            write-host "(!) 請輸入數字`n"

            # 若數字錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $count = Read-Host '(>) 輸入數字的起始值'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 選擇數字要放的位置
        $WhereConnect = 1
        $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.檔案名稱後(副檔名前) 2.檔案名稱前)")

        # ####################################################

        # 篩選出的檔案要照此規則排列，以維持檔案的順序
        $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # 先將符合條件的檔案，其副檔名改為.waitAsecond，以避免重名問題
        Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | where-object {! $_.PSIsContainer} | sort $ToNatural | Rename-Item -NewName{
            $OK = $OldNameList.Add($_.Name)
            [System.IO.Path]::ChangeExtension($_.Name, '.waitAsecond')
        }
        # 再將剛剛那一堆檔案改為應更改的樣子
        if($WhereConnect -eq 2){
            Get-ChildItem *.waitAsecond | Where-Object {$_.BaseName -clike "*$oldstring*"} `
            | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                $OK = $NewNameList.Add(([string]$count)+$newstring+$Filename_Extension)
                Rename-Item $_ -NewName $count$newstring$Filename_Extension
                $count++
            }
        }else{
            Get-ChildItem *.waitAsecond | Where-Object {$_.BaseName -clike "*$oldstring*"} `
            | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                $OK = $NewNameList.Add($newstring+$count+$Filename_Extension)
                Rename-Item $_ -NewName $newstring$count$Filename_Extension
                $count++
            }
        }

        write-host("(i) 若無轉換，請對資料夾按F5來重新整理")

        # 重做功能
        # TempNameList用來維持順序，極重要
        # write-host($OldNameList)
        # write-host($NewNameList)
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # 將新list加上waitAsecond.(加在前面以防順序亂掉)(不加在前面也沒差?)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # 將加上.waitAsecond的檔案改回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

        write-host("(i) 若無轉換，請對資料夾按F5來重新整理")

        # ############################
        <#try{
            Get-ChildItem *$Filename_Extension | Where-Object {$_.Name -clike "*$oldstring*"} | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                Rename-Item $_ -NewName $newstring$count$Filename_Extension
                $count++
            }
        }
        catch{
            Get-ChildItem *$Filename_Extension -Filter *$oldstring* | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                Rename-Item $_ -NewName $newstring$count$Filename_Extension
                $count++
            }
        }
        #> 
        # ############################

    }
    # 5.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '5.info'){
        cls
        write-host(
            "==================<項目5>====================`n`n" +`
            "(i) 輸入[篩選字串]、[新副檔名名稱]`n`n" +`
            "(i) 範例: noExtension -> .txt =====> file_noExtension -> file_noExtension.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目5 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 5){
        
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 輸入篩選字串####################################################
        $oldstring = Read-Host '(>) 輸入篩選字串'
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (Get-ChildItem | Where-Object {$_.BaseName -clike "*$oldstring*"} | Where-Object Extension -eq '' | where-object {! $_.PSIsContainer}).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($oldstring -eq ""){
                write-host("(!) 不可為空`n")
            }elseif((Get-ChildItem | Where-Object {$_.BaseName -clike "*$oldstring*"} | Where-Object Extension -eq '' `
            | where-object {! $_.PSIsContainer}).Count -eq 0){
                write-host("(!) 沒有符合條件的檔案`n")
            }

            # 若錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $oldstring = Read-Host '(>) 輸入篩選字串'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的檔案共有" + (Get-ChildItem | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | Where-Object Extension -eq '' | where-object {! $_.PSIsContainer}).Count + "項`n")
        
        # 輸入欲接上的副檔名####################################################
        $New_Filename_Extension = Read-Host '(>) 輸入欲接上的副檔名'
        while($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $New_Filename_Extension -eq "" -Or $New_Filename_Extension.Substring(0, 1) -ne '.' `
        -or $New_Filename_Extension -eq ".." -or $New_Filename_Extension -eq '.'){
            if($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($New_Filename_Extension -eq ""){
                write-host("(!) 不可為空`n")
            }elseif($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host("(!) 請以.開頭`n")
            }elseif($New_Filename_Extension -eq '.' -or $New_Filename_Extension -eq ".."){
                write-host("(!) 請輸入正確的副檔名`n")
            }

            # 若錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $New_Filename_Extension = Read-Host '(>) 輸入欲接上的副檔名'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # 將副檔名一律變為小寫
        $New_Filename_Extension = $New_Filename_Extension.ToLower()

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        # ####################################################
        Get-ChildItem | Where-Object {$_.BaseName -clike "*$oldstring*"} | Where-Object Extension -eq '' `
        | where-object {! $_.PSIsContainer} | ForEach{ 
            $OK = $OldNameList.Add($_.Name)
            $OK = $NewNameList.Add("$($_.BaseName+$New_Filename_Extension)")
            $_ | Rename-Item -NewName "$($_.BaseName+$New_Filename_Extension)" 
        }

        # 重做功能
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                #將新list變回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

    }
    # 6.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '6.info'){
        cls
        write-host(
            "==================<項目6>====================`n`n" +`
            "(i) 輸入[欲更改副檔名名稱]、[正規表示式]、[新副檔名名稱]`n`n" +`
            "(i) 範例: .txt -> file\d+ -> .png =====> file1.txt -> file1.png`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目6 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 6){

        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }        

        # 輸入舊的副檔名####################################################
        # 判斷若非.開頭、或沒有該副檔名，則錯誤
	    $Old_Filename_Extension = Read-Host '(>) 輸入欲修改附檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        while($Old_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -Or $Old_Filename_Extension -eq "" -Or $Old_Filename_Extension.Substring(0, 1) -ne '.' `
        -Or $Old_Filename_Extension -eq ".." `
        -or (get-childitem *$Old_Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0)
        {
            if($Old_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($Old_Filename_Extension -eq ""){
                write-host "(!) 不可為空`n"
            }elseif($Old_Filename_Extension -ne "" -and $Old_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) 請以.開頭`n"
            }elseif($Old_Filename_Extension -eq ".."){
                write-host "(!) 沒有該副檔名的檔案`n"
            }elseif((get-childitem *$Old_Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) 沒有該副檔名的檔案`n"
            }

            # 若副檔名錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $Old_Filename_Extension = Read-Host '(>) 輸入欲修改附檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 輸入正規表示式 ####################################################
        $regex = read-host("(>) 輸入正規表示式")
        while(1){
            $errorType = 1
            try{
                $OK = "I" -match $regex
                if((Get-ChildItem *$Old_Filename_Extension | Where-Object {$_.BaseName -match $regex} `
                    | where-object {! $_.PSIsContainer}).Count -eq 0){
                    $errorType = 2
                    throw("ya")
                }
                break
            }catch{
                if($errorType -eq 2){
                    write-host("(!) 沒有符合該表示式的檔案`n")
                }else{
                    write-host("(!) 錯誤的正規表示式`n")
                }   
            }
            # 若表示式錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面不是exit則繼續輸入
            $regex = read-host("(>) 輸入正規表示式")
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的檔案共有" + (get-childitem *$Old_Filename_Extension `
        | Where-Object {$_.BaseName -match $regex} | where-object {! $_.PSIsContainer} ).Count + "項`n")

        # 輸入新的副檔名####################################################
        # 若輸入""或"."則改為無副檔名
        write-host("(i) 不輸入或者只輸入.，可將符合條件的副檔名改為無副檔名")
	    $New_Filename_Extension = Read-Host '(>) 輸入新副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        while($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or ($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.')){
            if($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) 請以.開頭`n"
            }

            # 若副檔名錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $New_Filename_Extension = Read-Host '(>) 輸入新副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'

        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 將附檔名一律變為小寫
        $New_Filename_Extension = $New_Filename_Extension.ToLower()

        # ####################################################

        # 建立重作list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # 將舊副檔名改為新副檔名
	    Get-ChildItem *$Old_Filename_Extension | Where-Object {$_.BaseName -match $regex} `
        | where-object {! $_.PSIsContainer} | Rename-Item -NewName {
            # 舊list為更改前的名字
            $OK = $OldNameList.Add($_.Name)
            # 新list為更改後的名字
            $OK = $NewNameList.Add($_.BaseName + $New_Filename_Extension)
	      [System.IO.Path]::ChangeExtension($_.Name, $New_Filename_Extension)
        }
        
        # 重做功能
        # write-host($OldNameList)
        # write-host($NewNameList)
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                #將新list變回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }
    }
    # 7.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '7.info'){
        cls
        write-host(
            "==================<項目7>====================`n`n" +`
            "(i) 輸入[副檔名名稱]、[正規表示式]、[選擇字串或數字]、[輸入字串或數字]、[銜接位置]`n`n" +`
            "(i) [選擇字串或數字]、[銜接位置]為數字代號，再選擇時皆有提示`n`n" +`
            "(i) [輸入字串或數字]的數字為遞增數字，即下一個符合條件的檔案其銜接的數字會+1`n`n" +`
            "(i) 範例: .txt -> file\d+ -> (選擇延伸的是字串) -> _add -> (接在檔案名稱後面) `n`n" +`
            "                   ======> file1.txt -> file1_add.txt`n`n" +`
            "(i) 範例: .txt -> file. -> (選擇延伸的是數字) -> 1 -> (接在檔案名稱前面) `n`n" +`
            "                   =====> fileA.txt -> 1fileA.txt 且 fileB.txt -> 2fileB.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目7 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 7){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # 輸入副檔名####################################################
        $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." `
        -Or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) 不可為空`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) 請以.開頭`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) 沒有該副檔名的檔案`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) 沒有該副檔名的檔案`n"
            }

            # 若副檔名錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'

        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # 輸入正規表示式 ####################################################
        $regex = read-host("(>) 輸入正規表示式")
        while(1){
            $errorType = 1
            try{
                $OK = "I" -match $regex
                if((Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} `
                    | where-object {! $_.PSIsContainer} ).count -eq 0){
                    $errorType = 2
                    throw("ya")
                }
                break
            }catch{
                if($errorType -eq 2){
                    write-host("(!) 沒有符合該表示式的檔案`n")
                }else{
                    write-host("(!) 錯誤的正規表示式`n")
                }   
            }
            # 若表示式錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面不是exit則繼續輸入
            $regex = read-host("(>) 輸入正規表示式")
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的檔案共有" + `
        (Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} `
            | where-object {! $_.PSIsContainer}).Count + "項`n")
        
        # 選擇要延伸的是字串還是數字 ####################################################
        $StoreNumOrString = 1
        $StoreNumOrString = read-host("(>) 請選擇要銜接的項目 (1.字串 2.數字)")

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # 選擇延伸的是數字
        if($StoreNumOrString -eq 2){
            $count = read-host("(>) 請輸入起始數字")
            while($count -notmatch "^\d+$"){
                write-host "(!) 請輸入數字`n"

                # 若數字錯誤，則給予離開的機會
                $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # 若上面沒輸入exit則繼續
                $count = Read-Host '(>) 輸入數字的起始值'
            }

            # 若在上面輸入exit，則在這裡發揮跳出項目的作用
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # 選擇要銜接的位置
            $WhereConnect = 1
            $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.檔案名稱後(副檔名前) 2.檔案名稱前)")

            # 篩選出的檔案要照此規則排列，以維持檔案的順序
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # 先將符合條件的檔案，將開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} | where-object {! $_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name
                    $OK = $OldNameList.Add($NowName)
                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $OK = $NewNameList.Add("$($_.BaseName.Replace("waitAsecond.", $count) + $_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("waitAsecond.", $count) + $_.Extension)"
                    $count++
                }

            }else{
                # 先將符合條件的檔案，將結尾(副檔名前)添加.waitAsecond，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} | where-object {! $_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.BaseName
                    $OK = $OldNameList.Add($_.Name)
                    $_ | Rename-Item -NewName $NowName$waitasec$Filename_Extension
                }
                Get-ChildItem *.waitAsecond*  | where-object {! $_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $OK = $NewNameList.Add("$($_.BaseName.Replace(".waitAsecond", $count) + $_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace(".waitAsecond", $count) + $_.Extension)"
                    $count++
                }
            }
        
        }
        # 選擇延伸的是字串
        else{
            $InputString = read-host("(>) 請輸入字串")

            while($InputString -match '[\*\\\/\:\?\|\<\>\"]' -or $InputString -eq ""){
                if($InputString -match '[\*\\\/\:\?\|\<\>\"]'){
                    write-host "(!) 含有非法字元`n"
                }elseif($InputString -eq ""){
                    write-host("(!) 不可為空`n")
                }

                # 若字串錯誤，則給予離開的機會
                $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # 若上面沒輸入exit則繼續
                $InputString = read-host("(>) 請輸入字串")
            }

            # 若在上面輸入exit，則在這裡發揮跳出項目的作用
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # 選擇要銜接的位置
            $WhereConnect = 1
            $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.檔案名稱後(副檔名前) 2.檔案名稱前)")

            # 篩選出的檔案要照此規則排列，以維持檔案的順序
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # 先將符合條件的檔案，將開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} | where-object {! $_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name
                    # 放棄更改用list
                    $OK = $OldNameList.Add($NowName)
                    $OK = $NewNameList.Add($InputString+$NowName)
                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | where-object {! $_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("waitAsecond.", $InputString) + $_.Extension)"
                }

            }else{
                # 先將符合條件的檔案，將結尾(副檔名前)添加.waitAsecond，以避免重名問題
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} | where-object {! $_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.BaseName
                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    $OK = $NewNameList.Add($NowName+$InputString+$Filename_Extension)
                    $_ | Rename-Item -NewName $NowName$waitasec$Filename_Extension
                }
                Get-ChildItem *.waitAsecond* | where-object {! $_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $NowName = $_.BaseName
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace(".waitAsecond", $InputString) + $_.Extension)"
                }
            }
        }

        # 重做功能
        # TempNameList用來維持順序，極重要
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # 將新list加上waitAsecond.(加在前面以防順序亂掉)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # 將加上.waitAsecond的檔案改回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

    }
    # 8.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '8.info'){
        cls
        write-host(
            "==================<項目8>====================`n`n" +`
            "(i) 輸入[副檔名名稱]、[正規表示式]、[新名稱]、[數字]、[數字位置]`n`n" +`
            "(i) [數字位置]為數字代號，再選擇時有提示`n`n" +`
            "(i) [數字]的數字為遞增數字，即下一個符合條件的檔案其新名稱數字會+1`n`n" +`
            "(i) 範例: .txt -> file\d+ -> newname -> 30 -> (接在新名稱後) `n`n" +`
            "            =====> file1.txt -> newname30.txt，且下一個符合條件的檔案將改為 newname31.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目8 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 8){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # 輸入副檔名####################################################
        $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." `
        -Or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) 不可為空`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) 請以.開頭`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) 沒有該副檔名的檔案`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) 沒有該副檔名的檔案`n"
            }

            # 若副檔名錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $Filename_Extension = Read-Host '(>) 輸入指定副檔名名稱 (沒有大小寫之分、需加點、範例:.png)'

        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 輸入正規表示式 ####################################################
        $regex = read-host("(>) 輸入正規表示式")
        while(1){
            $errorType = 1
            try{
                $OK = "I" -match $regex
                if((Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} `
                | where-object {! $_.PSIsContainer} ).count -eq 0){
                    $errorType = 2
                    throw("ya")
                }
                break
            }catch{
                if($errorType -eq 2){
                    write-host("(!) 沒有符合該表示式的檔案`n")
                }else{
                    write-host("(!) 錯誤的正規表示式`n")
                }   
            }
            # 若表示式錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面不是exit則繼續輸入
            $regex = read-host("(>) 輸入正規表示式")
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的檔案共有" + `
        (Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} `
        | where-object {! $_.PSIsContainer}).Count + "項`n")

        # 輸入新字串 ####################################################
        $newstring = Read-Host '(>) 輸入檔案的新名稱'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]' -or $newstring -eq ""){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($newstring -eq ""){
                Write-Host "(!) 不可為空`n"
            }

            # 若新字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $newstring = Read-Host '(>) 輸入檔案的新名稱'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 輸入起始數字 ####################################################
        $count = read-host("(>) 請輸入起始數字")
        while($count -notmatch "^\d+$"){
            write-host "(!) 請輸入數字`n"

            # 若數字錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $count = Read-Host '(>) 輸入數字的起始值'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 選擇要銜接的位置 ####################################################
        $WhereConnect = 1
        $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.檔案名稱後(副檔名前) 2.檔案名稱前)")

        # 篩選出的檔案要照此規則排列，以維持檔案的順序
        $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        
        # 先將符合條件的檔案，其副檔名改為.waitAsecond，以避免重名問題
        Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} `
        | where-object {! $_.PSIsContainer} | sort $ToNatural | Rename-Item -NewName{
            $OK = $OldNameList.Add($_.Name)
            [System.IO.Path]::ChangeExtension($_.Name, '.waitAsecond')
        }
        # 再將剛剛那一堆檔案改為應更改的樣子
        if($WhereConnect -eq 2){
            Get-ChildItem *.waitAsecond | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                $OK = $NewNameList.Add(([string]$count)+$newstring+$Filename_Extension)
                Rename-Item $_ -NewName $count$newstring$Filename_Extension
                $count++
            }
        }else{
            Get-ChildItem *.waitAsecond | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                $OK = $NewNameList.Add($newstring+$count+$Filename_Extension)
                Rename-Item $_ -NewName $newstring$count$Filename_Extension
                $count++
            }
        }

        write-host("(i) 若無轉換，請對資料夾按F5來重新整理")

        # 重做功能
        # TempNameList用來維持順序，極重要
        # write-host($OldNameList)
        # write-host("")
        # write-host($NewNameList)
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # 將新list加上waitAsecond.(加在前面以防順序亂掉)(不加在前面也沒差?)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # 將加上.waitAsecond的檔案改回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

        write-host("(i) 若無轉換，請對資料夾按F5來重新整理")

    }
    # 9.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '9.info'){
        cls
        write-host(
            "==================<項目9>====================`n`n" +`
            "(i) 輸入[正規表示式]、[新副檔名名稱]`n`n" +`
            "(i) 範例: file\d_noExtension -> .txt =====> file3_noExtension -> file3_noExtension.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目9 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 9){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 輸入正規表示式 ####################################################
        $regex = read-host("(>) 輸入正規表示式")
        while(1){
            $errorType = 1
            try{
                $OK = "I" -match $regex
                if((Get-ChildItem | Where-Object {$_.BaseName -match $regex} | Where-Object Extension -eq ''`
                    | where-object {! $_.PSIsContainer}).Count -eq 0){
                    $errorType = 2
                    throw("ya")
                }
                break
            }catch{
                if($errorType -eq 2){
                    write-host("(!) 沒有符合該表示式的檔案`n")
                }else{
                    write-host("(!) 錯誤的正規表示式`n")
                }   
            }
            # 若表示式錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面不是exit則繼續輸入
            $regex = read-host("(>) 輸入正規表示式")
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的檔案共有" + `
        (Get-ChildItem | Where-Object {$_.BaseName -match $regex} | Where-Object Extension -eq ''`
        | where-object {! $_.PSIsContainer}).Count + "項`n")

        # 輸入欲接上的副檔名####################################################
        $New_Filename_Extension = Read-Host '(>) 輸入欲接上的副檔名'
        while($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $New_Filename_Extension -eq "" -Or $New_Filename_Extension.Substring(0, 1) -ne '.' `
        -or $New_Filename_Extension -eq ".." -or $New_Filename_Extension -eq '.'){
            if($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($New_Filename_Extension -eq ""){
                write-host("(!) 不可為空`n")
            }elseif($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host("(!) 請以.開頭`n")
            }elseif($New_Filename_Extension -eq '.' -or $New_Filename_Extension -eq ".."){
                write-host("(!) 請輸入正確的副檔名`n")
            }

            # 若錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $New_Filename_Extension = Read-Host '(>) 輸入欲接上的副檔名'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # 將副檔名一律變為小寫
        $New_Filename_Extension = $New_Filename_Extension.ToLower()

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # ####################################################
        Get-ChildItem | Where-Object {$_.BaseName -match $regex} | Where-Object Extension -eq ''`
        | where-object {! $_.PSIsContainer} | ForEach{ 
            $OK = $OldNameList.Add($_.Name)
            $OK = $NewNameList.Add("$($_.BaseName+$New_Filename_Extension)")
            $_ | Rename-Item -NewName "$($_.BaseName+$New_Filename_Extension)" 
        }

        # 重做功能
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                #將新list變回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

    }
    # 10.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '10.info'){
        cls
        write-host(
            "==================<項目10>====================`n`n" +`
            "(i) 建立復原資料夾，若檔案名稱與資料夾名稱被修改的無法還原時，可使用項目10來更改回原本的名稱`n`n" +`
            "(i) 建立的復原資料夾檔名為 " + (Split-Path -leaf $PSCommandpath) + "_recovery_(現在時間)`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目10 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 10){

        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $goBackOrNot = ""
            $Option = -1
            cls
            continue
        }

        # 該ps1檔的名字，不需要進入復原資料夾
        $this_files_name = Split-Path -leaf $PSCommandpath

        # 建立復原資料夾名稱，並以時間決定資料夾名稱
        sleep(1)
        $NOW = $this_files_name + "_recovery_" + (Get-Date -UFormat "%Y-%m-%d-%Hh%Mm%Ss")
        $restore_file = new-item $NOW -itemtype directory

        # 建立復原資料夾，排除掉復原資料夾本身及該ps1檔
        $recovery_file_name = $this_files_name + "_recovery_"
        Get-childItem -path (Get-Location) `
         | Where-Object { !($_.Name -clike "$recovery_file_name*") -And $_.Name -ne $this_files_name}`
         | ForEach-Object{ 
            # 如果是資料夾則遞迴的複製
            if($_.PSIsContainer){
                Copy-Item $_ -Recurse $NOW
            }else{
                Copy-Item $_ -Destination $NOW
            }
        }

        write-host("(i) 建立成功!")
    }
    # 11.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '11.info'){
        cls
        write-host(
            "==================<項目11>====================`n`n" +`
            "(i) 輸入復原資料夾對應號碼，將當前資料夾內容改為該復原資料夾內容`n`n" +`
            "(i) 在復原完成後，若要取消該復原，輸入y`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目11 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 11){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $goBackOrNot = ""
            $Option = -1
            cls
            continue
        }

        write-host("(i) 在下面輸入想藉由哪個資料夾復原，其資料夾對應的號碼")
        write-host("-----------------------------------------------------")

        # 篩選出復原資料夾
        $this_files_name = Split-Path -leaf $PSCommandpath
        $recovery_file_name = $this_files_name + "_recovery_"
        $count = 1
        $nameList = [System.Collections.ArrayList]@()
        Get-ChildItem | Where-Object {$_.Name -clike "$recovery_file_name*"} | ForEach-Object{
            Write-Host( "$count" + " " + "$_" )
            $listID = $nameList.Add($_.Name)
            $count++
        }
        write-host("-----------------------------------------------------")

        # 選擇號碼
        $choose = read-host("(>) 請選擇")
        $choose_int = $choose -as [int]

        # $choose輸入錯誤的狀態
        while($choose -notmatch "^\d+$" -or $choose_int -ge $count){
            if($choose -notmatch "^\d+$"){
                write-host("(!) 請輸入數字`n")
            }elseif($choose_int -ge $count){
                write-host("(!) 請輸入正確的號碼`n")
            }

            # 若數字錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $choose = read-host("(>) 請選擇")
            $choose_int = $choose -as [int]
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 建立放棄復原資料夾名稱，並以時間決定資料夾名稱
        sleep(1)
        $this_files_name = Split-Path -leaf $PSCommandpath
        $backbackup_file = $this_files_name + "_recovery_" + (Get-Date -UFormat "%Y-%m-%d-%Hh%Mm%Ss")
        $restore_file = new-item $backbackup_file -itemtype directory

        # 建立放棄復原資料夾
        $recovery_file_name = $this_files_name + "_recovery_"
        Get-childItem -path (Get-Location) `
         | Where-Object { !($_.Name -clike "$recovery_file_name*") -And $_.Name -ne $this_files_name}`
         | ForEach-Object{ 
            # 如果是資料夾則遞迴的複製
            if($_.PSIsContainer){
                Copy-Item $_ -Recurse $backbackup_file
            }else{
                Copy-Item $_ -Destination $backbackup_file
            }
        }

        # 刪除當前資料夾的檔案
        Get-childItem -path (Get-Location) `
         | Where-Object { !($_.Name -clike "$recovery_file_name*") -And $_.Name -ne $this_files_name}`
         | ForEach-Object{ 
            # 如果是資料夾則遞迴的複製
            if($_.PSIsContainer){
                Remove-Item $_ -Recurse
            }else{
                Remove-Item $_
            }
        }

        # 執行復原
        Get-ChildItem -path $nameList[$choose_int - 1] | ForEach-Object{
            # 如果是資料夾則遞迴的複製
            if($_.PSIsContainer){
                Copy-Item $_.FullName -Recurse (Get-Location)
            }else{
                Copy-Item $_.FullName -Destination (Get-Location)
            }
        }

        sleep(2)
        # 若反悔，復原完成前狀態
        $iAmRegret = Read-Host("`n(>) 完成，請按Enter，若要放棄復原，回到復原完成前狀態請按y")
        if($iAmRegret -eq "y"){
            # 刪掉完成後的資料
            Get-childItem -path (Get-Location) `
             | Where-Object { !($_.Name -clike "$recovery_file_name*") -And $_.Name -ne $this_files_name}`
             | ForEach-Object{
                # 如果是資料夾則遞迴的複製
                if($_.PSIsContainer){
                    Remove-Item $_ -Recurse
                }else{
                    Remove-Item $_
                }
            }

            Get-ChildItem  $backbackup_file | ForEach-Object{
                # 如果是資料夾則遞迴的複製
                if($_.PSIsContainer){
                    Copy-Item $_.FullName -Recurse (Get-Location)
                }else{
                    Copy-Item $_.FullName -Destination (Get-Location)
                }
            }
        }

        # 刪掉後悔資料夾
        Remove-Item $backbackup_file -Recurse
        sleep(1)
    }
    # 12.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '12.info'){
        cls
        write-host(
            "==================<項目12>====================`n`n" +`
            "(i) 輸入[欲修改字串]、[新字串]`n`n" +`
            "(i) 範例: A -> B =====> folderA -> folderB`n`n" +`
            "(i) 若[新字串]不輸入，則相當於將[欲修改字串]刪除`n`n" +`
            "=============================================
            ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目12 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 12){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # 舊字串不可為空####################################################
        $oldstring = Read-Host "(>) 輸入欲修改字串"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" -or (get-childitem  | where-object {$_.PSIsContainer} `
        | Where-Object {$_.Name -clike "*$oldstring*"}).Count -eq 0)
        {
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($oldstring -eq ""){
                write-host("(!) 不可為空`n")
            }elseif((get-childitem | where-object {$_.PSIsContainer} `
            | Where-Object {$_.Name -clike "*$oldstring*"}).Count -eq 0){
                write-host("(!) 沒有符合條件的資料夾`n")
            }

            # 若欲修改字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $oldstring = Read-Host '(>) 輸入欲修改字串'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的資料夾共有" + (get-childitem | where-object {$_.PSIsContainer} |`
         Where-Object {$_.Name -clike "*$oldstring*"}).Count + "項`n")

        # 新字串可為空，若空則等同刪掉舊字串####################################################

        write-host("(i) 若不輸入，則刪除欲修改字串")
        $newstring = Read-Host '(>) 輸入新字串'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }

            # 若新字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $newstring = Read-Host '(>) 輸入新字串'
        }
        
        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ####################################################

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        # 只將BaseName部分做修改，不動到副檔名(因為副檔名也有可能符合篩選條件)
        Get-ChildItem | where-object {$_.PSIsContainer} `
        | Where-Object {$_.Name -clike "*$oldstring*"} | ForEach-Object{
            # 放棄更改用
            $OK = $OldNameList.Add($_.Name)
            $OK = $NewNameList.Add($_.Name.Replace($oldstring, $newstring))

            $waitasec = "waitAsecond"
            # 因為windows系統不會區分大小寫
            $_  | Rename-Item -NewName $_.Name.Replace($oldstring, $waitasec)
        }
        Get-ChildItem "*waitAsecond*" | where-object {$_.PSIsContainer} `
        | ForEach-Object{
            # 因為windows系統不會區分大小寫
            $_  | Rename-Item -NewName $_.Name.Replace("waitAsecond", $newstring)
        }

        # ######################### 不重整了，直接叫使用者重新整理
        if($oldstring.ToLower() -eq $newstring.ToLower()){
            write-host("(i) 若無轉換，請對資料夾按F5來重新整理")
        }
        # #########################

        # 重做功能
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond"
            get-item $NewNameList | ForEach-Object{
                # 將新list變回舊list
                $_  | Rename-Item -NewName $_.Name.Replace($newstring, $waitasec)
                $OK = $TempNameList.Add($_.Name.Replace($newstring, $waitasec))
            }
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # 將加上.waitAsecond的檔案改回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

        # ######################### 如果重做且只差大小寫，再次重整
        if($oldstring.ToLower() -eq $newstring.ToLower() -and $forgive -eq "y"){
            write-host("(i) 若無轉換，請對資料夾按F5來重新整理")
        }
        # #########################
    }
    # 13.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '13.info'){
        cls
        write-host(
            "==================<項目13>====================`n`n"  +`
            "(i) 輸入[篩選字串]、[選擇字串或數字]、[輸入字串或數字]、[銜接位置]`n`n" +`
            "(i) [選擇字串或數字]、[銜接位置]為數字代號，再選擇時皆有提示`n`n" +`
            "(i) [輸入字串或數字]的數字為遞增數字，即下一個符合條件的檔案其銜接的數字會+1`n`n" +`
            "(i) 範例: folder -> (選擇要銜接的是字串) -> _add -> (選擇接在檔案名稱後面)`n`n" +`
            "                                =====> folder -> folder_add`n`n" +`
            "(i) 範例: folder -> (選擇要銜接的是數字) -> 30 -> (選擇接在檔案名稱前面) `n`n" +`
            "                                =====> folderA -> 30folderA 且 folderB -> 31folderB`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目13 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 13){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 篩選字串不可為空####################################################
        $oldstring = Read-Host "(>) 輸入篩選字串"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} | where-object {$_.PSIsContainer} ).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($oldstring -eq ""){
                write-host("(!) 不可為空`n")
            }elseif((get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} | where-object {$_.PSIsContainer} ).Count -eq 0){
                write-host("(!) 沒有符合條件的資料夾`n")
            }

            # 若欲修改字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $oldstring = Read-Host '(>) 輸入篩選字串'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的資料夾共有" + (get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} `
        | where-object {$_.PSIsContainer} ).Count + "項`n")
        
        # 選擇要延伸的是字串還是數字 #################################################
        $StoreNumOrString = read-host("(>) 請選擇要銜接的項目 (1.字串 2.數字)")
        
        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # 選擇延伸的是數字
        if($StoreNumOrString -eq 2){
            $count = read-host("(>) 請輸入起始數字")
            while($count -notmatch "^\d+$"){
                write-host "(!) 請輸入數字`n"

                # 若數字錯誤，則給予離開的機會
                $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # 若上面沒輸入exit則繼續
                $count = Read-Host '(>) 輸入數字的起始值'
            }

            # 若在上面輸入exit，則在這裡發揮跳出項目的作用
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # 選擇要銜接的位置
            $WhereConnect = 1
            $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.資料夾名稱後 2.資料夾名稱前 3.篩選字串後 4.篩選字串前)")

            # 篩選出的檔案要照此規則排列，以維持檔案的順序
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # 先將符合條件的檔案，將開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name

                    # 放棄更改用list
                    $OK = $OldNameList.Add($NowName)

                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem  $waitasec* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    # newnamelist要放下來，因為count的原因
                    $OK = $NewNameList.Add($_.Name.Replace("waitAsecond.", $count))
                    $_ | Rename-Item -NewName $_.Name.Replace("waitAsecond.", $count)
                    $count++
                }

            }elseif($WhereConnect -eq 3){
                # 先將符合條件的檔案，將篩選字串結尾添加.waitAsecond，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)

                    $_ | Rename-Item -NewName $_.Name.Replace($oldstring, "$oldstring$waitasec")
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $waitasec = ".waitAsecond"

                    # newnamelist要放下來，因為count的原因
                    $OK = $NewNameList.Add($_.Name.Replace("$oldstring$waitasec", "$oldstring$count"))
                    $_ | Rename-Item -NewName $_.Name.Replace("$oldstring$waitasec", "$oldstring$count")
                    $count++
                }
                
            }elseif($WhereConnect -eq 4){
                # 先將符合條件的檔案，將篩選字串開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)

                    $_ | Rename-Item -NewName $_.Name.Replace($oldstring, "$waitasec$oldstring")
                }
                Get-ChildItem *waitAsecond.* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $waitasec = "waitAsecond."

                    # newnamelist要放下來，因為count的原因
                    $OK = $NewNameList.Add($_.Name.Replace("$waitasec$oldstring", "$count$oldstring"))
                    $_ | Rename-Item -NewName $_.Name.Replace("$waitasec$oldstring", "$count$oldstring")
                    $count++
                }
            }else{
                # 先將符合條件的檔案，將結尾(副檔名前)添加.waitAsecond，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.Name

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    

                    $_ | Rename-Item -NewName $NowName$waitasec
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {

                    # newnamelist要放下來，因為count的原因
                    $OK = $NewNameList.Add($_.Name.Replace(".waitAsecond", $count))
                    $_ | Rename-Item -NewName $_.Name.Replace(".waitAsecond", $count)
                    $count++
                }
            }
        
        }
        # 選擇延伸的是字串
        else{
            $InputString = read-host("(>) 請輸入字串")

            while($InputString -match '[\*\\\/\:\?\|\<\>\"]' -or $InputString -eq ""){
                if($InputString -match '[\*\\\/\:\?\|\<\>\"]'){
                    write-host "(!) 含有非法字元`n"
                }elseif($InputString -eq ""){
                    write-host("(!) 不可為空`n")
                }

                # 若字串錯誤，則給予離開的機會
                $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # 若上面沒輸入exit則繼續
                $InputString = read-host("(>) 請輸入字串")
            }

            # 若在上面輸入exit，則在這裡發揮跳出項目的作用
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # 選擇要銜接的位置
            $WhereConnect = 1
            $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.資料夾名稱後 2.資料夾名稱前 3.篩選字串後 4.篩選字串前)")

            # 篩選出的檔案要照此規則排列，以維持檔案的順序
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # 先將符合條件的檔案，將開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name

                    # 放棄更改用list
                    $OK = $OldNameList.Add($NowName)
                    $OK = $NewNameList.Add($InputString+$NowName)

                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object{
                    $_ | Rename-Item -NewName $_.Name.Replace("waitAsecond.", $InputString)
                }

            }elseif($WhereConnect -eq 3){
                # 先將符合條件的檔案，將篩選字串結尾添加.waitAsecond，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{ 
                    $waitasec = ".waitAsecond"

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    $OK = $NewNameList.Add($_.Name.Replace("$oldstring", "$oldstring$InputString"))

                    $_ | Rename-Item -NewName $_.Name.Replace($oldstring, "$oldstring$waitasec")
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object{
                    $_ | Rename-Item -NewName $_.Name.Replace("$oldstring$waitasec", "$oldstring$InputString")
                }

            }elseif($WhereConnect -eq 4){
                # 先將符合條件的檔案，將篩選字串開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    $OK = $NewNameList.Add($_.Name.Replace("$oldstring", "$InputString$oldstring"))

                    $_ | Rename-Item -NewName $_.Name.Replace($oldstring, "$waitasec$oldstring")
                }
                Get-ChildItem *waitAsecond.* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $_ | Rename-Item -NewName $_.Name.Replace("$waitasec$oldstring", "$InputString$oldstring")
                }

            }else{
                # 先將符合條件的檔案，將結尾(副檔名前)添加.waitAsecond，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.Name

                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    $OK = $NewNameList.Add($NowName+$InputString)

                    $_ | Rename-Item -NewName $NowName$waitasec
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object{
                    $NowName = $_.Name
                    $_ | Rename-Item -NewName $_.Name.Replace(".waitAsecond", $InputString)
                }
            }
        }


        # 重做功能
        # TempNameList用來維持順序，極重要
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # 將新list加上waitAsecond.(加在前面以防順序亂掉)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # 將加上.waitAsecond的檔案改回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }
      
    }
    # 14.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '14.info'){
        cls
        write-host(
            "==================<項目14>====================`n`n" +`
            "(i) 輸入[篩選字串]、[新名稱]、[數字]、[數字位置]`n`n" +`
            "(i) [數字位置]為數字代號，再選擇時有提示`n`n" +`
            "(i) [數字]的數字為遞增數字，即下一個符合條件的檔案其新名稱數字會+1`n`n" +`
            "(i) 範例: folder -> newname -> 30 -> (選擇接在新名稱後) `n`n" +`
            "                =====> folder -> newname30，且下一個符合條件的檔案將改為 newname31.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目14 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 14){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        write-host("(i) 請盡量輸入完整以防更動到非目標檔案")

        # 輸入篩選字串####################################################
        $oldstring = Read-Host '(>) 輸入篩選字串'
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} `
        | where-object {$_.PSIsContainer}).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($oldstring -eq ""){
                write-host("(!) 不可為空`n")
            }elseif((get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} `
            | where-object {$_.PSIsContainer}).Count -eq 0){
                write-host("(!) 沒有符合條件的資料夾`n")
            }

            # 若篩選字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $oldstring = Read-Host '(>) 輸入篩選字串'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的資料夾共有" + (get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} `
        | where-object {$_.PSIsContainer}).Count + "項`n")

        # 在項目3，新字串不可為空####################################################
        $newstring = Read-Host '(>) 輸入資料夾的新名稱'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]' -or $newstring -eq ""){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($newstring -eq ""){
                Write-Host "(!) 不可為空`n"
            }

            # 若新字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $newstring = Read-Host '(>) 輸入資料夾的新名稱'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # count必須為整數且大於等於0 ####################################################
        $count = Read-Host '(>) 輸入數字的起始值'
        while($count -notmatch "^\d+$"){
            write-host "(!) 請輸入數字`n"

            # 若數字錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $count = Read-Host '(>) 輸入數字的起始值'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 選擇數字要放的位置
        $WhereConnect = 1
        $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.資料夾名稱後 2.資料夾名稱前)")

        # ####################################################

        # 篩選出的檔案要照此規則排列，以維持檔案的順序
        $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # 先將符合條件的檔案，其副檔名改為.waitAsecond，以避免重名問題
        Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
        | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
            $NowName = $_.Name
            $OK = $OldNameList.Add($NowName)
            $waitasec = '.waitAsecond'
            $_ | Rename-Item -NewName $NowName$waitasec
        }
        # 再將剛剛那一堆檔案改為應更改的樣子
        if($WhereConnect -eq 2){
            Get-ChildItem *.waitAsecond | Where-Object {$_.Name -clike "*$oldstring*"} `
            | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                $OK = $NewNameList.Add(([string]$count)+$newstring)
                Rename-Item $_ -NewName $count$newstring
                $count++
            }
        }else{
            Get-ChildItem *.waitAsecond | Where-Object {$_.Name -clike "*$oldstring*"} `
            | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                $OK = $NewNameList.Add($newstring+$count)
                Rename-Item $_ -NewName $newstring$count
                $count++
            }
        }

        write-host("(i) 若無轉換，請對資料夾按F5來重新整理")

        # 重做功能
        # TempNameList用來維持順序，極重要
        # write-host($OldNameList)
        # write-host($NewNameList)
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # 將新list加上waitAsecond.(加在前面以防順序亂掉)(不加在前面也沒差?)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # 將加上.waitAsecond的檔案改回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

        write-host("(i) 若無轉換，請對資料夾按F5來重新整理")

        
    }
    # 15.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '15.info'){
        cls
        write-host(
            "==================<項目15>====================`n`n" +`
            "(i) 輸入[正規表示式]、[選擇字串或數字]、[輸入字串或數字]、[銜接位置]`n`n" +`
            "(i) [選擇字串或數字]、[銜接位置]為數字代號，再選擇時皆有提示`n`n" +`
            "(i) [輸入字串或數字]的數字為遞增數字，即下一個符合條件的檔案其銜接的數字會+1`n`n" +`
            "(i) 範例: folder\d+ -> (選擇延伸的是字串) -> _add -> (接在檔案名稱後面) `n`n" +`
            "                   ======> folder -> folder_add`n`n" +`
            "(i) 範例: folder. -> (選擇延伸的是數字) -> 1 -> (接在檔案名稱前面) `n`n" +`
            "                   =====> folderA-> 1folderA 且 folderB -> 2folderB`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目15 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 15){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 輸入正規表示式 ####################################################
        $regex = read-host("(>) 輸入正規表示式")
        while(1){
            $errorType = 1
            try{
                $OK = "I" -match $regex
                if((Get-ChildItem | Where-Object {$_.Name -match $regex} `
                    | where-object {$_.PSIsContainer} ).count -eq 0){
                    $errorType = 2
                    throw("ya")
                }
                break
            }catch{
                if($errorType -eq 2){
                    write-host("(!) 沒有符合該表示式的資料夾`n")
                }else{
                    write-host("(!) 錯誤的正規表示式`n")
                }   
            }
            # 若表示式錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面不是exit則繼續輸入
            $regex = read-host("(>) 輸入正規表示式")
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的資料夾共有" + `
        (Get-ChildItem | Where-Object {$_.Name -match $regex} `
            | where-object {$_.PSIsContainer}).Count + "項`n")
        
        # 選擇要延伸的是字串還是數字 ####################################################
        $StoreNumOrString = 1
        $StoreNumOrString = read-host("(>) 請選擇要銜接的項目 (1.字串 2.數字)")

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # 選擇延伸的是數字
        if($StoreNumOrString -eq 2){
            $count = read-host("(>) 請輸入起始數字")
            while($count -notmatch "^\d+$"){
                write-host "(!) 請輸入數字`n"

                # 若數字錯誤，則給予離開的機會
                $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # 若上面沒輸入exit則繼續
                $count = Read-Host '(>) 輸入數字的起始值'
            }

            # 若在上面輸入exit，則在這裡發揮跳出項目的作用
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # 選擇要銜接的位置
            $WhereConnect = 1
            $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.資料夾名稱後 2.資料夾名稱前)")

            # 篩選出的檔案要照此規則排列，以維持檔案的順序
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # 先將符合條件的檔案，將開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -match $regex} | where-object {$_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name
                    $OK = $OldNameList.Add($NowName)
                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | where-object {$_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $OK = $NewNameList.Add($_.Name.Replace("waitAsecond.", $count))
                    $_ | Rename-Item -NewName $_.Name.Replace("waitAsecond.", $count)
                    $count++
                }

            }else{
                # 先將符合條件的檔案，將結尾(副檔名前)添加.waitAsecond，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -match $regex} | where-object {$_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.Name
                    $OK = $OldNameList.Add($_.Name)
                    $_ | Rename-Item -NewName $NowName$waitasec
                }
                Get-ChildItem *.waitAsecond*  | where-object {$_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $OK = $NewNameList.Add($_.Name.Replace(".waitAsecond", $count))
                    $_ | Rename-Item -NewName $_.Name.Replace(".waitAsecond", $count)
                    $count++
                }
            }
        
        }
        # 選擇延伸的是字串
        else{
            $InputString = read-host("(>) 請輸入字串")

            while($InputString -match '[\*\\\/\:\?\|\<\>\"]' -or $InputString -eq ""){
                if($InputString -match '[\*\\\/\:\?\|\<\>\"]'){
                    write-host "(!) 含有非法字元`n"
                }elseif($InputString -eq ""){
                    write-host("(!) 不可為空`n")
                }

                # 若字串錯誤，則給予離開的機會
                $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # 若上面沒輸入exit則繼續
                $InputString = read-host("(>) 請輸入字串")
            }

            # 若在上面輸入exit，則在這裡發揮跳出項目的作用
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # 選擇要銜接的位置
            $WhereConnect = 1
            $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.資料夾名稱後(副檔名前) 2.資料夾名稱前)")

            # 篩選出的檔案要照此規則排列，以維持檔案的順序
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # 先將符合條件的檔案，將開頭添加waitAsecond.，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -match $regex} | where-object {$_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name
                    # 放棄更改用list
                    $OK = $OldNameList.Add($NowName)
                    $OK = $NewNameList.Add($InputString+$NowName)
                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | where-object {$_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $_ | Rename-Item -NewName $_.Name.Replace("waitAsecond.", $InputString)
                }

            }else{
                # 先將符合條件的檔案，將結尾(副檔名前)添加.waitAsecond，以避免重名問題
                Get-ChildItem | Where-Object {$_.Name -match $regex} | where-object {$_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.Name
                    # 放棄更改用list
                    $OK = $OldNameList.Add($_.Name)
                    $OK = $NewNameList.Add($NowName+$InputString)
                    $_ | Rename-Item -NewName $NowName$waitasec
                }
                Get-ChildItem *.waitAsecond* | where-object {$_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $NowName = $_.Name
                    $_ | Rename-Item -NewName $_.Name.Replace(".waitAsecond", $InputString)
                }
            }
        }

        # 重做功能
        # TempNameList用來維持順序，極重要
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # 將新list加上waitAsecond.(加在前面以防順序亂掉)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # 將加上.waitAsecond的檔案改回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

    }
    # 16.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '16.info'){
        cls
        write-host(
            "==================<項目16>====================`n`n" +`
            "(i) 輸入[正規表示式]、[新名稱]、[數字]、[數字位置]`n`n" +`
            "(i) [數字位置]為數字代號，再選擇時有提示`n`n" +`
            "(i) [數字]的數字為遞增數字，即下一個符合條件的檔案其新名稱數字會+1`n`n" +`
            "(i) 範例: folder\d+ -> newname -> 30 -> (接在新名稱後) `n`n" +`
            "            =====> folder1 -> newname30，且下一個符合條件的檔案將改為 newname31`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # 項目16 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 16){
        # 選錯決定項目可跳回
        $goBackOrNot = Read-Host("`n(>) 選擇項目" + $Option + "，請按 Enter 繼續，若要返回請輸入 exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 輸入正規表示式 ####################################################
        $regex = read-host("(>) 輸入正規表示式")
        while(1){
            $errorType = 1
            try{
                $OK = "I" -match $regex
                if((Get-ChildItem | Where-Object {$_.Name -match $regex} `
                | where-object {$_.PSIsContainer} ).count -eq 0){
                    $errorType = 2
                    throw("ya")
                }
                break
            }catch{
                if($errorType -eq 2){
                    write-host("(!) 沒有符合該表示式的檔案`n")
                }else{
                    write-host("(!) 錯誤的正規表示式`n")
                }   
            }
            # 若表示式錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面不是exit則繼續輸入
            $regex = read-host("(>) 輸入正規表示式")
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 告知符合條件的檔案個數
        write-host("(i) 符合條件的資料夾共有" + `
        (Get-ChildItem | Where-Object {$_.Name -match $regex} `
        | where-object {$_.PSIsContainer}).Count + "項`n")

        # 輸入新字串 ####################################################
        $newstring = Read-Host '(>) 輸入資料夾的新名稱'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]' -or $newstring -eq ""){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) 含有非法字元`n"
            }elseif($newstring -eq ""){
                Write-Host "(!) 不可為空`n"
            }

            # 若新字串錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $newstring = Read-Host '(>) 輸入資料夾的新名稱'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 輸入起始數字 ####################################################
        $count = read-host("(>) 請輸入起始數字")
        while($count -notmatch "^\d+$"){
            write-host "(!) 請輸入數字`n"

            # 若數字錯誤，則給予離開的機會
            $goBackOrNot = Read-Host("(>) 按 Enter 繼續，若要返回選擇項目，請輸入 exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # 若上面沒輸入exit則繼續
            $count = Read-Host '(>) 輸入數字的起始值'
        }

        # 若在上面輸入exit，則在這裡發揮跳出項目的作用
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # 選擇要銜接的位置 ####################################################
        $WhereConnect = 1
        $WhereConnect = read-host("(>) 請選擇要銜接的位置 (1.資料夾名稱後 2.檔案名稱前)")

        # 篩選出的檔案要照此規則排列，以維持檔案的順序
        $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

        # 建立放棄更改list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        
        # 先將符合條件的檔案，其副檔名改為.waitAsecond，以避免重名問題
        Get-ChildItem | Where-Object {$_.Name -match $regex} `
        | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
            $NowName = $_.Name
            $OK = $OldNameList.Add($_.Name)
            $waitasec = '.waitAsecond'
            $_ | Rename-Item -NewName $NowName$waitasec
        }
        # 再將剛剛那一堆檔案改為應更改的樣子
        if($WhereConnect -eq 2){
            Get-ChildItem *.waitAsecond | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                $OK = $NewNameList.Add(([string]$count)+$newstring)
                Rename-Item $_ -NewName $count$newstring
                $count++
            }
        }else{
            Get-ChildItem *.waitAsecond | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object -Begin {
                $count = $count -as [int]
            } -Process {
                $OK = $NewNameList.Add($newstring+$count)
                Rename-Item $_ -NewName $newstring$count
                $count++
            }
        }

        write-host("(i) 若無轉換，請對資料夾按F5來重新整理")

        # 重做功能
        # TempNameList用來維持順序，極重要
        # write-host($OldNameList)
        # write-host("")
        # write-host($NewNameList)
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) 更改完成，請按Enter，若要放棄更改請輸入y")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # 將新list加上waitAsecond.(加在前面以防順序亂掉)(不加在前面也沒差?)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # 將加上.waitAsecond的檔案改回舊list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) 放棄更改完成")
        }

        write-host("(i) 若無轉換，請對資料夾按F5來重新整理")

    }

    # 詢問是否離開 --------------------------------------------------------------------------------------------------
    $end = Read-Host "`n(>) 此項目完成，要關閉視窗請輸入exit，繼續請輸入Enter"
    if($end -eq 'exit'){
        break
    }else{
        $Option = -1
        cls
    }
}
pause