AccountsSchedulable ac = new AccountsSchedulable();
string cronExp = '0 0 13 * * ?';
string jobId = system.schedule('accUpdateJob', cronExp, ac);