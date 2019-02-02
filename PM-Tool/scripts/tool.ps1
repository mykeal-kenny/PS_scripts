Add-Type -AssemblyName PresentationFramework
# Add-Type -AssemblyName PresentationCore, PresentationFramework, System.Windows.Forms

[xml]$Form = @"
<Window
xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
Title="Lambda-PM" Width="400" Height="650">
<Grid>
<Label Name="Labeldir" Content="Working Dir" HorizontalAlignment="Left" Margin="92,7,0,0" VerticalAlignment="Top"/>
<TextBox Name="dirText" HorizontalAlignment="Left" Height="23" Margin="10,33,0,0" TextWrapping="Wrap" Text="Working Directory" TextAlignment="Center" VerticalAlignment="Top" Width="240" TextChanged="TextBox Name=""_TextChanged" RenderTransformOrigin="0.496,1.467"/>

<Label Name="repo" Content="GitHub Repo" HorizontalAlignment="Left" Margin="88,56,0,0" VerticalAlignment="Top"/>
<TextBox Name="repoText" HorizontalAlignment="Left" Height="23" Margin="10,85,0,0" TextWrapping="Wrap" Text="URL" TextAlignment="Center" VerticalAlignment="Top" Width="240" TextChanged="TextBox Name=""_TextChanged" RenderTransformOrigin="0.506,2.792"/>

<Label Name="batchLabel" Content="Batch" HorizontalAlignment="Left" Margin="10,110,0,0" VerticalAlignment="Top"/>
<RadioButton Name="batchClone" Content="Clone" HorizontalAlignment="Left" Margin="10,137,0,0" VerticalAlignment="Top"/>
<RadioButton Name="batchInstall" Content="Install" HorizontalAlignment="Left" Margin="10,157,0,0" VerticalAlignment="Top"/>
<RadioButton Name="batchBoth" Content="Both" HorizontalAlignment="Left" Margin="10,177,0,0" VerticalAlignment="Top"/>
<Button Name="batchRun" Content="Run Batch" HorizontalAlignment="Left" Margin="10,197,0,0" VerticalAlignment="Top" Width="240" Height="38"/>

<Button Name="jibble" Content="Jibble" HorizontalAlignment="Left" Margin="261,18,0,0" VerticalAlignment="Top" Width="120"/>
<Button Name="tk" Content="TK" HorizontalAlignment="Left" Margin="261,42,0,0" VerticalAlignment="Top" Width="120"/>
<Button Name="handbook" Content="Handbook" HorizontalAlignment="Left" Margin="261,67,0,0" VerticalAlignment="Top" Width="120"/>
<Button Name="repl" Content="Repil.it" HorizontalAlignment="Left" Margin="261,91,0,0" VerticalAlignment="Top" Width="120"/>
<Button Name="dashboard" Content="Dashboard" HorizontalAlignment="Left" Margin="261,116,0,0" VerticalAlignment="Top" Width="120"/>
<Button Name="attendance" Content="Attendance" HorizontalAlignment="Left" Margin="261,141,0,0" VerticalAlignment="Top" Width="120"/>
<Button Name="pmDaily" Content="Daily Form" HorizontalAlignment="Left" Margin="261,166,0,0" VerticalAlignment="Top" Width="120"/>
<Button Name="pmSprint" Content="Sprint Form" HorizontalAlignment="Left" Margin="261,191,0,0" VerticalAlignment="Top" Width="120"/>
<Button Name="oneOnone" Content="1 on 1" HorizontalAlignment="Left" Margin="261,215,0,0" VerticalAlignment="Top" Width="120"/>

<Button Name="code" Content="VS Code" HorizontalAlignment="Left" Margin="76,169,0,0" VerticalAlignment="Top" Width="75"/>
<Button Name="slack" Content="Slack" HorizontalAlignment="Left" Margin="76,122,0,0" VerticalAlignment="Top" Width="75"/>
<Button Name="zoom" Content="Zoom" HorizontalAlignment="Left" Margin="76,146,0,0" VerticalAlignment="Top" Width="75"/>
<Button Name="stuDaily" Content="Daily" HorizontalAlignment="Left" Margin="156,122,0,0" VerticalAlignment="Top" Width="75"/>
<Button Name="stuWeekly" Content="Weekly" HorizontalAlignment="Left" Margin="156,146,0,0" VerticalAlignment="Top" Width="75"/>
<Button Name="zoomMeeting" Content="Meeting" HorizontalAlignment="Left" Margin="156,169,0,0" VerticalAlignment="Top" Width="75"/>


<Button Name="s1gh" Content="GH" HorizontalAlignment="Left" Margin="11,268,0,0" VerticalAlignment="Top" Width="50"/>
<Button Name="s1clone" Content="Clone" HorizontalAlignment="Left" Margin="63,268,0,0" VerticalAlignment="Top" Width="50"/>
<Button Name="s1pr" Content="PR" HorizontalAlignment="Left" Margin="115,268,0,0" VerticalAlignment="Top" Width="50"/>
<Button Name="s1sandbox" Content="SandBox" HorizontalAlignment="Left" Margin="168,268,0,0" VerticalAlignment="Top" Width="50"/>
<Button Name="s1html" Content="HTML" HorizontalAlignment="Left" Margin="220,268,0,0" VerticalAlignment="Top" Width="50"/>
<Label Name="s1Label" Content="Student" HorizontalAlignment="Left" Margin="10,242,0,0" VerticalAlignment="Top"/>

</Grid>

</Window>

"@

# $reader = (New-Object System.Xml.XmlNodeReader $xaml)

# $Window = [Windows.Markup.XamlReader]::Load( $reader )
$XMLReader = (New-Object System.Xml.XmlNodeReader $Form)
$XMLForm = [Windows.Markup.XamlReader]::Load($XMLReader)
$Labeldir = $XMLForm.FindName('Labeldir')
# $exitButton = $Window.FindName("exitButton")

# $exitButton.Add_Click( {
#     $Window.Background = (Get-Random -InputObject "Black", "Red", "Green", "White", "Blue", "Yellow", "Cyan")
#   })
# function zoom(){Start-Process chrome "https://zoom.us/start/videomeeting"}
# function remove-node(){Get-ChildItem -Recurse -Filter "node_modules" | ForEach-Object ($_) {remove-item $_.fullname -Recurse}}
# function install-node(){Get-ChildItem -Recurse -Filter "package.json" | % ($_) {Start-Process powershell.exe -WorkingDirectory $_.fullname.replace('package.json', '') "-NoExit yarn install"}}
            
# <Button Name="s2gh" Content="GH" HorizontalAlignment="Left" Margin="11,316,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s2clone" Content="Clone" HorizontalAlignment="Left" Margin="63,316,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s2pr" Content="PR" HorizontalAlignment="Left" Margin="115,316,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s2sandbox" Content="SandBox" HorizontalAlignment="Left" Margin="168,316,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s2html" Content="HTML" HorizontalAlignment="Left" Margin="220,316,0,0" VerticalAlignment="Top" Width="50"/>
# <Label Name="s2Label" Content="Student" HorizontalAlignment="Left" Margin="10,290,0,0" VerticalAlignment="Top"/>
            
# <Button Name="s3gh" Content="GH" HorizontalAlignment="Left" Margin="11,367,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s3clone" Content="Clone" HorizontalAlignment="Left" Margin="63,367,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s3pr" Content="PR" HorizontalAlignment="Left" Margin="115,367,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s3sandbox" Content="SandBox" HorizontalAlignment="Left" Margin="168,367,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s3html" Content="HTML" HorizontalAlignment="Left" Margin="220,367,0,0" VerticalAlignment="Top" Width="50"/>
# <Label Name="s3Label" Content="Student" HorizontalAlignment="Left" Margin="10,341,0,0" VerticalAlignment="Top"/>
            
# <Button Name="s4gh" Content="GH" HorizontalAlignment="Left" Margin="11,420,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s4clone" Content="Clone" HorizontalAlignment="Left" Margin="63,420,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s4pr" Content="PR" HorizontalAlignment="Left" Margin="115,420,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s4sandbox" Content="SandBox" HorizontalAlignment="Left" Margin="168,420,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s4html" Content="HTML" HorizontalAlignment="Left" Margin="220,420,0,0" VerticalAlignment="Top" Width="50"/>
# <Label Name="s4Label" Content="Student" HorizontalAlignment="Left" Margin="10,394,0,0" VerticalAlignment="Top"/>
            
# <Button Name="s5gh" Content="GH" HorizontalAlignment="Left" Margin="11,472,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s5clone" Content="Clone" HorizontalAlignment="Left" Margin="63,472,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s5pr" Content="PR" HorizontalAlignment="Left" Margin="115,472,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s5sandbox" Content="SandBox" HorizontalAlignment="Left" Margin="168,472,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s5html" Content="HTML" HorizontalAlignment="Left" Margin="220,472,0,0" VerticalAlignment="Top" Width="50"/>
# <Label Name="s5Label" Content="Student" HorizontalAlignment="Left" Margin="10,446,0,0" VerticalAlignment="Top"/>
            
# <Button Name="s6gh" Content="GH" HorizontalAlignment="Left" Margin="11,523,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s6clone" Content="Clone" HorizontalAlignment="Left" Margin="63,523,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s6pr" Content="PR" HorizontalAlignment="Left" Margin="115,523,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s6sandbox" Content="SandBox" HorizontalAlignment="Left" Margin="168,523,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s6html" Content="HTML" HorizontalAlignment="Left" Margin="220,523,0,0" VerticalAlignment="Top" Width="50"/>
# <Label Name="s6Label" Content="Student" HorizontalAlignment="Left" Margin="10,497,0,0" VerticalAlignment="Top"/>
            
# <Button Name="s7gh" Content="GH" HorizontalAlignment="Left" Margin="11,575,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s7clone" Content="Clone" HorizontalAlignment="Left" Margin="63,575,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s7pr" Content="PR" HorizontalAlignment="Left" Margin="115,575,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s7sandbox" Content="SandBox" HorizontalAlignment="Left" Margin="168,575,0,0" VerticalAlignment="Top" Width="50"/>
# <Button Name="s7html" Content="HTML" HorizontalAlignment="Left" Margin="220,575,0,0" VerticalAlignment="Top" Width="50"/>
# <Label Name="s7Label" Content="Student" HorizontalAlignment="Left" Margin="10,549,0,0" VerticalAlignment="Top"/>
            
# <Button Name="exitButton" Content="EXIT" HorizontalAlignment="Left" Margin="290,472,0,0" VerticalAlignment="Top" Width="91" Height="123"/>
# <Image Name="Logo" HorizontalAlignment="Left" Height="100" Margin="281,320,0,0" VerticalAlignment="Top" Width="100"/>

# $XMLForm.ShowDialog()
$XMLForm.ShowDialog()