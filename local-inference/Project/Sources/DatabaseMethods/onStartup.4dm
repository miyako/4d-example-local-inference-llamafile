var $GGUF : cs:C1710.models.GGUF
$GGUF:=cs:C1710.models.GGUF.new()
$files:=$GGUF.list()

If ($files.length#0)
	
	var $file : 4D:C1709.File
	$file:=$files.first().file
	
	var $llamafile : cs:C1710.llamafile.server
	$llamafile:=cs:C1710.llamafile.server.new()
	
	If (Not:C34($llamafile.isRunning()))
		
		
		$llamafile.start({model: $file; port: 8181})
		
	End if 
	
	test($file.fullName)
	
End if 