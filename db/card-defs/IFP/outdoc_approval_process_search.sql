BEGIN
	SELECT DISTINCT bp_var.InstanceID as BPID,
  		   bp_main.[Name] as BPName,
     0 As IsStarter
	FROM   [dbo].[dvtable_{0EF6BCCA-7A09-4027-A3A2-D2EEECA1BF4D}] bp_main WITH (nolock)
	INNER JOIN [dbo].[dvtable_{79F5B1F6-6BD0-499B-9093-232989BDCC6E}] bp_var WITH (nolock)
		on bp_main.InstanceID = bp_var.InstanceID
	WHERE  bp_var.[Name] = 'Задание'
		     AND CHARINDEX('HistoryItem', CAST([Value] as nvarchar(max))) > 0
		     AND CHARINDEX(LOWER(@historyItemID), LOWER(CAST([Value] as nvarchar(max)))) > 0 
		     AND bp_main.State in (0, 1, 2, 5)
END

/*
test

exec [dbo].[dvreport_get_data_{8AD6D7C2-AC49-4878-9E4C-180DC65E9105}] 'D093BEE5-6400-4773-A656-533994D7B925'

*/