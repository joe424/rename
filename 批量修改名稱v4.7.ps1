### ����v4.7 ###
<#

1. �T��S��Ÿ�
2. ��ﶵ�ض���(�U���ԭz�Ҭ��s���ض���)
3. �W�[�@��z��α��r��μƦr�\��(����3)
4. ����4�i�N�Ʀr��b�e��
5. ��@����6,7,8,9(���W��ܦ�������ɦW�B�α��B������W�B�L���ɦW�α����ɦW)
6. �W�[(�Ʀr).info
7. ��@���@�\��
8. ���Ƨ��W�߰��ﶵ

#>

# �M�w����
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
        # �\��²��
	    write-host(
            "==================<��ܶ���>==================`n`n" +`
            "1.��ܰ��ɦW�B�z��r��A���ܲŦX�����ɮת����ɦW`n`n" +`
            "2.��ܰ��ɦW�B���ק�r��A�N�ӳ������N���s�r��`n`n" +`
            "3.��ܰ��ɦW�B�z��r��B��J�r��μƦr�A�N���ɮצW�ٻα�`n`n" +`
            "4.��ܰ��ɦW�B�z��r��A�N�ŦX�����ɮק�����W���s�r��[�W�Ʀr`n`n" +`
            "5.�ǥѿz��r��A�N�ŦX����B�S�����ɦW���ɮ׫᭱���W���ɦW`n`n" +`
            "6.��ܰ��ɦW�B�ϥΥ��W��ܦ��z��A�N�ŦX�����ɮק����ɦW`n`n"+`
            "7.��ܰ��ɦW�B�ϥΥ��W��ܦ��A�N�ŦX�����ɮ׻α����ɮצW��`n`n" +`
            "8.��ܰ��ɦW�B�ϥΥ��W��ܦ��z��A�N�ŦX�����ɮק�����W�ɮצW��`n`n" +`
            "9.�ϥΥ��W��ܦ��z��A�N�ŦX����B�S�����ɦW���ɮ��ɮ׫᭱���W���ɦW`n`n" +`
            "10.�إߴ_���Ƨ�`n`n" +`
            "11.�ϥδ_���Ƨ��_���� (��J�_���Ƨ����������X�Y�i�_��)`n`n" +`
            "(i) �ثe���|��:" + " `"" + (get-location) + "`"`n" +`
            "(i) �o�Ƕ��إu�A�Ω����ɮצW��(10�P11���~)�A�Y�n����Ƨ��W�ٽп�Jfolder`n" +`
            "(i) �Y�n�d�ݶ��ظԲӥ\��A��J(�Ʀr).info`n`n" +`
            "=============================================
        ")
    }
    elseif($fileOrFolder -eq 'folder'){
        # �\��²��
	    write-host(
	        "==================<��ܶ���>==================`n`n" +`
            "12.��J���ק�r��A�N�ӳ������N���s�r��`n`n" +`
            "13.�z��r��B��J�r��μƦr�A�N�Ӹ�Ƨ��W�ٻα�`n`n" +`
            "14.�z��r��A�N�ŦX���󪺸�Ƨ�������W���s�r��[�W�Ʀr`n`n" +`
            "15.�ϥΥ��W��ܦ��A�N�ŦX���󪺸�Ƨ��α����ɮצW��`n`n" +`
            "16.�ϥΥ��W��ܦ��z��A�N�ŦX���󪺸�Ƨ�������W�ɮצW��`n`n" +`
            "(i) �ثe���|��:" + " `"" + (get-location) + "`"`n" +`
            "(i) �o�Ƕ��إu�A�Ω����Ƨ��W�١A�Y�n����ɮצW�ٽп�Jfile`n" +`
            "(i) �Y�n�d�ݶ��ظԲӥ\��A��J(�Ʀr).info`n`n" +`
            "=============================================
        ")
    }

    $input_hint = "(>) �п�J"
    $Option = Read-Host $input_hint

    # ��J���~����
    while(Invoke-Expression $checkString){
		write-Host "(!) ��J���~�A�Э��s��J�A�n�����Ы�Ctrl+c`n"
        $Option = Read-Host $input_hint
	}

    # �p�G��Jfile
    if($Option -eq 'file'){
        $fileOrFolder = 'file'
        $Option = -1
        cls
        continue
    }
    # �p�G��Jfolder
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
            "==================<����1>====================`n`n" +`
            "(i) ��J[�������ɦW�W��]�B[�z��r��]�B[�s���ɦW�W��]`n`n" +`
            "(i) �d��: .txt -> file -> .png =====> file.txt -> file.png`n`n" +`
            "(i) �Y[�s���ɦW�W��]����J�B�Υu��J.�A�h�ŦX�����ɮױN�|�ܦ��L���ɦW`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����1 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 1){
        
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $goBackOrNot = ""
            $Option = -1
            cls
            continue
        }

        # ��J�ª����ɦW####################################################
        # �P�_�Y�D.�}�Y�B�ΨS���Ӱ��ɦW�A�h���~
	    $Old_Filename_Extension = Read-Host '(>) ��J���ק���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        while($Old_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -Or $Old_Filename_Extension -eq "" -Or $Old_Filename_Extension.Substring(0, 1) -ne '.' `
        -Or $Old_Filename_Extension -eq ".." `
        -or (get-childitem *$Old_Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0)
        {
            if($Old_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($Old_Filename_Extension -eq ""){
                write-host "(!) ���i����`n"
            }elseif($Old_Filename_Extension -ne "" -and $Old_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) �ХH.�}�Y`n"
            }elseif($Old_Filename_Extension -eq ".."){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }elseif((get-childitem *$Old_Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }

            # �Y���ɦW���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $Old_Filename_Extension = Read-Host '(>) ��J���ק���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��J�z��r��####################################################
        $oldstring = Read-Host "(>) ��J�z��r��"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem *$Old_Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($oldstring -eq ""){
                write-host("(!) ���i����`n")
            }elseif((get-childitem *$Old_Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count -eq 0){
                write-host("(!) �S���ŦX�����ɮ�`n")
            }

            # �Y���ק�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $oldstring = Read-Host '(>) ��J�z��r��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX�����ɮצ@��" + (get-childitem *$Old_Filename_Extension `
        | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count + "��`n")

        # ��J�s�����ɦW####################################################
        # �Y��J""��"."�h�אּ�L���ɦW
        write-host("(i) ����J�Ϊ̥u��J.�A�i�N�ŦX���󪺰��ɦW�אּ�L���ɦW")
	    $New_Filename_Extension = Read-Host '(>) ��J�s���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        while($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or ($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.')){
            if($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) �ХH.�}�Y`n"
            }

            # �Y���ɦW���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $New_Filename_Extension = Read-Host '(>) ��J�s���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'

        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �N���ɦW�@���ܬ��p�g
        $New_Filename_Extension = $New_Filename_Extension.ToLower()

        # ####################################################

        # �إ߭��@list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        # �N�°��ɦW�אּ�s���ɦW
	    Get-ChildItem *$Old_Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | where-object {! $_.PSIsContainer} | foreach-object{
            $Base = $_.BaseName

            # ��list�����e���W�r
            $OK = $OldNameList.Add($_.Name)
            # �slist�����᪺�W�r
            $OK = $NewNameList.Add($Base + $New_Filename_Extension)

            # �����ɦW
            $_ | Rename-Item -NewName $Base$New_Filename_Extension
        }

        # �����\��
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                #�N�slist�ܦ^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }
    }
    # 2.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '2.info'){
        cls
        write-host(
            "==================<����2>====================`n`n" +`
            "(i) ��J[���ɦW�W��]�B[���ק�r��]�B[�s�r��]`n`n" +`
            "(i) �d��: .txt -> A -> B =====> fileA.txt -> fileB.txt`n`n" +`
            "(i) �Y[�s�r��]����J�A�h�۷��N[���ק�r��]�R��`n`n" +`
            "=============================================
            ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����2 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 2){

        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # ��J���ɦW####################################################
        $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." -Or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) ���i����`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) �ХH.�}�Y`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }

            # �Y���ɦW���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'

        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �N���ɦW�@���ܬ��p�g
        $Filename_Extension = $Filename_Extension.ToLower()

        # �¦r�ꤣ�i����####################################################
        $oldstring = Read-Host "(>) ��J���ק�r��"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" -or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} `
        | Where-Object {$_.BaseName -clike "*$oldstring*"}).Count -eq 0)
        {
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($oldstring -eq ""){
                write-host("(!) ���i����`n")
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer}  `
            | Where-Object {$_.BaseName -clike "*$oldstring*"}).Count -eq 0){
                write-host("(!) �S���ŦX�����ɮ�`n")
            }

            # �Y���ק�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $oldstring = Read-Host '(>) ��J���ק�r��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX�����ɮצ@��" + (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} |`
         Where-Object {$_.BaseName -clike "*$oldstring*"}).Count + "��`n")

        # �s�r��i���šA�Y�ūh���P�R���¦r��####################################################

        write-host("(i) �Y����J�A�h�R�����ק�r��")
        $newstring = Read-Host '(>) ��J�s�r��'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }

            # �Y�s�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $newstring = Read-Host '(>) ��J�s�r��'
        }
        
        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ####################################################

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        # �u�NBaseName�������ק�A���ʨ���ɦW(�]�����ɦW�]���i��ŦX�z�����)
        Get-ChildItem *$Filename_Extension | where-object {! $_.PSIsContainer} `
        | Where-Object {$_.BaseName -clike "*$oldstring*"} | ForEach{
            # ������
            $OK = $OldNameList.Add($_.Name)
            $OK = $NewNameList.Add("$($_.BaseName.Replace($oldstring, "$newstring")+$_.Extension)")
            $_ | Rename-Item -NewName "$($_.BaseName.Replace($oldstring, "$newstring")+$_.Extension)"
        }

        # ######################### �]������2���@�k��Ƨ����|�ۤv����(�æ��Ooldstring,newstring�Y�@��(�u�t�j�p�g)�A�h���|�ۤv����)
        # �G�ǥѤU����k�������ɦW�A��^�ӨӰ��쭫�㪺�ĪG
        if($oldstring.ToLower() -eq $newstring.ToLower()){
            write-host("(i) �еy���Ƭ�...")

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

        # �����\��
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                # �N�slist�ܦ^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

        # ######################### �p�G�����B�u�t�j�p�g�A�A������
        if($oldstring.ToLower() -eq $newstring.ToLower() -and $forgive -eq "y"){
            write-host("(i) �еy���Ƭ�...")

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

        write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")

    }
    # 3.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '3.info'){
        cls
        write-host(
            "==================<����3>====================`n`n"  +`
            "(i) ��J[���ɦW�W��]�B[�z��r��]�B[��ܦr��μƦr]�B[��J�r��μƦr]�B[�α���m]`n`n" +`
            "(i) [��ܦr��μƦr]�B[�α���m]���Ʀr�N���A�A��ܮɬҦ�����`n`n" +`
            "(i) [��J�r��μƦr]���Ʀr�����W�Ʀr�A�Y�U�@�ӲŦX�����ɮר�α����Ʀr�|+1`n`n" +`
            "(i) �d��: .txt -> file -> (��ܭn�α����O�r��) -> _add -> (��ܱ��b�ɮצW�٫᭱)`n`n" +`
            "                                =====> file.txt -> file_add.txt`n`n" +`
            "(i) �d��: .txt -> file -> (��ܭn�α����O�Ʀr) -> 30 -> (��ܱ��b�ɮצW�٫e��) `n`n" +`
            "                                =====> fileA.txt -> 30fileA.txt �B fileB.txt -> 31fileB.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����3 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 3){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # ��J���ɦW####################################################
        $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." `
        -Or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) ���i����`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) �ХH.�}�Y`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }

            # �Y���ɦW���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'

        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �N���ɦW�@���ܬ��p�g
        $Filename_Extension = $Filename_Extension.ToLower()

        # �z��r�ꤣ�i����####################################################
        $oldstring = Read-Host "(>) ��J�z��r��"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($oldstring -eq ""){
                write-host("(!) ���i����`n")
            }elseif((get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count -eq 0){
                write-host("(!) �S���ŦX�����ɮ�`n")
            }

            # �Y���ק�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $oldstring = Read-Host '(>) ��J�z��r��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX�����ɮצ@��" + (get-childitem *$Filename_Extension `
        | Where-Object {$_.BaseName -clike "*$oldstring*"} | where-object {! $_.PSIsContainer} ).Count + "��`n")
        
        # ��ܭn�������O�r���٬O�Ʀr #################################################
        $StoreNumOrString = read-host("(>) �п�ܭn�α������� (1.�r�� 2.�Ʀr)")
        
        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # ��ܩ������O�Ʀr
        if($StoreNumOrString -eq 2){
            $count = read-host("(>) �п�J�_�l�Ʀr")
            while($count -notmatch "^\d+$"){
                write-host "(!) �п�J�Ʀr`n"

                # �Y�Ʀr���~�A�h�������}�����|
                $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # �Y�W���S��Jexit�h�~��
                $count = Read-Host '(>) ��J�Ʀr���_�l��'
            }

            # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # ��ܭn�α�����m
            $WhereConnect = 1
            $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.�ɮצW�٫�(���ɦW�e) 2.�ɮצW�٫e 3.�z��r��� 4.�z��r��e)")

            # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # ���N�ŦX�����ɮסA�N�}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name

                    # ������list
                    $OK = $OldNameList.Add($NowName)

                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    # newnamelist�n��U�ӡA�]��count����]
                    $OK = $NewNameList.Add("$($_.BaseName.Replace("waitAsecond.", $count) + $_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("waitAsecond.", $count) + $_.Extension)"
                    $count++
                }

            }elseif($WhereConnect -eq 3){
                # ���N�ŦX�����ɮסA�N�z��r�굲���K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"

                    # ������list
                    $OK = $OldNameList.Add($_.Name)

                    $_ | Rename-Item -NewName "$($_.BaseName.Replace($oldstring, "$oldstring$waitasec")+$_.Extension)"
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $waitasec = ".waitAsecond"

                    # newnamelist�n��U�ӡA�]��count����]
                    $OK = $NewNameList.Add("$($_.BaseName.Replace("$oldstring$waitasec", "$oldstring$count")+$_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("$oldstring$waitasec", "$oldstring$count")+$_.Extension)"
                    $count++
                }
                
            }elseif($WhereConnect -eq 4){
                # ���N�ŦX�����ɮסA�N�z��r��}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."

                    # ������list
                    $OK = $OldNameList.Add($_.Name)

                    $_ | Rename-Item -NewName "$($_.BaseName.Replace($oldstring, "$waitasec$oldstring")+$_.Extension)"
                }
                Get-ChildItem *waitAsecond.* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $waitasec = "waitAsecond."

                    # newnamelist�n��U�ӡA�]��count����]
                    $OK = $NewNameList.Add("$($_.BaseName.Replace("$waitasec$oldstring", "$count$oldstring")+$_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("$waitasec$oldstring", "$count$oldstring")+$_.Extension)"
                    $count++
                }
            }else{
                # ���N�ŦX�����ɮסA�N����(���ɦW�e)�K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.BaseName

                    # ������list
                    $OK = $OldNameList.Add($_.Name)
                    

                    $_ | Rename-Item -NewName $NowName$waitasec$Filename_Extension
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {

                    # newnamelist�n��U�ӡA�]��count����]
                    $OK = $NewNameList.Add("$($_.BaseName.Replace(".waitAsecond", $count) + $_.Extension)")
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace(".waitAsecond", $count) + $_.Extension)"
                    $count++
                }
            }
        
        }
        # ��ܩ������O�r��
        else{
            $InputString = read-host("(>) �п�J�r��")

            while($InputString -match '[\*\\\/\:\?\|\<\>\"]' -or $InputString -eq ""){
                if($InputString -match '[\*\\\/\:\?\|\<\>\"]'){
                    write-host "(!) �t���D�k�r��`n"
                }elseif($InputString -eq ""){
                    write-host("(!) ���i����`n")
                }

                # �Y�r����~�A�h�������}�����|
                $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # �Y�W���S��Jexit�h�~��
                $InputString = read-host("(>) �п�J�r��")
            }

            # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # ��ܭn�α�����m
            $WhereConnect = 1
            $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.�ɮצW�٫�(���ɦW�e) 2.�ɮצW�٫e 3.�z��r��� 4.�z��r��e)")

            # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # ���N�ŦX�����ɮסA�N�}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name

                    # ������list
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
                # ���N�ŦX�����ɮסA�N�z��r�굲���K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{ 
                    $waitasec = ".waitAsecond"

                    # ������list
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
                # ���N�ŦX�����ɮסA�N�z��r��}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."

                    # ������list
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
                # ���N�ŦX�����ɮסA�N����(���ɦW�e)�K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
                 | where-object {! $_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.BaseName

                    # ������list
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


        # �����\��
        # TempNameList�ΨӺ������ǡA�����n
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # �N�slist�[�WwaitAsecond.(�[�b�e���H�����Ƕñ�)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # �N�[�W.waitAsecond���ɮק�^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }
      
    }
    # 4.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '4.info'){
        cls
        write-host(
            "==================<����4>====================`n`n" +`
            "(i) ��J[���ɦW�W��]�B[�z��r��]�B[�s�W��]�B[�Ʀr]�B[�Ʀr��m]`n`n" +`
            "(i) [�Ʀr��m]���Ʀr�N���A�A��ܮɦ�����`n`n" +`
            "(i) [�Ʀr]���Ʀr�����W�Ʀr�A�Y�U�@�ӲŦX�����ɮר�s�W�ټƦr�|+1`n`n" +`
            "(i) �d��: .txt -> file -> newname -> 30 -> (��ܱ��b�s�W�٫�) `n`n" +`
            "                =====> file.txt -> newname30.txt�A�B�U�@�ӲŦX�����ɮױN�אּ newname31.txt`n`n" +`
            "=============================================
            ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����4 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 4){
        
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        write-host("(i) �кɶq��J����H����ʨ�D�ؼ��ɮ�")

        # ��J���ɦW####################################################
        $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." `
        -or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer}  | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) ���i����`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) �ХH.�}�Y`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer}  | Measure-Object).Count -eq 0){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }

            # �Y���ɦW���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �N���ɦW�@���ܬ��p�g
        $Filename_Extension = $Filename_Extension.ToLower()

        # ��J�z��r��####################################################
        $oldstring = Read-Host '(>) ��J�z��r��'
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | where-object {! $_.PSIsContainer}).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($oldstring -eq ""){
                write-host("(!) ���i����`n")
            }elseif((get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
            | where-object {! $_.PSIsContainer}).Count -eq 0){
                write-host("(!) �S���ŦX�����ɮ�`n")
            }

            # �Y�z��r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $oldstring = Read-Host '(>) ��J�z��r��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX�����ɮצ@��" + (get-childitem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | where-object {! $_.PSIsContainer}).Count + "��`n")

        # �b����3�A�s�r�ꤣ�i����####################################################
        $newstring = Read-Host '(>) ��J�ɮת��s�W��'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]' -or $newstring -eq ""){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($newstring -eq ""){
                Write-Host "(!) ���i����`n"
            }

            # �Y�s�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $newstring = Read-Host '(>) ��J�ɮת��s�W��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # count��������ƥB�j�󵥩�0 ####################################################
        $count = Read-Host '(>) ��J�Ʀr���_�l��'
        while($count -notmatch "^\d+$"){
            write-host "(!) �п�J�Ʀr`n"

            # �Y�Ʀr���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $count = Read-Host '(>) ��J�Ʀr���_�l��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��ܼƦr�n�񪺦�m
        $WhereConnect = 1
        $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.�ɮצW�٫�(���ɦW�e) 2.�ɮצW�٫e)")

        # ####################################################

        # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
        $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # ���N�ŦX�����ɮסA����ɦW�אּ.waitAsecond�A�H�קK���W���D
        Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | where-object {! $_.PSIsContainer} | sort $ToNatural | Rename-Item -NewName{
            $OK = $OldNameList.Add($_.Name)
            [System.IO.Path]::ChangeExtension($_.Name, '.waitAsecond')
        }
        # �A�N��診�@���ɮקאּ����諸�ˤl
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

        write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")

        # �����\��
        # TempNameList�ΨӺ������ǡA�����n
        # write-host($OldNameList)
        # write-host($NewNameList)
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # �N�slist�[�WwaitAsecond.(�[�b�e���H�����Ƕñ�)(���[�b�e���]�S�t?)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # �N�[�W.waitAsecond���ɮק�^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

        write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")

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
            "==================<����5>====================`n`n" +`
            "(i) ��J[�z��r��]�B[�s���ɦW�W��]`n`n" +`
            "(i) �d��: noExtension -> .txt =====> file_noExtension -> file_noExtension.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����5 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 5){
        
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��J�z��r��####################################################
        $oldstring = Read-Host '(>) ��J�z��r��'
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (Get-ChildItem | Where-Object {$_.BaseName -clike "*$oldstring*"} | Where-Object Extension -eq '' | where-object {! $_.PSIsContainer}).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($oldstring -eq ""){
                write-host("(!) ���i����`n")
            }elseif((Get-ChildItem | Where-Object {$_.BaseName -clike "*$oldstring*"} | Where-Object Extension -eq '' `
            | where-object {! $_.PSIsContainer}).Count -eq 0){
                write-host("(!) �S���ŦX�����ɮ�`n")
            }

            # �Y���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $oldstring = Read-Host '(>) ��J�z��r��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX�����ɮצ@��" + (Get-ChildItem | Where-Object {$_.BaseName -clike "*$oldstring*"} `
        | Where-Object Extension -eq '' | where-object {! $_.PSIsContainer}).Count + "��`n")
        
        # ��J�����W�����ɦW####################################################
        $New_Filename_Extension = Read-Host '(>) ��J�����W�����ɦW'
        while($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $New_Filename_Extension -eq "" -Or $New_Filename_Extension.Substring(0, 1) -ne '.' `
        -or $New_Filename_Extension -eq ".." -or $New_Filename_Extension -eq '.'){
            if($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($New_Filename_Extension -eq ""){
                write-host("(!) ���i����`n")
            }elseif($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host("(!) �ХH.�}�Y`n")
            }elseif($New_Filename_Extension -eq '.' -or $New_Filename_Extension -eq ".."){
                write-host("(!) �п�J���T�����ɦW`n")
            }

            # �Y���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $New_Filename_Extension = Read-Host '(>) ��J�����W�����ɦW'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # �N���ɦW�@���ܬ��p�g
        $New_Filename_Extension = $New_Filename_Extension.ToLower()

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        # ####################################################
        Get-ChildItem | Where-Object {$_.BaseName -clike "*$oldstring*"} | Where-Object Extension -eq '' `
        | where-object {! $_.PSIsContainer} | ForEach{ 
            $OK = $OldNameList.Add($_.Name)
            $OK = $NewNameList.Add("$($_.BaseName+$New_Filename_Extension)")
            $_ | Rename-Item -NewName "$($_.BaseName+$New_Filename_Extension)" 
        }

        # �����\��
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                #�N�slist�ܦ^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

    }
    # 6.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '6.info'){
        cls
        write-host(
            "==================<����6>====================`n`n" +`
            "(i) ��J[�������ɦW�W��]�B[���W��ܦ�]�B[�s���ɦW�W��]`n`n" +`
            "(i) �d��: .txt -> file\d+ -> .png =====> file1.txt -> file1.png`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����6 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 6){

        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }        

        # ��J�ª����ɦW####################################################
        # �P�_�Y�D.�}�Y�B�ΨS���Ӱ��ɦW�A�h���~
	    $Old_Filename_Extension = Read-Host '(>) ��J���ק���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        while($Old_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -Or $Old_Filename_Extension -eq "" -Or $Old_Filename_Extension.Substring(0, 1) -ne '.' `
        -Or $Old_Filename_Extension -eq ".." `
        -or (get-childitem *$Old_Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0)
        {
            if($Old_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($Old_Filename_Extension -eq ""){
                write-host "(!) ���i����`n"
            }elseif($Old_Filename_Extension -ne "" -and $Old_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) �ХH.�}�Y`n"
            }elseif($Old_Filename_Extension -eq ".."){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }elseif((get-childitem *$Old_Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }

            # �Y���ɦW���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $Old_Filename_Extension = Read-Host '(>) ��J���ק���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��J���W��ܦ� ####################################################
        $regex = read-host("(>) ��J���W��ܦ�")
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
                    write-host("(!) �S���ŦX�Ӫ�ܦ����ɮ�`n")
                }else{
                    write-host("(!) ���~�����W��ܦ�`n")
                }   
            }
            # �Y��ܦ����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W�����Oexit�h�~���J
            $regex = read-host("(>) ��J���W��ܦ�")
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX�����ɮצ@��" + (get-childitem *$Old_Filename_Extension `
        | Where-Object {$_.BaseName -match $regex} | where-object {! $_.PSIsContainer} ).Count + "��`n")

        # ��J�s�����ɦW####################################################
        # �Y��J""��"."�h�אּ�L���ɦW
        write-host("(i) ����J�Ϊ̥u��J.�A�i�N�ŦX���󪺰��ɦW�אּ�L���ɦW")
	    $New_Filename_Extension = Read-Host '(>) ��J�s���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        while($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or ($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.')){
            if($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) �ХH.�}�Y`n"
            }

            # �Y���ɦW���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $New_Filename_Extension = Read-Host '(>) ��J�s���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'

        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �N���ɦW�@���ܬ��p�g
        $New_Filename_Extension = $New_Filename_Extension.ToLower()

        # ####################################################

        # �إ߭��@list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # �N�°��ɦW�אּ�s���ɦW
	    Get-ChildItem *$Old_Filename_Extension | Where-Object {$_.BaseName -match $regex} `
        | where-object {! $_.PSIsContainer} | Rename-Item -NewName {
            # ��list�����e���W�r
            $OK = $OldNameList.Add($_.Name)
            # �slist�����᪺�W�r
            $OK = $NewNameList.Add($_.BaseName + $New_Filename_Extension)
	      [System.IO.Path]::ChangeExtension($_.Name, $New_Filename_Extension)
        }
        
        # �����\��
        # write-host($OldNameList)
        # write-host($NewNameList)
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                #�N�slist�ܦ^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }
    }
    # 7.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '7.info'){
        cls
        write-host(
            "==================<����7>====================`n`n" +`
            "(i) ��J[���ɦW�W��]�B[���W��ܦ�]�B[��ܦr��μƦr]�B[��J�r��μƦr]�B[�α���m]`n`n" +`
            "(i) [��ܦr��μƦr]�B[�α���m]���Ʀr�N���A�A��ܮɬҦ�����`n`n" +`
            "(i) [��J�r��μƦr]���Ʀr�����W�Ʀr�A�Y�U�@�ӲŦX�����ɮר�α����Ʀr�|+1`n`n" +`
            "(i) �d��: .txt -> file\d+ -> (��ܩ������O�r��) -> _add -> (���b�ɮצW�٫᭱) `n`n" +`
            "                   ======> file1.txt -> file1_add.txt`n`n" +`
            "(i) �d��: .txt -> file. -> (��ܩ������O�Ʀr) -> 1 -> (���b�ɮצW�٫e��) `n`n" +`
            "                   =====> fileA.txt -> 1fileA.txt �B fileB.txt -> 2fileB.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����7 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 7){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # ��J���ɦW####################################################
        $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." `
        -Or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) ���i����`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) �ХH.�}�Y`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }

            # �Y���ɦW���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'

        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # ��J���W��ܦ� ####################################################
        $regex = read-host("(>) ��J���W��ܦ�")
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
                    write-host("(!) �S���ŦX�Ӫ�ܦ����ɮ�`n")
                }else{
                    write-host("(!) ���~�����W��ܦ�`n")
                }   
            }
            # �Y��ܦ����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W�����Oexit�h�~���J
            $regex = read-host("(>) ��J���W��ܦ�")
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX�����ɮצ@��" + `
        (Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} `
            | where-object {! $_.PSIsContainer}).Count + "��`n")
        
        # ��ܭn�������O�r���٬O�Ʀr ####################################################
        $StoreNumOrString = 1
        $StoreNumOrString = read-host("(>) �п�ܭn�α������� (1.�r�� 2.�Ʀr)")

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # ��ܩ������O�Ʀr
        if($StoreNumOrString -eq 2){
            $count = read-host("(>) �п�J�_�l�Ʀr")
            while($count -notmatch "^\d+$"){
                write-host "(!) �п�J�Ʀr`n"

                # �Y�Ʀr���~�A�h�������}�����|
                $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # �Y�W���S��Jexit�h�~��
                $count = Read-Host '(>) ��J�Ʀr���_�l��'
            }

            # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # ��ܭn�α�����m
            $WhereConnect = 1
            $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.�ɮצW�٫�(���ɦW�e) 2.�ɮצW�٫e)")

            # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # ���N�ŦX�����ɮסA�N�}�Y�K�[waitAsecond.�A�H�קK���W���D
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
                # ���N�ŦX�����ɮסA�N����(���ɦW�e)�K�[.waitAsecond�A�H�קK���W���D
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
        # ��ܩ������O�r��
        else{
            $InputString = read-host("(>) �п�J�r��")

            while($InputString -match '[\*\\\/\:\?\|\<\>\"]' -or $InputString -eq ""){
                if($InputString -match '[\*\\\/\:\?\|\<\>\"]'){
                    write-host "(!) �t���D�k�r��`n"
                }elseif($InputString -eq ""){
                    write-host("(!) ���i����`n")
                }

                # �Y�r����~�A�h�������}�����|
                $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # �Y�W���S��Jexit�h�~��
                $InputString = read-host("(>) �п�J�r��")
            }

            # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # ��ܭn�α�����m
            $WhereConnect = 1
            $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.�ɮצW�٫�(���ɦW�e) 2.�ɮצW�٫e)")

            # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # ���N�ŦX�����ɮסA�N�}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} | where-object {! $_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name
                    # ������list
                    $OK = $OldNameList.Add($NowName)
                    $OK = $NewNameList.Add($InputString+$NowName)
                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | where-object {! $_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $_ | Rename-Item -NewName "$($_.BaseName.Replace("waitAsecond.", $InputString) + $_.Extension)"
                }

            }else{
                # ���N�ŦX�����ɮסA�N����(���ɦW�e)�K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} | where-object {! $_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.BaseName
                    # ������list
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

        # �����\��
        # TempNameList�ΨӺ������ǡA�����n
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # �N�slist�[�WwaitAsecond.(�[�b�e���H�����Ƕñ�)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # �N�[�W.waitAsecond���ɮק�^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

    }
    # 8.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '8.info'){
        cls
        write-host(
            "==================<����8>====================`n`n" +`
            "(i) ��J[���ɦW�W��]�B[���W��ܦ�]�B[�s�W��]�B[�Ʀr]�B[�Ʀr��m]`n`n" +`
            "(i) [�Ʀr��m]���Ʀr�N���A�A��ܮɦ�����`n`n" +`
            "(i) [�Ʀr]���Ʀr�����W�Ʀr�A�Y�U�@�ӲŦX�����ɮר�s�W�ټƦr�|+1`n`n" +`
            "(i) �d��: .txt -> file\d+ -> newname -> 30 -> (���b�s�W�٫�) `n`n" +`
            "            =====> file1.txt -> newname30.txt�A�B�U�@�ӲŦX�����ɮױN�אּ newname31.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����8 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 8){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # ��J���ɦW####################################################
        $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'
        while($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $Filename_Extension -eq "" -Or $Filename_Extension.Substring(0, 1) -ne '.'`
        -Or $Filename_Extension -eq ".." `
        -Or (get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
            if($Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($Filename_Extension -eq ""){
                write-host "(!) ���i����`n"
            }elseif($Filename_Extension -ne "" -and $Filename_Extension.Substring(0, 1) -ne '.'){
                write-host "(!) �ХH.�}�Y`n"
            }elseif($Filename_Extension -eq ".."){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }elseif((get-childitem *$Filename_Extension | where-object {! $_.PSIsContainer} | Measure-Object).Count -eq 0){
                write-host "(!) �S���Ӱ��ɦW���ɮ�`n"
            }

            # �Y���ɦW���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $Filename_Extension = Read-Host '(>) ��J���w���ɦW�W�� (�S���j�p�g�����B�ݥ[�I�B�d��:.png)'

        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��J���W��ܦ� ####################################################
        $regex = read-host("(>) ��J���W��ܦ�")
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
                    write-host("(!) �S���ŦX�Ӫ�ܦ����ɮ�`n")
                }else{
                    write-host("(!) ���~�����W��ܦ�`n")
                }   
            }
            # �Y��ܦ����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W�����Oexit�h�~���J
            $regex = read-host("(>) ��J���W��ܦ�")
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX�����ɮצ@��" + `
        (Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} `
        | where-object {! $_.PSIsContainer}).Count + "��`n")

        # ��J�s�r�� ####################################################
        $newstring = Read-Host '(>) ��J�ɮת��s�W��'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]' -or $newstring -eq ""){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($newstring -eq ""){
                Write-Host "(!) ���i����`n"
            }

            # �Y�s�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $newstring = Read-Host '(>) ��J�ɮת��s�W��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��J�_�l�Ʀr ####################################################
        $count = read-host("(>) �п�J�_�l�Ʀr")
        while($count -notmatch "^\d+$"){
            write-host "(!) �п�J�Ʀr`n"

            # �Y�Ʀr���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $count = Read-Host '(>) ��J�Ʀr���_�l��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��ܭn�α�����m ####################################################
        $WhereConnect = 1
        $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.�ɮצW�٫�(���ɦW�e) 2.�ɮצW�٫e)")

        # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
        $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        
        # ���N�ŦX�����ɮסA����ɦW�אּ.waitAsecond�A�H�קK���W���D
        Get-ChildItem *$Filename_Extension | Where-Object {$_.BaseName -match $regex} `
        | where-object {! $_.PSIsContainer} | sort $ToNatural | Rename-Item -NewName{
            $OK = $OldNameList.Add($_.Name)
            [System.IO.Path]::ChangeExtension($_.Name, '.waitAsecond')
        }
        # �A�N��診�@���ɮקאּ����諸�ˤl
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

        write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")

        # �����\��
        # TempNameList�ΨӺ������ǡA�����n
        # write-host($OldNameList)
        # write-host("")
        # write-host($NewNameList)
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # �N�slist�[�WwaitAsecond.(�[�b�e���H�����Ƕñ�)(���[�b�e���]�S�t?)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # �N�[�W.waitAsecond���ɮק�^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

        write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")

    }
    # 9.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '9.info'){
        cls
        write-host(
            "==================<����9>====================`n`n" +`
            "(i) ��J[���W��ܦ�]�B[�s���ɦW�W��]`n`n" +`
            "(i) �d��: file\d_noExtension -> .txt =====> file3_noExtension -> file3_noExtension.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����9 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 9){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��J���W��ܦ� ####################################################
        $regex = read-host("(>) ��J���W��ܦ�")
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
                    write-host("(!) �S���ŦX�Ӫ�ܦ����ɮ�`n")
                }else{
                    write-host("(!) ���~�����W��ܦ�`n")
                }   
            }
            # �Y��ܦ����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W�����Oexit�h�~���J
            $regex = read-host("(>) ��J���W��ܦ�")
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX�����ɮצ@��" + `
        (Get-ChildItem | Where-Object {$_.BaseName -match $regex} | Where-Object Extension -eq ''`
        | where-object {! $_.PSIsContainer}).Count + "��`n")

        # ��J�����W�����ɦW####################################################
        $New_Filename_Extension = Read-Host '(>) ��J�����W�����ɦW'
        while($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $New_Filename_Extension -eq "" -Or $New_Filename_Extension.Substring(0, 1) -ne '.' `
        -or $New_Filename_Extension -eq ".." -or $New_Filename_Extension -eq '.'){
            if($New_Filename_Extension -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($New_Filename_Extension -eq ""){
                write-host("(!) ���i����`n")
            }elseif($New_Filename_Extension -ne "" -and $New_Filename_Extension.Substring(0, 1) -ne '.'){
                write-host("(!) �ХH.�}�Y`n")
            }elseif($New_Filename_Extension -eq '.' -or $New_Filename_Extension -eq ".."){
                write-host("(!) �п�J���T�����ɦW`n")
            }

            # �Y���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $New_Filename_Extension = Read-Host '(>) ��J�����W�����ɦW'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # �N���ɦW�@���ܬ��p�g
        $New_Filename_Extension = $New_Filename_Extension.ToLower()

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # ####################################################
        Get-ChildItem | Where-Object {$_.BaseName -match $regex} | Where-Object Extension -eq ''`
        | where-object {! $_.PSIsContainer} | ForEach{ 
            $OK = $OldNameList.Add($_.Name)
            $OK = $NewNameList.Add("$($_.BaseName+$New_Filename_Extension)")
            $_ | Rename-Item -NewName "$($_.BaseName+$New_Filename_Extension)" 
        }

        # �����\��
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            [int]$count = 0
            get-item $NewNameList | ForEach-Object{
                #�N�slist�ܦ^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

    }
    # 10.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '10.info'){
        cls
        write-host(
            "==================<����10>====================`n`n" +`
            "(i) �إߴ_���Ƨ��A�Y�ɮצW�ٻP��Ƨ��W�ٳQ�ק諸�L�k�٭�ɡA�i�ϥζ���10�ӧ��^�쥻���W��`n`n" +`
            "(i) �إߪ��_���Ƨ��ɦW�� " + (Split-Path -leaf $PSCommandpath) + "_recovery_(�{�b�ɶ�)`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����10 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 10){

        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $goBackOrNot = ""
            $Option = -1
            cls
            continue
        }

        # ��ps1�ɪ��W�r�A���ݭn�i�J�_���Ƨ�
        $this_files_name = Split-Path -leaf $PSCommandpath

        # �إߴ_���Ƨ��W�١A�åH�ɶ��M�w��Ƨ��W��
        sleep(1)
        $NOW = $this_files_name + "_recovery_" + (Get-Date -UFormat "%Y-%m-%d-%Hh%Mm%Ss")
        $restore_file = new-item $NOW -itemtype directory

        # �إߴ_���Ƨ��A�ư����_���Ƨ������θ�ps1��
        $recovery_file_name = $this_files_name + "_recovery_"
        Get-childItem -path (Get-Location) `
         | Where-Object { !($_.Name -clike "$recovery_file_name*") -And $_.Name -ne $this_files_name}`
         | ForEach-Object{ 
            # �p�G�O��Ƨ��h���j���ƻs
            if($_.PSIsContainer){
                Copy-Item $_ -Recurse $NOW
            }else{
                Copy-Item $_ -Destination $NOW
            }
        }

        write-host("(i) �إߦ��\!")
    }
    # 11.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '11.info'){
        cls
        write-host(
            "==================<����11>====================`n`n" +`
            "(i) ��J�_���Ƨ��������X�A�N��e��Ƨ����e�אּ�Ӵ_���Ƨ����e`n`n" +`
            "(i) �b�_�짹����A�Y�n�����Ӵ_��A��Jy`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����11 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 11){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $goBackOrNot = ""
            $Option = -1
            cls
            continue
        }

        write-host("(i) �b�U����J�Q�ǥѭ��Ӹ�Ƨ��_��A���Ƨ����������X")
        write-host("-----------------------------------------------------")

        # �z��X�_���Ƨ�
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

        # ��ܸ��X
        $choose = read-host("(>) �п��")
        $choose_int = $choose -as [int]

        # $choose��J���~�����A
        while($choose -notmatch "^\d+$" -or $choose_int -ge $count){
            if($choose -notmatch "^\d+$"){
                write-host("(!) �п�J�Ʀr`n")
            }elseif($choose_int -ge $count){
                write-host("(!) �п�J���T�����X`n")
            }

            # �Y�Ʀr���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $choose = read-host("(>) �п��")
            $choose_int = $choose -as [int]
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �إߩ��_���Ƨ��W�١A�åH�ɶ��M�w��Ƨ��W��
        sleep(1)
        $this_files_name = Split-Path -leaf $PSCommandpath
        $backbackup_file = $this_files_name + "_recovery_" + (Get-Date -UFormat "%Y-%m-%d-%Hh%Mm%Ss")
        $restore_file = new-item $backbackup_file -itemtype directory

        # �إߩ��_���Ƨ�
        $recovery_file_name = $this_files_name + "_recovery_"
        Get-childItem -path (Get-Location) `
         | Where-Object { !($_.Name -clike "$recovery_file_name*") -And $_.Name -ne $this_files_name}`
         | ForEach-Object{ 
            # �p�G�O��Ƨ��h���j���ƻs
            if($_.PSIsContainer){
                Copy-Item $_ -Recurse $backbackup_file
            }else{
                Copy-Item $_ -Destination $backbackup_file
            }
        }

        # �R����e��Ƨ����ɮ�
        Get-childItem -path (Get-Location) `
         | Where-Object { !($_.Name -clike "$recovery_file_name*") -And $_.Name -ne $this_files_name}`
         | ForEach-Object{ 
            # �p�G�O��Ƨ��h���j���ƻs
            if($_.PSIsContainer){
                Remove-Item $_ -Recurse
            }else{
                Remove-Item $_
            }
        }

        # ����_��
        Get-ChildItem -path $nameList[$choose_int - 1] | ForEach-Object{
            # �p�G�O��Ƨ��h���j���ƻs
            if($_.PSIsContainer){
                Copy-Item $_.FullName -Recurse (Get-Location)
            }else{
                Copy-Item $_.FullName -Destination (Get-Location)
            }
        }

        sleep(2)
        # �Y�Ϯ��A�_�짹���e���A
        $iAmRegret = Read-Host("`n(>) �����A�Ы�Enter�A�Y�n���_��A�^��_�짹���e���A�Ы�y")
        if($iAmRegret -eq "y"){
            # �R�������᪺���
            Get-childItem -path (Get-Location) `
             | Where-Object { !($_.Name -clike "$recovery_file_name*") -And $_.Name -ne $this_files_name}`
             | ForEach-Object{
                # �p�G�O��Ƨ��h���j���ƻs
                if($_.PSIsContainer){
                    Remove-Item $_ -Recurse
                }else{
                    Remove-Item $_
                }
            }

            Get-ChildItem  $backbackup_file | ForEach-Object{
                # �p�G�O��Ƨ��h���j���ƻs
                if($_.PSIsContainer){
                    Copy-Item $_.FullName -Recurse (Get-Location)
                }else{
                    Copy-Item $_.FullName -Destination (Get-Location)
                }
            }
        }

        # �R���ᮬ��Ƨ�
        Remove-Item $backbackup_file -Recurse
        sleep(1)
    }
    # 12.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '12.info'){
        cls
        write-host(
            "==================<����12>====================`n`n" +`
            "(i) ��J[���ק�r��]�B[�s�r��]`n`n" +`
            "(i) �d��: A -> B =====> folderA -> folderB`n`n" +`
            "(i) �Y[�s�r��]����J�A�h�۷��N[���ק�r��]�R��`n`n" +`
            "=============================================
            ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����12 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 12){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }
        
        # �¦r�ꤣ�i����####################################################
        $oldstring = Read-Host "(>) ��J���ק�r��"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" -or (get-childitem  | where-object {$_.PSIsContainer} `
        | Where-Object {$_.Name -clike "*$oldstring*"}).Count -eq 0)
        {
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($oldstring -eq ""){
                write-host("(!) ���i����`n")
            }elseif((get-childitem | where-object {$_.PSIsContainer} `
            | Where-Object {$_.Name -clike "*$oldstring*"}).Count -eq 0){
                write-host("(!) �S���ŦX���󪺸�Ƨ�`n")
            }

            # �Y���ק�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $oldstring = Read-Host '(>) ��J���ק�r��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX���󪺸�Ƨ��@��" + (get-childitem | where-object {$_.PSIsContainer} |`
         Where-Object {$_.Name -clike "*$oldstring*"}).Count + "��`n")

        # �s�r��i���šA�Y�ūh���P�R���¦r��####################################################

        write-host("(i) �Y����J�A�h�R�����ק�r��")
        $newstring = Read-Host '(>) ��J�s�r��'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }

            # �Y�s�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $newstring = Read-Host '(>) ��J�s�r��'
        }
        
        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ####################################################

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        # �u�NBaseName�������ק�A���ʨ���ɦW(�]�����ɦW�]���i��ŦX�z�����)
        Get-ChildItem | where-object {$_.PSIsContainer} `
        | Where-Object {$_.Name -clike "*$oldstring*"} | ForEach-Object{
            # ������
            $OK = $OldNameList.Add($_.Name)
            $OK = $NewNameList.Add($_.Name.Replace($oldstring, $newstring))

            $waitasec = "waitAsecond"
            # �]��windows�t�Τ��|�Ϥ��j�p�g
            $_  | Rename-Item -NewName $_.Name.Replace($oldstring, $waitasec)
        }
        Get-ChildItem "*waitAsecond*" | where-object {$_.PSIsContainer} `
        | ForEach-Object{
            # �]��windows�t�Τ��|�Ϥ��j�p�g
            $_  | Rename-Item -NewName $_.Name.Replace("waitAsecond", $newstring)
        }

        # ######################### ������F�A�����s�ϥΪ̭��s��z
        if($oldstring.ToLower() -eq $newstring.ToLower()){
            write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")
        }
        # #########################

        # �����\��
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond"
            get-item $NewNameList | ForEach-Object{
                # �N�slist�ܦ^��list
                $_  | Rename-Item -NewName $_.Name.Replace($newstring, $waitasec)
                $OK = $TempNameList.Add($_.Name.Replace($newstring, $waitasec))
            }
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # �N�[�W.waitAsecond���ɮק�^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

        # ######################### �p�G�����B�u�t�j�p�g�A�A������
        if($oldstring.ToLower() -eq $newstring.ToLower() -and $forgive -eq "y"){
            write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")
        }
        # #########################
    }
    # 13.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '13.info'){
        cls
        write-host(
            "==================<����13>====================`n`n"  +`
            "(i) ��J[�z��r��]�B[��ܦr��μƦr]�B[��J�r��μƦr]�B[�α���m]`n`n" +`
            "(i) [��ܦr��μƦr]�B[�α���m]���Ʀr�N���A�A��ܮɬҦ�����`n`n" +`
            "(i) [��J�r��μƦr]���Ʀr�����W�Ʀr�A�Y�U�@�ӲŦX�����ɮר�α����Ʀr�|+1`n`n" +`
            "(i) �d��: folder -> (��ܭn�α����O�r��) -> _add -> (��ܱ��b�ɮצW�٫᭱)`n`n" +`
            "                                =====> folder -> folder_add`n`n" +`
            "(i) �d��: folder -> (��ܭn�α����O�Ʀr) -> 30 -> (��ܱ��b�ɮצW�٫e��) `n`n" +`
            "                                =====> folderA -> 30folderA �B folderB -> 31folderB`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����13 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 13){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �z��r�ꤣ�i����####################################################
        $oldstring = Read-Host "(>) ��J�z��r��"
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} | where-object {$_.PSIsContainer} ).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($oldstring -eq ""){
                write-host("(!) ���i����`n")
            }elseif((get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} | where-object {$_.PSIsContainer} ).Count -eq 0){
                write-host("(!) �S���ŦX���󪺸�Ƨ�`n")
            }

            # �Y���ק�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $oldstring = Read-Host '(>) ��J�z��r��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX���󪺸�Ƨ��@��" + (get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} `
        | where-object {$_.PSIsContainer} ).Count + "��`n")
        
        # ��ܭn�������O�r���٬O�Ʀr #################################################
        $StoreNumOrString = read-host("(>) �п�ܭn�α������� (1.�r�� 2.�Ʀr)")
        
        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # ��ܩ������O�Ʀr
        if($StoreNumOrString -eq 2){
            $count = read-host("(>) �п�J�_�l�Ʀr")
            while($count -notmatch "^\d+$"){
                write-host "(!) �п�J�Ʀr`n"

                # �Y�Ʀr���~�A�h�������}�����|
                $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # �Y�W���S��Jexit�h�~��
                $count = Read-Host '(>) ��J�Ʀr���_�l��'
            }

            # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # ��ܭn�α�����m
            $WhereConnect = 1
            $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.��Ƨ��W�٫� 2.��Ƨ��W�٫e 3.�z��r��� 4.�z��r��e)")

            # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # ���N�ŦX�����ɮסA�N�}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name

                    # ������list
                    $OK = $OldNameList.Add($NowName)

                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem  $waitasec* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    # newnamelist�n��U�ӡA�]��count����]
                    $OK = $NewNameList.Add($_.Name.Replace("waitAsecond.", $count))
                    $_ | Rename-Item -NewName $_.Name.Replace("waitAsecond.", $count)
                    $count++
                }

            }elseif($WhereConnect -eq 3){
                # ���N�ŦX�����ɮסA�N�z��r�굲���K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"

                    # ������list
                    $OK = $OldNameList.Add($_.Name)

                    $_ | Rename-Item -NewName $_.Name.Replace($oldstring, "$oldstring$waitasec")
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $waitasec = ".waitAsecond"

                    # newnamelist�n��U�ӡA�]��count����]
                    $OK = $NewNameList.Add($_.Name.Replace("$oldstring$waitasec", "$oldstring$count"))
                    $_ | Rename-Item -NewName $_.Name.Replace("$oldstring$waitasec", "$oldstring$count")
                    $count++
                }
                
            }elseif($WhereConnect -eq 4){
                # ���N�ŦX�����ɮסA�N�z��r��}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."

                    # ������list
                    $OK = $OldNameList.Add($_.Name)

                    $_ | Rename-Item -NewName $_.Name.Replace($oldstring, "$waitasec$oldstring")
                }
                Get-ChildItem *waitAsecond.* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {
                    $waitasec = "waitAsecond."

                    # newnamelist�n��U�ӡA�]��count����]
                    $OK = $NewNameList.Add($_.Name.Replace("$waitasec$oldstring", "$count$oldstring"))
                    $_ | Rename-Item -NewName $_.Name.Replace("$waitasec$oldstring", "$count$oldstring")
                    $count++
                }
            }else{
                # ���N�ŦX�����ɮסA�N����(���ɦW�e)�K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.Name

                    # ������list
                    $OK = $OldNameList.Add($_.Name)
                    

                    $_ | Rename-Item -NewName $NowName$waitasec
                }
                Get-ChildItem *.waitAsecond* | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | Sort-Object $ToNatural `
                | ForEach-Object -Begin {
                    $count = $count -as [int]
                } -Process {

                    # newnamelist�n��U�ӡA�]��count����]
                    $OK = $NewNameList.Add($_.Name.Replace(".waitAsecond", $count))
                    $_ | Rename-Item -NewName $_.Name.Replace(".waitAsecond", $count)
                    $count++
                }
            }
        
        }
        # ��ܩ������O�r��
        else{
            $InputString = read-host("(>) �п�J�r��")

            while($InputString -match '[\*\\\/\:\?\|\<\>\"]' -or $InputString -eq ""){
                if($InputString -match '[\*\\\/\:\?\|\<\>\"]'){
                    write-host "(!) �t���D�k�r��`n"
                }elseif($InputString -eq ""){
                    write-host("(!) ���i����`n")
                }

                # �Y�r����~�A�h�������}�����|
                $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # �Y�W���S��Jexit�h�~��
                $InputString = read-host("(>) �п�J�r��")
            }

            # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # ��ܭn�α�����m
            $WhereConnect = 1
            $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.��Ƨ��W�٫� 2.��Ƨ��W�٫e 3.�z��r��� 4.�z��r��e)")

            # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # ���N�ŦX�����ɮסA�N�}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name

                    # ������list
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
                # ���N�ŦX�����ɮסA�N�z��r�굲���K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{ 
                    $waitasec = ".waitAsecond"

                    # ������list
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
                # ���N�ŦX�����ɮסA�N�z��r��}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."

                    # ������list
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
                # ���N�ŦX�����ɮסA�N����(���ɦW�e)�K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
                 | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.Name

                    # ������list
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


        # �����\��
        # TempNameList�ΨӺ������ǡA�����n
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # �N�slist�[�WwaitAsecond.(�[�b�e���H�����Ƕñ�)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # �N�[�W.waitAsecond���ɮק�^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }
      
    }
    # 14.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '14.info'){
        cls
        write-host(
            "==================<����14>====================`n`n" +`
            "(i) ��J[�z��r��]�B[�s�W��]�B[�Ʀr]�B[�Ʀr��m]`n`n" +`
            "(i) [�Ʀr��m]���Ʀr�N���A�A��ܮɦ�����`n`n" +`
            "(i) [�Ʀr]���Ʀr�����W�Ʀr�A�Y�U�@�ӲŦX�����ɮר�s�W�ټƦr�|+1`n`n" +`
            "(i) �d��: folder -> newname -> 30 -> (��ܱ��b�s�W�٫�) `n`n" +`
            "                =====> folder -> newname30�A�B�U�@�ӲŦX�����ɮױN�אּ newname31.txt`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����14 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 14){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        write-host("(i) �кɶq��J����H����ʨ�D�ؼ��ɮ�")

        # ��J�z��r��####################################################
        $oldstring = Read-Host '(>) ��J�z��r��'
        while($oldstring -match '[\*\\\/\:\?\|\<\>\"]' `
        -or $oldstring -eq "" `
        -or (get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} `
        | where-object {$_.PSIsContainer}).Count -eq 0){
            if($oldstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($oldstring -eq ""){
                write-host("(!) ���i����`n")
            }elseif((get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} `
            | where-object {$_.PSIsContainer}).Count -eq 0){
                write-host("(!) �S���ŦX���󪺸�Ƨ�`n")
            }

            # �Y�z��r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $oldstring = Read-Host '(>) ��J�z��r��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX���󪺸�Ƨ��@��" + (get-childitem | Where-Object {$_.Name -clike "*$oldstring*"} `
        | where-object {$_.PSIsContainer}).Count + "��`n")

        # �b����3�A�s�r�ꤣ�i����####################################################
        $newstring = Read-Host '(>) ��J��Ƨ����s�W��'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]' -or $newstring -eq ""){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($newstring -eq ""){
                Write-Host "(!) ���i����`n"
            }

            # �Y�s�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $newstring = Read-Host '(>) ��J��Ƨ����s�W��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # count��������ƥB�j�󵥩�0 ####################################################
        $count = Read-Host '(>) ��J�Ʀr���_�l��'
        while($count -notmatch "^\d+$"){
            write-host "(!) �п�J�Ʀr`n"

            # �Y�Ʀr���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $count = Read-Host '(>) ��J�Ʀr���_�l��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��ܼƦr�n�񪺦�m
        $WhereConnect = 1
        $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.��Ƨ��W�٫� 2.��Ƨ��W�٫e)")

        # ####################################################

        # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
        $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # ���N�ŦX�����ɮסA����ɦW�אּ.waitAsecond�A�H�קK���W���D
        Get-ChildItem | Where-Object {$_.Name -clike "*$oldstring*"} `
        | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
            $NowName = $_.Name
            $OK = $OldNameList.Add($NowName)
            $waitasec = '.waitAsecond'
            $_ | Rename-Item -NewName $NowName$waitasec
        }
        # �A�N��診�@���ɮקאּ����諸�ˤl
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

        write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")

        # �����\��
        # TempNameList�ΨӺ������ǡA�����n
        # write-host($OldNameList)
        # write-host($NewNameList)
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # �N�slist�[�WwaitAsecond.(�[�b�e���H�����Ƕñ�)(���[�b�e���]�S�t?)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # �N�[�W.waitAsecond���ɮק�^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

        write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")

        
    }
    # 15.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '15.info'){
        cls
        write-host(
            "==================<����15>====================`n`n" +`
            "(i) ��J[���W��ܦ�]�B[��ܦr��μƦr]�B[��J�r��μƦr]�B[�α���m]`n`n" +`
            "(i) [��ܦr��μƦr]�B[�α���m]���Ʀr�N���A�A��ܮɬҦ�����`n`n" +`
            "(i) [��J�r��μƦr]���Ʀr�����W�Ʀr�A�Y�U�@�ӲŦX�����ɮר�α����Ʀr�|+1`n`n" +`
            "(i) �d��: folder\d+ -> (��ܩ������O�r��) -> _add -> (���b�ɮצW�٫᭱) `n`n" +`
            "                   ======> folder -> folder_add`n`n" +`
            "(i) �d��: folder. -> (��ܩ������O�Ʀr) -> 1 -> (���b�ɮצW�٫e��) `n`n" +`
            "                   =====> folderA-> 1folderA �B folderB -> 2folderB`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����15 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 15){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��J���W��ܦ� ####################################################
        $regex = read-host("(>) ��J���W��ܦ�")
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
                    write-host("(!) �S���ŦX�Ӫ�ܦ�����Ƨ�`n")
                }else{
                    write-host("(!) ���~�����W��ܦ�`n")
                }   
            }
            # �Y��ܦ����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W�����Oexit�h�~���J
            $regex = read-host("(>) ��J���W��ܦ�")
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX���󪺸�Ƨ��@��" + `
        (Get-ChildItem | Where-Object {$_.Name -match $regex} `
            | where-object {$_.PSIsContainer}).Count + "��`n")
        
        # ��ܭn�������O�r���٬O�Ʀr ####################################################
        $StoreNumOrString = 1
        $StoreNumOrString = read-host("(>) �п�ܭn�α������� (1.�r�� 2.�Ʀr)")

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()

        # ��ܩ������O�Ʀr
        if($StoreNumOrString -eq 2){
            $count = read-host("(>) �п�J�_�l�Ʀr")
            while($count -notmatch "^\d+$"){
                write-host "(!) �п�J�Ʀr`n"

                # �Y�Ʀr���~�A�h�������}�����|
                $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # �Y�W���S��Jexit�h�~��
                $count = Read-Host '(>) ��J�Ʀr���_�l��'
            }

            # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # ��ܭn�α�����m
            $WhereConnect = 1
            $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.��Ƨ��W�٫� 2.��Ƨ��W�٫e)")

            # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # ���N�ŦX�����ɮסA�N�}�Y�K�[waitAsecond.�A�H�קK���W���D
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
                # ���N�ŦX�����ɮסA�N����(���ɦW�e)�K�[.waitAsecond�A�H�קK���W���D
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
        # ��ܩ������O�r��
        else{
            $InputString = read-host("(>) �п�J�r��")

            while($InputString -match '[\*\\\/\:\?\|\<\>\"]' -or $InputString -eq ""){
                if($InputString -match '[\*\\\/\:\?\|\<\>\"]'){
                    write-host "(!) �t���D�k�r��`n"
                }elseif($InputString -eq ""){
                    write-host("(!) ���i����`n")
                }

                # �Y�r����~�A�h�������}�����|
                $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
                Write-Host("")
                if($goBackOrNot -eq "exit"){
                    $Option = -1
                    break
                }

                # �Y�W���S��Jexit�h�~��
                $InputString = read-host("(>) �п�J�r��")
            }

            # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
            if($goBackOrNot -eq "exit"){
                $Option = -1
                $goBackOrNot = ""
                cls
                continue
            }

            # ��ܭn�α�����m
            $WhereConnect = 1
            $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.��Ƨ��W�٫�(���ɦW�e) 2.��Ƨ��W�٫e)")

            # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
            $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

            if($WhereConnect -eq 2){
                # ���N�ŦX�����ɮסA�N�}�Y�K�[waitAsecond.�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -match $regex} | where-object {$_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $waitasec = "waitAsecond."
                    $NowName = $_.Name
                    # ������list
                    $OK = $OldNameList.Add($NowName)
                    $OK = $NewNameList.Add($InputString+$NowName)
                    $_ | Rename-Item -NewName $waitasec$NowName
                }
                Get-ChildItem waitAsecond.* | where-object {$_.PSIsContainer}`
                | sort $ToNatural | ForEach-Object{
                    $_ | Rename-Item -NewName $_.Name.Replace("waitAsecond.", $InputString)
                }

            }else{
                # ���N�ŦX�����ɮסA�N����(���ɦW�e)�K�[.waitAsecond�A�H�קK���W���D
                Get-ChildItem | Where-Object {$_.Name -match $regex} | where-object {$_.PSIsContainer}`
                 | sort $ToNatural | ForEach-Object{
                    $waitasec = ".waitAsecond"
                    $NowName = $_.Name
                    # ������list
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

        # �����\��
        # TempNameList�ΨӺ������ǡA�����n
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # �N�slist�[�WwaitAsecond.(�[�b�e���H�����Ƕñ�)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # �N�[�W.waitAsecond���ɮק�^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

    }
    # 16.info -----------------------------------------------------------------------------------------------------
    elseif($Option -eq '16.info'){
        cls
        write-host(
            "==================<����16>====================`n`n" +`
            "(i) ��J[���W��ܦ�]�B[�s�W��]�B[�Ʀr]�B[�Ʀr��m]`n`n" +`
            "(i) [�Ʀr��m]���Ʀr�N���A�A��ܮɦ�����`n`n" +`
            "(i) [�Ʀr]���Ʀr�����W�Ʀr�A�Y�U�@�ӲŦX�����ɮר�s�W�ټƦr�|+1`n`n" +`
            "(i) �d��: folder\d+ -> newname -> 30 -> (���b�s�W�٫�) `n`n" +`
            "            =====> folder1 -> newname30�A�B�U�@�ӲŦX�����ɮױN�אּ newname31`n`n" +`
            "=============================================
        ")
        pause
        $Option = -1
        cls
        continue
    }
    # ����16 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    elseif($Option -eq 16){
        # ����M�w���إi���^
        $goBackOrNot = Read-Host("`n(>) ��ܶ���" + $Option + "�A�Ы� Enter �~��A�Y�n��^�п�J exit")
        Write-Host("")
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��J���W��ܦ� ####################################################
        $regex = read-host("(>) ��J���W��ܦ�")
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
                    write-host("(!) �S���ŦX�Ӫ�ܦ����ɮ�`n")
                }else{
                    write-host("(!) ���~�����W��ܦ�`n")
                }   
            }
            # �Y��ܦ����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W�����Oexit�h�~���J
            $regex = read-host("(>) ��J���W��ܦ�")
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # �i���ŦX�����ɮ׭Ӽ�
        write-host("(i) �ŦX���󪺸�Ƨ��@��" + `
        (Get-ChildItem | Where-Object {$_.Name -match $regex} `
        | where-object {$_.PSIsContainer}).Count + "��`n")

        # ��J�s�r�� ####################################################
        $newstring = Read-Host '(>) ��J��Ƨ����s�W��'
        while($newstring -match '[\*\\\/\:\?\|\<\>\"]' -or $newstring -eq ""){
            if($newstring -match '[\*\\\/\:\?\|\<\>\"]'){
                write-host "(!) �t���D�k�r��`n"
            }elseif($newstring -eq ""){
                Write-Host "(!) ���i����`n"
            }

            # �Y�s�r����~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $newstring = Read-Host '(>) ��J��Ƨ����s�W��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��J�_�l�Ʀr ####################################################
        $count = read-host("(>) �п�J�_�l�Ʀr")
        while($count -notmatch "^\d+$"){
            write-host "(!) �п�J�Ʀr`n"

            # �Y�Ʀr���~�A�h�������}�����|
            $goBackOrNot = Read-Host("(>) �� Enter �~��A�Y�n��^��ܶ��ءA�п�J exit")
            Write-Host("")
            if($goBackOrNot -eq "exit"){
                $Option = -1
                break
            }

            # �Y�W���S��Jexit�h�~��
            $count = Read-Host '(>) ��J�Ʀr���_�l��'
        }

        # �Y�b�W����Jexit�A�h�b�o�̵o�����X���ت��@��
        if($goBackOrNot -eq "exit"){
            $Option = -1
            $goBackOrNot = ""
            cls
            continue
        }

        # ��ܭn�α�����m ####################################################
        $WhereConnect = 1
        $WhereConnect = read-host("(>) �п�ܭn�α�����m (1.��Ƨ��W�٫� 2.�ɮצW�٫e)")

        # �z��X���ɮ׭n�Ӧ��W�h�ƦC�A�H�����ɮת�����
        $ToNatural = { [regex]::Replace($_, '\d+', { $args[0].Value.PadLeft(20,"0") }) }

        # �إߩ����list
        $OldNameList = [System.Collections.ArrayList]@()
        $NewNameList = [System.Collections.ArrayList]@()
        
        # ���N�ŦX�����ɮסA����ɦW�אּ.waitAsecond�A�H�קK���W���D
        Get-ChildItem | Where-Object {$_.Name -match $regex} `
        | where-object {$_.PSIsContainer} | sort $ToNatural | ForEach-Object{
            $NowName = $_.Name
            $OK = $OldNameList.Add($_.Name)
            $waitasec = '.waitAsecond'
            $_ | Rename-Item -NewName $NowName$waitasec
        }
        # �A�N��診�@���ɮקאּ����諸�ˤl
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

        write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")

        # �����\��
        # TempNameList�ΨӺ������ǡA�����n
        # write-host($OldNameList)
        # write-host("")
        # write-host($NewNameList)
        $TempNameList = [System.Collections.ArrayList]@()
        $forgive = ""
        $forgive = read-host("`n(i) ��粒���A�Ы�Enter�A�Y�n�����п�Jy")
        if($forgive -eq "y"){
            $waitasec = "waitAsecond."
            get-item $NewNameList | ForEach-Object{
                $NowName = $_.Name
                # �N�slist�[�WwaitAsecond.(�[�b�e���H�����Ƕñ�)(���[�b�e���]�S�t?)
                $_ | Rename-Item -NewName $waitasec$NowName
                $OK = $TempNameList.Add("$waitasec$NowName")
            }
            # write-host($TempNameList)
            [int]$count = 0
            get-item $TempNameList | ForEach-Object{
                # �N�[�W.waitAsecond���ɮק�^��list
                $_ | Rename-Item -NewName $OldNameList[$count]
                $count++
            }
            write-host("(i) ����粒��")
        }

        write-host("(i) �Y�L�ഫ�A�й��Ƨ���F5�ӭ��s��z")

    }

    # �߰ݬO�_���} --------------------------------------------------------------------------------------------------
    $end = Read-Host "`n(>) �����ا����A�n���������п�Jexit�A�~��п�JEnter"
    if($end -eq 'exit'){
        break
    }else{
        $Option = -1
        cls
    }
}
pause