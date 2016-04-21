integer main(){
	integer ch,pid,retval;
	ch=1;
	string pname,ans;
	while(ch!=0) do 
		print("Program name");
		read(pname);
		pid=Fork();
		if(pid==-2) then
			retval=Exec(pname);
			if(retval==-1) then
				print("Exec Fail");
			endif;
			Exit();
		else
			if(pid!=-1) then
				retval=Wait(pid);
			endif;
		endif;
		print("Continue 1/0?");
		read(ch);
	endwhile;
	return 0;
}
