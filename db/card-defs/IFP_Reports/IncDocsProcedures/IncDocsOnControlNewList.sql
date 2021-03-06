BEGIN

  SET @dateEnd = CAST(ROUND(CAST(@dateEnd as float), 0, -1) + 1 as datetime)
  SET @dateStart = CAST(ROUND(CAST(@dateStart as float), 0, -1) + 1 as datetime)

  DECLARE @IncDocs TABLE (InstanceID uniqueidentifier)

	INSERT INTO @IncDocs
	SELECT incDocMainInfo.InstanceID
	FROM   [dvtable_{C06228B9-99F8-4B41-950B-8FACDC00A2B7}] incDocMainInfo WITH (NOLOCK)
	WHERE  (incDocMainInfo.ControlState = 1 OR incDocMainInfo.ControlState = 2)
		   AND (incDocMainInfo.RemovalFromControl is null OR 
		   (incDocMainInfo.RemovalFromControl < @dateEnd AND incDocMainInfo.RemovalFromControl > @dateStart))

	IF @signedBy <> '00000000-0000-0000-0000-000000000000'
	BEGIN
		DELETE incDocs
		FROM   @IncDocs incDocs
			   JOIN [dvtable_{C06228B9-99F8-4B41-950B-8FACDC00A2B7}] incDocMainInfo WITH (NOLOCK) ON incDocMainInfo.InstanceID = incDocs.InstanceID 
		WHERE  incDocMainInfo.SignedBy <> @signedBy
	END

	IF @sender <> '00000000-0000-0000-0000-000000000000'
	BEGIN
		DELETE incDocs
		FROM   @IncDocs incDocs
			   JOIN [dvtable_{C06228B9-99F8-4B41-950B-8FACDC00A2B7}] incDocMainInfo WITH (NOLOCK) ON incDocMainInfo.InstanceID = incDocs.InstanceID 
			   JOIN [dvtable_{1A46BF0F-2D02-4AC9-8866-5ADF245921E8}] counteragentEmployee WITH (NOLOCK) ON counteragentEmployee.RowID = incDocMainInfo.SignedBy
		WHERE  counteragentEmployee.ParentRowID <> @sender

		DELETE incDocs
		FROM   @IncDocs incDocs
			   JOIN [dvtable_{C06228B9-99F8-4B41-950B-8FACDC00A2B7}] incDocMainInfo WITH (NOLOCK) ON incDocMainInfo.InstanceID = incDocs.InstanceID 
			   JOIN [dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}] staffEmployee WITH (NOLOCK) ON staffEmployee.RowID = incDocMainInfo.SignedBy
		WHERE  staffEmployee.ParentRowID <> @sender
	END

	IF @recipient <> '00000000-0000-0000-0000-000000000000'
	BEGIN
		DELETE incDocs
		FROM   @IncDocs incDocs
			   JOIN [dvtable_{FC138430-DE5D-47D2-BBD6-DA17D4DCF4CD}] incDocRecipients WITH (NOLOCK) ON incDocRecipients.InstanceID = incDocs.InstanceID 
		WHERE  incDocRecipients.Recipient <> @recipient
	END

	DECLARE @Tasks TABLE (IncDocID uniqueidentifier, TaskID uniqueidentifier, Person nvarchar(max), Level int)

	INSERT INTO @Tasks
	(IncDocID, TaskID, Level)
	SELECT incDocAssignments.InstanceID as IncDocID,
		   incDocAssignments.ResolutionID as TaskID,
		   0 as Level
	FROM   @incDocs incDocs
		   JOIN [dvtable_{AD95E7FB-592C-4CAA-BBDF-25F32F0B2987}] incDocAssignments WITH (NOLOCK) ON incDocAssignments.InstanceID = incDocs.InstanceID

	INSERT INTO @Tasks
	(IncDocID, TaskID, Level)
	SELECT tasks.IncDocID, assignmentHistory.TaskID, 1
	FROM   
		@tasks tasks
		JOIN (
			SELECT assignmentHistory.InstanceID as InstanceID, MIN(taskDates.CreationDateTime) as TaskDate
			FROM   @tasks tasks
				   JOIN [dvtable_{86AF6157-D65A-4F8D-8F92-3DAAD2910A9B}] assignmentHistory WITH (NOLOCK) ON assignmentHistory.InstanceID = tasks.TaskID
				   JOIN [dvsys_instances_date] taskDates WITH (NOLOCK) ON taskDates.InstanceID = assignmentHistory.TaskID
			WHERE  tasks.Level = 0
			GROUP BY assignmentHistory.InstanceID
		) childTasks ON childTasks.InstanceID = tasks.TaskID
	    JOIN [dvtable_{86AF6157-D65A-4F8D-8F92-3DAAD2910A9B}] assignmentHistory WITH (NOLOCK) ON assignmentHistory.InstanceID = childTasks.InstanceID
		JOIN [dvsys_instances_date] taskDates WITH (NOLOCK) ON taskDates.InstanceID = assignmentHistory.TaskID AND taskDates.CreationDateTime = childTasks.TaskDate

	INSERT INTO @Tasks
	(IncDocID, TaskID, Level)
	SELECT tasks.IncDocID, childrenResolutions.ResolutionID, 2
	FROM   
		@tasks tasks
		JOIN (
			SELECT childrenResolutions.InstanceID as InstanceID, MIN(taskDates.CreationDateTime) as TaskDate
			FROM   
				@tasks tasks
				JOIN [dvtable_{BBAA81AA-999D-461B-9B74-2A60A0965555}] childrenResolutions WITH (NOLOCK) ON childrenResolutions.InstanceID = tasks.TaskID
				JOIN [dvsys_instances_date] taskDates WITH (NOLOCK) ON taskDates.InstanceID = childrenResolutions.ResolutionID
			WHERE  tasks.Level = 1
			GROUP BY childrenResolutions.InstanceID
		) childTasks ON childTasks.InstanceID = tasks.TaskID
		JOIN [dvtable_{BBAA81AA-999D-461B-9B74-2A60A0965555}] childrenResolutions WITH (NOLOCK) ON childrenResolutions.InstanceID = tasks.TaskID
		JOIN [dvsys_instances_date] taskDates WITH (NOLOCK) ON taskDates.InstanceID = childrenResolutions.ResolutionID AND taskDates.CreationDateTime = childTasks.TaskDate

	INSERT INTO @Tasks
	(IncDocID, TaskID, Level)
	SELECT tasks.IncDocID, assignmentHistory.TaskID, 3
	FROM   
		@tasks tasks
		JOIN (
			SELECT assignmentHistory.InstanceID as InstanceID, MIN(taskDates.CreationDateTime) as TaskDate
			FROM   @tasks tasks
				   JOIN [dvtable_{86AF6157-D65A-4F8D-8F92-3DAAD2910A9B}] assignmentHistory WITH (NOLOCK) ON assignmentHistory.InstanceID = tasks.TaskID
				   JOIN [dvsys_instances_date] taskDates WITH (NOLOCK) ON taskDates.InstanceID = assignmentHistory.TaskID
			WHERE  tasks.Level = 2
			GROUP BY assignmentHistory.InstanceID
		) childTasks ON childTasks.InstanceID = tasks.TaskID
	    JOIN [dvtable_{86AF6157-D65A-4F8D-8F92-3DAAD2910A9B}] assignmentHistory WITH (NOLOCK) ON assignmentHistory.InstanceID = childTasks.InstanceID
		JOIN [dvsys_instances_date] taskDates WITH (NOLOCK) ON taskDates.InstanceID = assignmentHistory.TaskID AND taskDates.CreationDateTime = childTasks.TaskDate

	INSERT INTO @Tasks
	(IncDocID, TaskID, Level)
	SELECT tasks.IncDocID, childrenResolutions.ResolutionID, 4
	FROM   
		@tasks tasks
		JOIN (
			SELECT childrenResolutions.InstanceID as InstanceID, MIN(taskDates.CreationDateTime) as TaskDate
			FROM   
				@tasks tasks
				JOIN [dvtable_{BBAA81AA-999D-461B-9B74-2A60A0965555}] childrenResolutions WITH (NOLOCK) ON childrenResolutions.InstanceID = tasks.TaskID
				JOIN [dvsys_instances_date] taskDates WITH (NOLOCK) ON taskDates.InstanceID = childrenResolutions.ResolutionID
			WHERE  tasks.Level = 3
			GROUP BY childrenResolutions.InstanceID
		) childTasks ON childTasks.InstanceID = tasks.TaskID
		JOIN [dvtable_{BBAA81AA-999D-461B-9B74-2A60A0965555}] childrenResolutions WITH (NOLOCK) ON childrenResolutions.InstanceID = tasks.TaskID
		JOIN [dvsys_instances_date] taskDates WITH (NOLOCK) ON taskDates.InstanceID = childrenResolutions.ResolutionID AND taskDates.CreationDateTime = childTasks.TaskDate

	UPDATE @Tasks
	SET    Person = employee.LastName + ' ' + CASE WHEN employee.FirstName IS NULL THEN '' ELSE LEFT(employee.FirstName,1) + '.' END + CASE WHEN employee.MiddleName IS NULL THEN '' ELSE LEFT(employee.MiddleName,1) + '.' END
	FROM   @Tasks tasks
		   JOIN [dvtable_{80314B8B-4825-4205-9FE7-F6B294DA9113}] assignmentMainInfo ON assignmentMainInfo.InstanceID = tasks.TaskID
		   JOIN [dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}] employee ON employee.RowID = assignmentMainInfo.Assignee

  SELECT DISTINCT
		incDocMainInfo.InstanceID as InstanceID,
		incDocMainInfo.RegistrationNumber + ' от '  
				+ convert(varchar, incDocMainInfo.RegistrationDate, 104) + ', ' + ISNULL(ca.Name,'') + ISNULL(staffOrg.Name,'') + ', '
				+ CASE
					WHEN caEmployees.RowID IS NOT NULL THEN
						caEmployees.LastName + ' ' + CASE WHEN caEmployees.FirstName IS NULL THEN '' ELSE LEFT(caEmployees.FirstName,1) + '.' END 
						+ CASE WHEN caEmployees.MiddleName IS NULL THEN '' ELSE LEFT(caEmployees.MiddleName,1) + '.' END
					WHEN staffEmployees.RowID IS NOT NULL THEN
						staffEmployees.LastName + ' ' + CASE WHEN staffEmployees.FirstName IS NULL THEN '' ELSE LEFT(staffEmployees.FirstName,1) + '.' END 
						+ CASE WHEN staffEmployees.MiddleName IS NULL THEN '' ELSE LEFT(staffEmployees.MiddleName,1) + '.' END
					ELSE ''
				  END
			AS DocumentName,
		incDocMainInfo.RegistrationDate as RegDate,
		CAST(incDocMainInfo.Subject as nvarchar(max)) as Subject,		
		Tasks2.Person + case when Tasks4.Person is null then '' else ', ' + Tasks4.Person end as Executer,
		incDocMainInfo.Term as ControlTerm,
    --'' as [ReportOnDoc]
	CAST(incDocMainInfo.Report as nvarchar(max)) as [ReportOnDoc]
	FROM 
		@IncDocs incDocs
		JOIN [dvtable_{C06228B9-99F8-4B41-950B-8FACDC00A2B7}] incDocMainInfo WITH (NOLOCK) ON incDocMainInfo.InstanceID = incDocs.InstanceID
		LEFT JOIN [dvtable_{1A46BF0F-2D02-4AC9-8866-5ADF245921E8}] caEmployees WITH (NOLOCK) ON caEmployees.RowID = incDocMainInfo.SignedBy
		LEFT JOIN [dvtable_{C78ABDED-DB1C-4217-AE0D-51A400546923}] ca WITH (NOLOCK) ON ca.RowID = caEmployees.ParentRowID
		LEFT JOIN [dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}] staffEmployees WITH (NOLOCK) ON staffEmployees.RowID = incDocMainInfo.SignedBy
		LEFT JOIN [dvtable_{7473F07F-11ED-4762-9F1E-7FF10808DDD1}] staffOrg WITH (NOLOCK) ON staffOrg.RowID = staffEmployees.ParentRowID
		LEFT JOIN @Tasks Tasks2 ON Tasks2.IncDocID = incDocs.InstanceID and Tasks2.Level = 2
		LEFT JOIN @Tasks Tasks4 ON Tasks4.IncDocID = incDocs.InstanceID and Tasks4.Level = 4
	FOR BROWSE
END