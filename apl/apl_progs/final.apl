integer main()
{
	integer childpid, retval;
	childpid = Fork();
	breakpoint;
	if(childpid == -2) then
		retval = Exec("final.xsm");
	else
		
		//retval=Getpid();
		if(childpid==18) then
			breakpoint;
		endif;
		while(childpid != -1) do
			print(childpid);
		endwhile;
	endif;
	return 0;
}
