$HomeworkFolder = 'H:\Homework'
#$Filename = "Something"
$FileValue = 0
$Files = "Zero Files"

#$Files = Get-ChildItem $HomeworkFolder
  Get-ChildItem $HomeworkFolder | ForEach-Object {
  
      $Contents = Get-Content $_.FullName
       # $FileValue = Get-Content $_.$Files
   
         #$FileValue = Get-Content H:\Homework\TestFile1.txt
           If ($Contents -eq 1)
           {
       
             Remove-Item -LiteralPath $_.FullName
             #$_.FullName | Remove-Item
             # Write-Output $Contents
            
           }
           #Elseif ($FileValue -ne 1)
           Else
          {
           Write-Output "Not 1"
          }
}
        
        
$var = Get-ChildItem $HomeworkFolder | Select-Object *,@{
    Name = "Contents";
    Expression = { Get-Content $_.FullName }
} | Where-Object Contents -eq 1 | Remove-Item
