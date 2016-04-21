integer main()
{
	integer childpid, retval;
	childpid = Fork();
	breakpoint;
	if(childpid == -2) then
		retval = Fork();
	else
		
		//retval=Getpid();
		while(childpid != -1) do
			print(childpid);
		endwhile;
	endif;
	return 0;
}
